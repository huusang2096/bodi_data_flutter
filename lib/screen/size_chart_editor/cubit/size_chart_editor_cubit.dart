import 'package:bodidatacms/common/base_cubit.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/base_response.dart';
import 'package:bodidatacms/model/inventory/measurement.dart';
import 'package:bodidatacms/model/inventory/size_option.dart';
import 'package:bodidatacms/model/inventory/sttyle_model.dart';
import 'package:bodidatacms/model/inventory/style_details_response.dart';
import 'package:bodidatacms/model/size_chart_editor/request_size.dart';
import 'package:bodidatacms/routes.dart';
import 'package:bodidatacms/widgets/snackbar_custom.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'size_chart_editor_state.dart';
part 'size_chart_editor_cubit.freezed.dart';

class SizeChartEditorCubit extends BaseCubit<SizeChartEditorState> {
  SizeChartEditorCubit(int styleID, List<SizeOption> listSizeOption)
      : super(Initial(DataSizeChartEditor(
            styleId: styleID, listSizeOption: listSizeOption)));

  @override
  void initData() {
    getStyleDetails(state.data.styleId);
    super.initData();
  }

  void getStyleDetails(int styleId) async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));
      final StyleDetailResponse styleDetailResponse =
          await dataRepository.getStyleDetails(styleId);
      emit(Loading(state.data.copyWith(isLoading: false)));
      if (styleDetailResponse.success) {
        Style styleData = styleDetailResponse.data!;

        List<SizeOption> listSizeOptions = [];
        listSizeOptions.addAll(styleData.sizeOptions!);
        emit(
          Loaded(
            state.data.copyWith(
              listSizeOption: listSizeOptions,
            ),
          ),
        );
      } else {
        if (state.data.listSizeOption.length == 0) {
          Get.offAndToNamed(AppRoute.styleScreen);
        }
      }
    } catch (e) {
      emit(Loading(state.data.copyWith(isLoading: false)));
      if (state.data.listSizeOption.length == 0) {
        Get.offAndToNamed(AppRoute.styleScreen);
      }
    }
  }

  void updateSizeChart() async {
    if (state.data.styleId == -1) {
      Get.back(result: state.data.listSizeOption);
    } else {
      try {
        emit(Loading(state.data.copyWith(isLoading: true)));
        RequestSize requestSize =
            new RequestSize(sizeOptions: state.data.listSizeOption);
        BaseResponse baseResponse =
            await dataRepository.updateSize(state.data.styleId, requestSize);
        emit(Loading(state.data.copyWith(isLoading: false)));

        if (baseResponse.success) {
          showSnackBarCustom(
              titleMessage: "success".tr,
              textMassage: baseResponse.message,
              typeSnackbar: TypeSnackbar.done);
        }
      } catch (e) {
        emit(Loading(state.data.copyWith(isLoading: false)));
        handleAppError(e);
      }
    }
  }

  void removeMeasurement(int position, int measurementInxex) {
    List<SizeOption> listSizeOptions = state.data.listSizeOption;
    SizeOption sizeOptionSelect = listSizeOptions[position];
    sizeOptionSelect.measurements!.removeAt(measurementInxex);
    listSizeOptions[position] = sizeOptionSelect;
    emit(
      RemoveMeasurement(
        state.data.copyWith(
            listSizeOption: listSizeOptions,
            timeChange: new DateTime.now().toString()),
      ),
    );
  }

  void addMeasurement(String name, int position) {
    List<SizeOption> listSizeOptions = state.data.listSizeOption;
    SizeOption sizeOptionSelect = listSizeOptions[position];
    // Create new contents.
    Measurement newMeasurement = new Measurement(
      title: name,
      contents: List<String>.generate(
          sizeOptionSelect.contents!.length, (index) => "0"),
    );
    sizeOptionSelect.measurements!.add(newMeasurement);
    listSizeOptions[position] = sizeOptionSelect;
    emit(
      AddMeasurement(
        state.data.copyWith(
            listSizeOption: listSizeOptions,
            timeChange: new DateTime.now().toString()),
      ),
    );
  }
}
