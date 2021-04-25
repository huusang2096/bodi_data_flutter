part of 'user_cubit.dart';

@freezed
class UserStateData with _$UserStateData {
  const factory UserStateData(
      {@Default(false) bool isLoading,
      @Default(false) bool isLoadingButtonCreate,
      @Default([]) List<User> allUser,
      List<User>? listTempAllUser,
      @Default([]) List<GroupData> allGroup,
      List<GroupData>? listTempSearchDlgEdit,
      @Default(false) bool isLoadinglistTempDlgEdit,
      @Default('5') String limit,
      @Default(1) int page,
      @Default([]) List<String> listPages,
      @Default([]) List<GroupData> allGroupInUser}) = DataUser;
}

@freezed
class UserState with _$UserState {
  const factory UserState.init(DataUser data) = Initial;
  const factory UserState.loaded(DataUser data) = Loaded;
  const factory UserState.loading(DataUser data) = Loading;
  const factory UserState.error(DataUser data) = Error;
}
