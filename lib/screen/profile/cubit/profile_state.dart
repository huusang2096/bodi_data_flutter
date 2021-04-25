part of 'profile_cubit.dart';

@freezed
class ProfileData with _$ProfileData {
  const factory ProfileData({
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingGender,
    @Default(false) bool isLoadingHashTags,
    @Default([]) List<ProfileModel> listProfiles,
    @Default([]) List<ClothingPreferency> listGenders,
    @Default([]) List<Hashtag> listHashtags,
    @Default("") String keySearch,
    @Default("5") String limit,
    @Default("1") String page,
    @Default([]) List<String> listPages,
    @Default(DeviceScreenType.desktop) DeviceScreenType deviceScreenType,
  }) = DataProfile;
}

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial(DataProfile data) = Initial;
  const factory ProfileState.loaded(DataProfile data) = Loaded;
  const factory ProfileState.loading(DataProfile data) = Loading;
  const factory ProfileState.getDeviceScreenType(DataProfile data) =
      GetDeviceScreenType;
  const factory ProfileState.getProfileSuccess(DataProfile data) =
      GetProfileSuccess;
}
