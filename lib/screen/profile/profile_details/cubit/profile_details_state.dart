part of 'profile_details_cubit.dart';

@freezed
class ProfileDetailsData with _$ProfileDetailsData {
  const factory ProfileDetailsData({
    required int profileId,
    @Default(false) bool isLoading,
    @Default([]) List<HipShape> listHipShapes,
    @Default([]) List<ClothingPreferency> listGenders,
    required ProfileRequest profileRequest,
    ProfileDetailResponse? profileDetailResponses,
    HipShape? hipShape,
    ClothingPreferency? genderModel,
  }) = DataProfileDetails;
}

@freezed
class ProfileDetailsState with _$ProfileDetailsState {
  const factory ProfileDetailsState.initial(DataProfileDetails data) = Initial;
  const factory ProfileDetailsState.loading(DataProfileDetails data) = Loading;
  const factory ProfileDetailsState.loaded(DataProfileDetails data) = Loaded;
  const factory ProfileDetailsState.getProfile(DataProfileDetails data) =
      GetProfile;
  const factory ProfileDetailsState.getHipShape(DataProfileDetails data) =
      GetHipShape;
  const factory ProfileDetailsState.getListGender(DataProfileDetails data) =
      GetGenders;
  const factory ProfileDetailsState.getComments(DataProfileDetails data) =
      GetComments;
}
