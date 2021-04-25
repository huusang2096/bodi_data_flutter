import 'package:bodidatacms/common/base_cubit.dart';
import 'package:bodidatacms/common/hard_code.dart';
import 'package:bodidatacms/model/audit/audit_session_detail_response.dart';
import 'package:bodidatacms/model/audit/audit_session_record_dropdown.dart';
import 'package:bodidatacms/model/audit/audit_session_record_request.dart';
import 'package:bodidatacms/model/audit/audit_session_style.dart';
import 'package:bodidatacms/model/audit/sub_categories.dart';
import 'package:bodidatacms/model/inventory/sttyle_model.dart';
import 'package:bodidatacms/model/inventory/style_details_response.dart';
import 'package:bodidatacms/routes.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

import '../../../../widgets/snackbar_custom.dart';

part 'audit_record_cubit.freezed.dart';
part 'audit_record_state.dart';

class AuditRecordCubit extends BaseCubit<AuditRecordState> {
  AuditRecordCubit() : super(Initial(DataAuditRecord()));

  @override
  initData() async {
    getIds().then((value) {
      if (value == true) {
        fetchDataInitial();
      }
    });
  }

  Future<void> fetchDataInitial() async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));

      final AuditSessionDetailResponse auditSessionDetailResponse =
          await dataRepository.getAuditSessionDetail(state.data.idSession);
      final checkIdStyle = auditSessionDetailResponse.data!.styles!
          .any((e) => e.id == state.data.idStyle);
      final checkIdProfile = auditSessionDetailResponse.data!.profiles!
          .any((e) => e.id == state.data.idProfile);

      if (checkIdStyle == false || checkIdProfile == false) {
        showSnackBarCustom(
            textMassage: 'could_not_find_this_profile_or_style'.tr,
            typeSnackbar: TypeSnackbar.error);
        return;
      }
      final StyleDetailResponse styleDetailResponse =
          await dataRepository.getStyleDetails(state.data.idStyle);
      if (auditSessionDetailResponse.data != null &&
          styleDetailResponse.data != null) {
        final List<String> listTitleTable = [];
        //add response element to request - begin
        final List<AuditRecordRequest> auditRecords = [];

        auditSessionDetailResponse.data!.auditRecords!.forEach((element) {
          final List<MeasurementSizeRequest> listMeasurementSize = [];

          element.measurementSizes!.forEach((elemenMeasurementSizet) {
            if (element.profile!.id == state.data.idProfile &&
                element.style!.id == state.data.idStyle) {
              listTitleTable.add(elemenMeasurementSizet.size!.join(formatSize));
            }
            //get id select overall
            final idSelectOverallfitDropdown = AuditRecordDataDefault()
                .listOverallFit
                .firstWhere((elementOverallFit) =>
                    elementOverallFit.name == elemenMeasurementSizet.overallFit)
                .id;
            //get id select detailed
            final idSelectDetailedDropdown = AuditRecordDataDefault()
                .listDropdownOverAndDetail
                .firstWhere((element) =>
                    element.overallFit.id == idSelectOverallfitDropdown)
                .listDetailed
                .firstWhere(
                    (element) =>
                        element.name == (elemenMeasurementSizet.detailed ?? ''),
                    orElse: () => Detailed(id: -1, name: ''))
                .id;
            listMeasurementSize.add(
              MeasurementSizeRequest(
                size: elemenMeasurementSizet.size,
                subCategoryId: elemenMeasurementSizet.subCategory!.id,
                detailed: elemenMeasurementSizet.detailed,
                overallFit: elemenMeasurementSizet.overallFit,
                idSelectOverallfitDropdown: idSelectOverallfitDropdown,
                idSelectDetailedDropdown: idSelectDetailedDropdown,
              ),
            );
          });

          final AuditRecordRequest auditRecordRequest = AuditRecordRequest(
            bestSize: element.bestSize,
            profileId: element.profile!.id,
            styleId: element.style!.id,
            subCategories: element.subCategories!.map((e) => e.id).toList(),
            measurementSizes: listMeasurementSize,
          );

          auditRecords.add(auditRecordRequest);
        });

        final AuditSessionRecordRequest auditSessionRecordRequest =
            AuditSessionRecordRequest(
          profiles: auditSessionDetailResponse.data!.profiles!
              .map((e) => e.id)
              .toList(),
          styles: auditSessionDetailResponse.data!.styles!
              .map((e) => e.id)
              .toList(),
          nameProfile: auditSessionDetailResponse.data!.profiles!
              .firstWhere((element) => element.id == state.data.idProfile)
              .name,
          name: auditSessionDetailResponse.data!.name ?? '',
          auditRecords: auditRecords,
        );
        //add response element to request - end

        final AuditRecordRequest? detailRequest = auditRecords.firstWhereOrNull(
            (element) =>
                element.styleId == state.data.idStyle &&
                element.profileId == state.data.idProfile);
        final List<DropdownSubCategorieModel> listDropDownSub = [];
        if (detailRequest != null) {
          final List<SubCategorie> listSub = [];
          listSub.addAll(AuditRecordDataDefault().listSubCategories);
          detailRequest.subCategories!.forEachIndexed((index, element) {
            listDropDownSub.add(DropdownSubCategorieModel(
                isDisable: index < detailRequest.subCategories!.length - 1
                    ? true
                    : false,
                isSelected: element!,
                listSub: []..addAll(listSub)));
            listSub.removeWhere((e) => e.id == element);
          });
        } else {
          auditRecords.add(AuditRecordRequest(
              bestSize: [],
              measurementSizes: [],
              profileId: state.data.idProfile,
              styleId: state.data.idStyle,
              subCategories: []));
        }

        emit(Loaded(state.data.copyWith(
            styleResponse: styleDetailResponse.data,
            showComment: true,
            selectedTitleTable: detailRequest != null
                ? detailRequest.bestSize!.join(formatSize)
                : '',
            auditSessionRecordRequest: auditSessionRecordRequest,
            listTitleTable: listTitleTable.toSet().toList(),
            listDropDownSub: listDropDownSub,
            isLoading: false)));
      } else {
        emit(Loading(state.data.copyWith(isLoading: false)));
        handleAppError(auditSessionDetailResponse.message);
      }
    } catch (e) {
      Get.offAndToNamed(AppRoute.auditDetails);
      showSnackBarCustom(
          textMassage:
              'we_cannot_find_this_session_please_create_a_session_before_updating'
                  .trArgs(['\n']),
          typeSnackbar: TypeSnackbar.warning);
      logger.e(e);
    }
  }

  Future<bool> getIds() async {
    final arg = Get.arguments;
    if (arg != null) {
      emit(Loading(state.data.copyWith(isLoading: true)));
      try {
        final nameProfile = arg['nameProfile'];
        final nameSession = arg['nameSession'];
        final idSession = arg['idSession'];
        final StyleAudit style = arg['style'];
        final idProfile = arg['idProfile'];
        final StyleDetailResponse styleDetailResponse =
            await dataRepository.getStyleDetails(style.id!);

        final List<String> listTitleTable = [];
        //add response element to request - begin
        final List<AuditRecordRequest> auditRecords = [];

        final List<MeasurementSizeRequest> listMeasurementSize = [];

        final AuditRecordRequest auditRecordRequest = AuditRecordRequest(
          bestSize: [],
          profileId: idProfile,
          styleId: style.id,
          subCategories: [],
          measurementSizes: listMeasurementSize,
        );
        auditRecords.add(auditRecordRequest);

        final AuditSessionRecordRequest auditSessionRecordRequest =
            AuditSessionRecordRequest(
          profiles: [idProfile],
          styles: [style.id],
          nameProfile: nameProfile,
          name: nameSession,
          auditRecords: auditRecords,
        );
        //add response element to request - end

        final List<DropdownSubCategorieModel> listDropDownSub = [];

        emit(Loaded(state.data.copyWith(
            showComment: false,
            styleResponse: styleDetailResponse.data,
            selectedTitleTable: '',
            auditSessionRecordRequest: auditSessionRecordRequest,
            listTitleTable: listTitleTable.toSet().toList(),
            listDropDownSub: listDropDownSub,
            isLoading: false,
            idSession: idSession,
            idStyle: style.id!,
            idProfile: idProfile)));
      } catch (e) {
        handleAppError(e);
        logger.e(e);
      }

      return false;
    }
    final Map<String, String?>? parameters = Get.parameters;
    //check domain
    if (parameters == null || parameters.keys.length < 3) {
      Get.offAndToNamed(AppRoute.auditDetails);
      return false;
    }
    final List<bool> checkParameters = [];
    parameters.forEach((key, value) {
      if (int.tryParse(value ?? '') == null) {
        checkParameters.add(false);
      }
    });
    if (checkParameters.isNotEmpty) {
      WidgetsBinding.instance!.addPostFrameCallback((duration) {
        showSnackBarCustom(
            textMassage: 'this_link_was_not_found'.tr,
            typeSnackbar: TypeSnackbar.error);
      });

      return false;
    }

    emit(
      Loaded(
        state.data.copyWith(
          idSession: parameters[KeyId.sessionKey] == null
              ? -1
              : int.tryParse(parameters[KeyId.sessionKey]!) ?? -1,
          idStyle: parameters[KeyId.styleKey] == null
              ? -1
              : int.tryParse(parameters[KeyId.styleKey]!) ?? -1,
          idProfile: parameters[KeyId.profileKey] == null
              ? -1
              : int.tryParse(parameters[KeyId.profileKey]!) ?? -1,
        ),
      ),
    );
    return true;
  }

  void addSubCategory() {
    if (state.data.auditSessionRecordRequest == null ||
        state.data.styleResponse == null) return;
    if (state.data.listDropDownSub.length > 3) return;
    final int idProfile = state.data.idProfile;
    final int idStyle = state.data.idStyle;
    emit(Loading(state.data.copyWith()));
    final List<DropdownSubCategorieModel> listDropDownSub = [];
    listDropDownSub.addAll(state.data.listDropDownSub);

    final List<SubCategorie> listSub = [];
    final indexAuditDetailProfile = state
        .data.auditSessionRecordRequest!.auditRecords!
        .indexWhere((element) =>
            element.profileId == idProfile && element.styleId == idStyle);

    final AuditSessionRecordRequest auditSessionRecordRequest =
        state.data.auditSessionRecordRequest!;

    listSub.addAll(AuditRecordDataDefault().listSubCategories);
    listDropDownSub.forEachIndexed((index, element) {
      element.isDisable = true;
      listSub.removeWhere((elementSub) => element.isSelected == elementSub.id);
    });
    listDropDownSub.add(DropdownSubCategorieModel(
        isSelected: listSub[0].id, listSub: listSub, isDisable: false));

    //add id subcategories
    auditSessionRecordRequest
        .auditRecords![indexAuditDetailProfile].subCategories!
        .add(listSub[0].id);

    //check when add categories with measurementSizes has data
    final bool check = auditSessionRecordRequest
        .auditRecords![indexAuditDetailProfile].measurementSizes!
        .any((element) => element.subCategoryId == null);
    if (check) {
      auditSessionRecordRequest
          .auditRecords![indexAuditDetailProfile].measurementSizes!
          .forEach((element) {
        if (element.subCategoryId == null) {
          element.subCategoryId = listSub[0].id;
        }
      });
    } else {
      final List<MeasurementSizeRequest> listTempMeasureMentSize = [];
      //duplicate list measurement size
      state.data.listTitleTable.forEach((element) {
        listTempMeasureMentSize.add(MeasurementSizeRequest(
            size: element.split(formatSize), subCategoryId: listSub[0].id));
      });

      //merge list measuerment size
      auditSessionRecordRequest
          .auditRecords![indexAuditDetailProfile].measurementSizes!
          .addAll(listTempMeasureMentSize);
    }

    emit(Loaded(state.data.copyWith(
        listDropDownSub: listDropDownSub,
        auditSessionRecordRequest: auditSessionRecordRequest)));
  }

  void changeSelectListSub(int index, int isSelected) {
    final int idProfile = state.data.idProfile;
    final int idStyle = state.data.idStyle;
    emit(Loading(state.data.copyWith()));
    final List<DropdownSubCategorieModel> listDropDownSub = [];
    listDropDownSub.addAll(state.data.listDropDownSub);
    final indexAuditDetailProfile = state
        .data.auditSessionRecordRequest!.auditRecords!
        .indexWhere((element) =>
            element.profileId == idProfile && element.styleId == idStyle);
    final AuditSessionRecordRequest auditSessionRecordRequest =
        state.data.auditSessionRecordRequest!;

    //change all item category id select
    auditSessionRecordRequest
        .auditRecords![indexAuditDetailProfile].measurementSizes!
        .forEach((element) {
      if (element.subCategoryId == listDropDownSub[index].isSelected) {
        element.subCategoryId = isSelected;
      }
    });

    //change id select in dropdown
    listDropDownSub[index].isSelected = isSelected;

    auditSessionRecordRequest.auditRecords![indexAuditDetailProfile]
        .subCategories![index] = isSelected;

    emit(Loaded(state.data.copyWith(
        listDropDownSub: listDropDownSub,
        auditSessionRecordRequest: auditSessionRecordRequest)));
  }

  void newSize(List<String> size) {
    final int idProfile = state.data.idProfile;
    final int idStyle = state.data.idStyle;
    //duplicate size
    final checkDupliateSize = state.data.listTitleTable
        .any((element) => element == size.join(formatSize));
    if (checkDupliateSize) {
      showSnackBarCustom(
          textMassage: 'already_this_size_exists'.tr,
          typeSnackbar: TypeSnackbar.warning);
      return;
    }
    emit(Loading(state.data.copyWith()));
    //add title table in UI
    List<String> listTitle = [];
    listTitle
      ..addAll(state.data.listTitleTable)
      ..add(size.join(formatSize));

    final indexAuditDetailProfile = state
        .data.auditSessionRecordRequest!.auditRecords!
        .indexWhere((element) =>
            element.profileId == idProfile && element.styleId == idStyle);
    final AuditSessionRecordRequest auditSessionRecordRequest =
        state.data.auditSessionRecordRequest!;

    final List<MeasurementSizeRequest> measurementSizes = []..addAll(
        auditSessionRecordRequest
            .auditRecords![indexAuditDetailProfile].measurementSizes!);

    //add MeasurementSize follow subCategories
    if (auditSessionRecordRequest
        .auditRecords![indexAuditDetailProfile].subCategories!.isEmpty) {
      measurementSizes.add(MeasurementSizeRequest(
        size: size,
      ));
    } else {
      auditSessionRecordRequest
          .auditRecords![indexAuditDetailProfile].subCategories!
          .forEach((element) {
        measurementSizes
            .add(MeasurementSizeRequest(size: size, subCategoryId: element));
      });
    }

    auditSessionRecordRequest.auditRecords![indexAuditDetailProfile]
        .measurementSizes = measurementSizes;

    emit(Loaded(state.data.copyWith(
        listTitleTable: listTitle,
        selectedTitleTable: state.data.selectedTitleTable.isEmpty
            ? listTitle[0]
            : state.data.selectedTitleTable,
        auditSessionRecordRequest: auditSessionRecordRequest)));
  }

  void changeValueInDropdownOverall(
      MeasurementSizeRequest item, int idOverall) {
    final int idProfile = state.data.idProfile;
    final int idStyle = state.data.idStyle;
    emit(Loading(state.data.copyWith()));
    final indexAuditDetailProfile = state
        .data.auditSessionRecordRequest!.auditRecords!
        .indexWhere((element) =>
            element.profileId == idProfile && element.styleId == idStyle);
    final AuditSessionRecordRequest auditSessionRecordRequest =
        state.data.auditSessionRecordRequest!;

    final itemIndex = auditSessionRecordRequest
        .auditRecords![indexAuditDetailProfile].measurementSizes!
        .indexWhere(
      (element) =>
          item.size!.join(formatSize) == element.size!.join(formatSize) &&
          item.subCategoryId == element.subCategoryId,
    );
    if (itemIndex != -1) {
      //change selected overallfit
      auditSessionRecordRequest.auditRecords![indexAuditDetailProfile]
          .measurementSizes![itemIndex].idSelectOverallfitDropdown = idOverall;

      //get selected initial in data dropdown detailed
      final Detailed? selectedInitial = AuditRecordDataDefault()
          .listDropdownOverAndDetail
          .firstWhere((element) => element.overallFit.id == idOverall)
          .listDetailed
          .firstOrNull;
      //change selected detailed
      auditSessionRecordRequest.auditRecords![indexAuditDetailProfile]
              .measurementSizes![itemIndex].idSelectDetailedDropdown =
          selectedInitial != null ? selectedInitial.id : -1;
      emit(Loaded(state.data
          .copyWith(auditSessionRecordRequest: auditSessionRecordRequest)));
    }
  }

  void changeValueInDropdownDetailed(
      MeasurementSizeRequest item, int idDetailed) {
    final int idProfile = state.data.idProfile;
    final int idStyle = state.data.idStyle;
    emit(Loading(state.data.copyWith()));
    final indexAuditDetailProfile = state
        .data.auditSessionRecordRequest!.auditRecords!
        .indexWhere((element) =>
            element.profileId == idProfile && element.styleId == idStyle);
    final AuditSessionRecordRequest auditSessionRecordRequest =
        state.data.auditSessionRecordRequest!;

    final itemIndex = auditSessionRecordRequest
        .auditRecords![indexAuditDetailProfile].measurementSizes!
        .indexWhere(
      (element) =>
          item.size!.join(formatSize) == element.size!.join(formatSize) &&
          item.subCategoryId == element.subCategoryId,
    );
    if (itemIndex != -1) {
      //change selected overallfit
      auditSessionRecordRequest.auditRecords![indexAuditDetailProfile]
          .measurementSizes![itemIndex].idSelectDetailedDropdown = idDetailed;

      emit(Loaded(state.data
          .copyWith(auditSessionRecordRequest: auditSessionRecordRequest)));
    }
  }

  void changeSelectBestSize(String selected) {
    emit(Loaded(state.data.copyWith(selectedTitleTable: selected)));
  }

  void updateAuditRecord() async {
    try {
      if (state.data.auditSessionRecordRequest == null ||
          state.data.styleResponse == null) {
        return;
      }
      final int idProfile = state.data.idProfile;
      final int idStyle = state.data.idStyle;
      emit(Loading(state.data.copyWith(isLoading: true)));
      final indexAuditDetailProfile = state
          .data.auditSessionRecordRequest!.auditRecords!
          .indexWhere((element) =>
              element.profileId == idProfile && element.styleId == idStyle);
      final AuditSessionRecordRequest auditSessionRecordRequest =
          state.data.auditSessionRecordRequest!;
      if (auditSessionRecordRequest.auditRecords![indexAuditDetailProfile]
                  .measurementSizes!.length ==
              0 ||
          auditSessionRecordRequest.auditRecords![indexAuditDetailProfile]
                  .subCategories!.length ==
              0) {
        showSnackBarCustom(
            textMassage: 'you_havent_added_a_size_or_measurement'.tr,
            typeSnackbar: TypeSnackbar.warning);
        emit(Loading(state.data.copyWith(isLoading: false)));
        return;
      }
      auditSessionRecordRequest
          .auditRecords![indexAuditDetailProfile].measurementSizes!
          .forEach((element) {
        element.overallFit = AuditRecordDataDefault()
            .listOverallFit
            .firstWhere((e) => e.id == element.idSelectOverallfitDropdown)
            .name;
        element.detailed = AuditRecordDataDefault()
            .listDropdownOverAndDetail
            .firstWhere(
                (e) => e.overallFit.id == element.idSelectOverallfitDropdown)
            .listDetailed
            .firstWhere(
                (eDetailed) => eDetailed.id == element.idSelectDetailedDropdown,
                orElse: () => Detailed(id: -1, name: ''))
            .name;
      });
      auditSessionRecordRequest.auditRecords![indexAuditDetailProfile]
          .bestSize = state.data.selectedTitleTable.split(formatSize);

      if (state.data.idSession == -1 && state.data.idStyle != -1) {
        Get.back(
            result: {'data': auditSessionRecordRequest.auditRecords!.first});
        return;
      }
      await dataRepository.updateAuditRecordPut(
          state.data.idSession, auditSessionRecordRequest);
      showSnackBarCustom(
          textMassage: 'update_audit_record_success'.tr,
          typeSnackbar: TypeSnackbar.done);
      emit(Loading(state.data.copyWith(isLoading: false)));
    } catch (e) {
      emit(Loading(state.data.copyWith(isLoading: false)));
      handleAppError(e);
      logger.e(e);
    }
  }
}
