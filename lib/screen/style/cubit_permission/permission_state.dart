part of 'permission_cubit.dart';

@freezed
class PermissionStateData with _$PermissionStateData {
  const factory PermissionStateData(
          {@Default(false) bool isLoading,
          @Default('') String name,
          @Default(0) int idStyle,
          @Default([]) List<GroupData> listGroupInUser,
          @Default([]) List<InformationPermission> listPermission}) =
      DataPermission;
}

@freezed
class PermissionState with _$PermissionState {
  const factory PermissionState.init(DataPermission data) = Initial;
  const factory PermissionState.loaded(DataPermission data) = Loaded;
  const factory PermissionState.loading(DataPermission data) = Loading;
  const factory PermissionState.error(DataPermission data) = Error;
}
