part of 'style_cubit.dart';

@freezed
class StyleStateData with _$StyleStateData {
  const factory StyleStateData(
      {@Default(false) bool isLoading,
      @Default(false) bool isLoadingUploadFile,
      @Default([]) List<InformationFiles> listInformationFiles,
      required int styleId,
      @Default([]) List<ClothingPreferency> listGenders,
      @Default([]) List<Category> listCategories,
      required StyleRequest styleRequest,
      StyleDetailResponse? styleDetailResponse,
      Category? categorySelect,
      @Default([]) List<SizeOption> listSizeOption,
      required GarmentDetails garmentDetails,
      ClothingPreferency? clothingPreferencySelect,
      String? timeChange}) = DataStyle;
}

@freezed
class StyleState with _$StyleState {
  const factory StyleState.init(DataStyle data) = Initial;
  const factory StyleState.loaded(DataStyle data) = Loaded;
  const factory StyleState.loading(DataStyle data) = Loading;
  const factory StyleState.error(DataStyle data) = Error;
  const factory StyleState.getProfile(DataStyle data) = GetStyleDetails;
  const factory StyleState.getHipShape(DataStyle data) = GetCategory;
  const factory StyleState.getListGender(DataStyle data) = GetGenders;
}
