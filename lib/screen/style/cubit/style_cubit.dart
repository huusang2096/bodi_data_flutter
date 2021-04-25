import 'dart:async';
import 'dart:html' as html;

import 'package:bodidatacms/common/base_cubit.dart';
import 'package:bodidatacms/common/config.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/base_response.dart';
import 'package:bodidatacms/model/inventory/attachment_response.dart';
import 'package:bodidatacms/model/inventory/attachments_response.dart';
import 'package:bodidatacms/model/inventory/categories_modal.dart';
import 'package:bodidatacms/model/inventory/category.dart';
import 'package:bodidatacms/model/inventory/size_option.dart';
import 'package:bodidatacms/model/inventory/sttyle_model.dart';
import 'package:bodidatacms/model/inventory/style_details_response.dart';
import 'package:bodidatacms/model/inventory/style_request.dart';
import 'package:bodidatacms/model/profile/clothing_preferency.dart';
import 'package:bodidatacms/model/profile/gender_response.dart';
import 'package:bodidatacms/widgets/snackbar_custom.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart' as getx;
import 'package:http_parser/http_parser.dart';

import '../../../routes.dart';

part 'style_cubit.freezed.dart';
part 'style_state.dart';

class StyleCubit extends BaseCubit<StyleState> {
  StyleCubit(int styleId)
      : super(Initial(DataStyle(
            styleId: styleId,
            styleRequest: new StyleRequest(),
            listSizeOption: new SizeOption().getListSizeOptions(),
            garmentDetails: new GarmentDetails(
                contents: new Content().getListContents(),
                fixFunctionAndAppearance:
                    new FixFunctionAndAppearance(content: ''),
                patterning: new Patterning(content: ''),
                fabricWeight: new FabricWeight(name: "", gsm: 0)))));

  @override
  void initData() {
    if (state.data.styleId != -1) {
      getStyleDetails(state.data.styleId);
      getAttachment(state.data.styleId);
    } else {
      getListCategory();
      getListGender();
    }
    super.initData();
  }

  void htmlOpenLink(String link) {
    String url = link;
    html.window.open(url, '_blank');
  }

  void pickFile(int idStyle) async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.any,
    );

    if (result != null) {
      PlatformFile file = result.files.first;
      final fileSize = (file.size! / 1024 / 1024);
      if (fileSize > 2.8) {
        showSnackBarCustom(
            textMassage: 'file_no_larger_than_mb'.tr,
            typeSnackbar: TypeSnackbar.warning);
        return;
      }
      List<int> _selectedFile = file.bytes!;
      await sendFile(_selectedFile, idStyle, file.name ?? '');
    }
  }

  Future<void> sendFile(file, int styleId, String fileName) async {
    try {
      emit(Loading(state.data.copyWith(isLoadingUploadFile: true)));
      final Dio dio = new Dio();

      String url = BASE_URL + 'api/styles/$styleId/attachment';
      final FormData data = FormData.fromMap({
        'file': MultipartFile.fromBytes(
          file,
          contentType: MediaType('application', 'octet-stream'),
          filename: fileName,
        ),
      });

      dio.options.headers["Authorization"] = "Bearer " + appPref.token;
      dio.options.headers["Accept"] = "application/json";

      final responseDio = await dio.post(url, data: data);
      if (responseDio.statusCode == 200) {
        final data = AttachmentResponse.fromJson(responseDio.data);
        if (data.success) {
          emit(Loading(state.data.copyWith(isLoadingUploadFile: false)));
          showSnackBarCustom(
              textMassage: 'upload_file_success'.tr,
              typeSnackbar: TypeSnackbar.done);

          getAttachment(styleId);
        }
        print(data.toRawJson());
      }
    } catch (e) {
      emit(Loading(state.data.copyWith(isLoadingUploadFile: false)));
      handleAppError(e);
      logger.e(e);
    }
  }

  void getAttachment(int idStyle) async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));
      final attachments = await dataRepository.getAttachment(idStyle);
      if (attachments.data != null) {
        attachments.data!.sort((a, b) =>
            (DateTime.tryParse(b.createdAt!) ?? DateTime.now())
                .millisecondsSinceEpoch
                .compareTo((DateTime.tryParse(a.createdAt!) ?? DateTime.now())
                    .millisecondsSinceEpoch));
      }
      emit(Loaded(state.data.copyWith(
          listInformationFiles: attachments.data ?? [], isLoading: false)));
    } catch (e) {
      handleAppError(e);
      logger.e(e);
    }
  }

  void getStyleDetails(int styleId) async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));
      final StyleDetailResponse styleDetailResponse =
          await dataRepository.getStyleDetails(styleId);
      if (styleDetailResponse.success) {
        Style styleData = styleDetailResponse.data!;

        StyleRequest styleRequest =
            StyleRequest().copyWith(styleDetails: styleData);

        List<SizeOption> listSizeOptions = [];
        listSizeOptions.addAll(styleData.sizeOptions!);

        GarmentDetails garmentDetails = styleData.garmentDetails!;

        emit(
          GetStyleDetails(
            state.data.copyWith(
              garmentDetails: garmentDetails,
              listSizeOption: listSizeOptions,
              styleDetailResponse: styleDetailResponse,
              styleRequest: styleRequest,
            ),
          ),
        );
        getListCategory();
        getListGender();
      } else {
        getx.Get.offAndToNamed(AppRoute.styleScreen);
      }
    } catch (e) {
      emit(Loading(state.data.copyWith(isLoading: false)));
      getx.Get.offAndToNamed(AppRoute.styleScreen);
    }
  }

  void inputStyle() async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));
      StyleRequest styleRequest = state.data.styleRequest;
      styleRequest.garmentDetails = state.data.garmentDetails;
      styleRequest.sizeOptions = state.data.listSizeOption;
      styleRequest.numberAuditRecords = 0;

      //validation
      final String? fieldNameError = validation(styleRequest);

      if (fieldNameError != null) {
        String content = 'filed_cannot_be_empty'.trArgs([fieldNameError]);
        showSnackBarCustom(
          textMassage: content,
          typeSnackbar: TypeSnackbar.warning,
        );

        emit(Loading(state.data.copyWith(isLoading: false)));
        return;
      }

      if (state.data.styleId == -1) {
        BaseResponse newStyeResponse =
            await dataRepository.addNewStyle(styleRequest);
        emit(Loading(state.data.copyWith(isLoading: false)));
        if (newStyeResponse.success) {
          showSnackBarCustom(
              textMassage: 'create_style'.trArgs(['']),
              typeSnackbar: TypeSnackbar.done,
              titleMessage: 'created'.tr);
        } else {
          handleAppError(newStyeResponse.message);
        }
      } else {
        BaseResponse newStyeResponse =
            await dataRepository.updateStyle(state.data.styleId, styleRequest);
        emit(Loading(state.data.copyWith(isLoading: false)));
        if (newStyeResponse.success) {
          showSnackBarCustom(
              textMassage: 'update_style'.trArgs(['']),
              typeSnackbar: TypeSnackbar.done,
              titleMessage: 'updated'.tr);
        } else {
          handleAppError(newStyeResponse.message);
        }
      }
    } catch (e) {
      handleAppError(e);
    }
  }

  String? validation(StyleRequest profileRequest) {
    final profileMap = profileRequest.toJson();
    final String? fieldNameError =
        profileMap.keys.firstWhereOrNull((key) => profileMap[key] == null);
    if (fieldNameError != null) {
      return fieldNameError.replaceAll('_', ' ').capitalizeFirst;
    } else {
      return null;
    }
  }

  void getListGender() async {
    try {
      final GenderResponse genderResponse =
          await dataRepository.getListGender();
      if (genderResponse.success && genderResponse.data != null) {
        ClothingPreferency genderModel;
        StyleRequest styleRequest = state.data.styleRequest;

        if (styleRequest.genderId != null) {
          genderModel = genderResponse.data!
              .firstWhere((element) => element.id == styleRequest.genderId);
        } else {
          genderModel = genderResponse.data!.elementAt(0);
        }
        styleRequest.genderId = genderModel.id;

        emit(
          GetGenders(
            state.data.copyWith(
              clothingPreferencySelect: genderModel,
              styleRequest: styleRequest,
              listGenders: genderResponse.data ?? [],
            ),
          ),
        );
      }
    } catch (e) {
      handleAppError(e);
    }
  }

  void addOptions(String name, int position) {
    List<SizeOption> listSizeOption = state.data.listSizeOption;
    SizeOption sizeOption = listSizeOption[position];
    // Update sizeOption name
    sizeOption.contents!.add(name);
    // Update Measurement
    sizeOption.measurements!.forEach((measurement) {
      measurement.contents.add("0");
    });
    listSizeOption[position] = sizeOption;
    emit(
      Loaded(
        state.data.copyWith(
            listSizeOption: listSizeOption,
            timeChange: new DateTime.now().toString()),
      ),
    );
  }

  void getListCategory() async {
    try {
      final CategoriesModal categoriesModal =
          await dataRepository.getCategories();
      if (categoriesModal.success! && categoriesModal.data != null) {
        Category category;
        StyleRequest styleRequest = state.data.styleRequest;

        if (styleRequest.categoryId != null) {
          category = categoriesModal.data!
              .firstWhere((element) => element.id == styleRequest.categoryId);
        } else {
          category = categoriesModal.data!.elementAt(0);
        }
        styleRequest.categoryId = category.id;
        emit(
          GetCategory(
            state.data.copyWith(
                categorySelect: category,
                styleRequest: styleRequest,
                listCategories: categoriesModal.data ?? []),
          ),
        );
      }
    } catch (e) {
      handleAppError(e);
    }
  }

  openSizeChart() async {
    bool isHaveMeasurement = false;
    List<SizeOption> sizeOptions = state.data.listSizeOption;
    sizeOptions.forEach((sizeOption) {
      if (sizeOption.contents!.length > 0) {
        isHaveMeasurement = true;
      }
    });

    if (isHaveMeasurement) {
      var data = await getx.Get.toNamed(AppRoute.sizeChartScreen,
          arguments: sizeOptions);
      if (data != null && data) {
        sizeOptions = data;
        emit(
          Loaded(
            state.data.copyWith(
                listSizeOption: sizeOptions,
                timeChange: new DateTime.now().toString()),
          ),
        );
      }
    } else {
      getx.Get.snackbar("error".tr, 'add_content'.tr,
          backgroundColor: boder,
          borderRadius: 4,
          snackPosition: getx.SnackPosition.TOP);
    }
  }
}
