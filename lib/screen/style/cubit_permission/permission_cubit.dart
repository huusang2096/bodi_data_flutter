import 'dart:convert';

import 'package:bodidatacms/model/group/group_data.dart';
import 'package:bodidatacms/model/inventory_permission/style_permissions.dart';
import 'package:bodidatacms/model/inventory_permission/update_permission_request.dart';
import 'package:bodidatacms/model/inventory_permission/update_permission_response.dart';
import 'package:bodidatacms/model/login/login_response.dart';
import 'package:bodidatacms/widgets/snackbar_custom.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bodidatacms/common/base_cubit.dart';
import 'package:get/get.dart';
part 'permission_state.dart';
part 'permission_cubit.freezed.dart';

class PermissionCubit extends BaseCubit<PermissionState> {
  PermissionCubit(String? styleName, int styleId)
      : super(Initial(DataPermission(name: styleName ?? '', idStyle: styleId)));

  @override
  void initData() {
    getAllGroupInUser();

    super.initData();
  }

  void changeIsSelectedPermission(int idGroup, int idPermission) {
    if (state.data.isLoading) {
      return;
    }
    emit(Loading(state.data.copyWith()));
    final groups = state.data.listGroupInUser;
    groups.forEach((element) {
      if (element.id == idGroup) {
        element.permissions.forEach((elementPermission) {
          if (elementPermission.id == idPermission) {
            elementPermission.isEnabled = !elementPermission.isEnabled!;
          }
        });
      }
    });
    emit(Loaded(state.data.copyWith(listGroupInUser: groups)));
  }

  void handlePermissions(
    List<GroupData> listGroupInUser,
    List<InformationPermission> listPermissionInStyle,
  ) {
    if (listPermissionInStyle.isEmpty || listGroupInUser.isEmpty) {
      emit(Loaded(state.data.copyWith(
          listGroupInUser: listGroupInUser,
          isLoading: false,
          listPermission: listPermissionInStyle)));
      return;
    }

    for (int i = 0; i < listPermissionInStyle.length; i++) {
      for (int j = 0; j < listGroupInUser.length; j++) {
        if (listPermissionInStyle[i].id == listGroupInUser[j].id) {
          if (listPermissionInStyle[i].permissions.isNotEmpty) {
            listPermissionInStyle[i].permissions.forEach((elementStyle) {
              listGroupInUser[j].permissions.forEach((elementGroup) {
                if (elementStyle.id == elementGroup.id) {
                  elementGroup.isEnabled = elementStyle.isEnabled;
                }
              });
            });
          }
        }
      }
    }
    emit(Loaded(state.data.copyWith(
        listGroupInUser: listGroupInUser,
        isLoading: false,
        listPermission: listPermissionInStyle)));
  }

  void getAllGroupInUser() async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));
      final String? user = appPref.userModel;
      if (user == null) {
        return;
      }
      final userModal = LoginData.fromJson(json.decode(user));
      final groupInUserResponse =
          await dataRepository.getAllGroupInUser(userModal.id ?? 0);
      final permissionsInStyle =
          await dataRepository.getStylePermission(state.data.idStyle);

      handlePermissions(
          groupInUserResponse.data ?? [], permissionsInStyle.data ?? []);
    } catch (e) {
      emit(Loaded(state.data.copyWith(isLoading: false)));
      handleAppError(e);
      logger.e(e);
    }
  }

  Future<void> updatePermission() async {
    try {
      if (state.data.isLoading) {
        return;
      }
      emit(Loading(state.data.copyWith(isLoading: true)));
      final List<Role> roles = [];

      state.data.listGroupInUser.forEach((element) {
        element.permissions.forEach((element1) {
          if (element1.isEnabled!) {
            roles.add(Role(
                groupId: element.id!,
                isEnable: element1.isEnabled!,
                permissionId: element1.id!));
          }
        });
      });
      if (roles.isEmpty) {
        showSnackBarCustom(
            textMassage: 'you_do_not_have_a_group'.tr,
            typeSnackbar: TypeSnackbar.warning);

        emit(Loading(state.data.copyWith(isLoading: false)));
        return;
      }
      final UpdatePermissionRequest updatePermissionRequest =
          UpdatePermissionRequest(roles: roles);

      final UpdatePermissionResponse updatePermissionResponse =
          await dataRepository.updateStylePermission(
              state.data.idStyle, updatePermissionRequest);
      if (updatePermissionResponse.success!) {
        showSnackBarCustom(
            textMassage: 'update_permission_success'.tr,
            typeSnackbar: TypeSnackbar.done);
      }
    } catch (e) {
      handleAppError(e);
      logger.e(e);
    }
  }
}
