part of 'size_chart_editor_cubit.dart';

@freezed
class SizeChartEditorData with _$SizeChartEditorData {
  const factory SizeChartEditorData(
      {@Default(false) bool isLoading,
      @Default([]) List<SizeOption> listSizeOption,
      required int styleId,
      String? timeChange}) = DataSizeChartEditor;
}

@freezed
class SizeChartEditorState with _$SizeChartEditorState {
  const factory SizeChartEditorState.initial(DataSizeChartEditor data) =
      Initial;
  const factory SizeChartEditorState.loading(DataSizeChartEditor data) =
      Loading;
  const factory SizeChartEditorState.loaded(DataSizeChartEditor data) = Loaded;
  const factory SizeChartEditorState.addMeasurement(DataSizeChartEditor data) =
      AddMeasurement;
  const factory SizeChartEditorState.removeMeasurement(
      DataSizeChartEditor data) = RemoveMeasurement;
}
