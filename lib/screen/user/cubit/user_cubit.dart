import 'package:bodidatacms/common/base_cubit.dart';
import 'package:bodidatacms/model/group/get_all_group_response.dart';
import 'package:bodidatacms/model/group/group_data.dart';
import 'package:bodidatacms/model/group/group_request.dart';
import 'package:bodidatacms/model/group/group_response.dart';
import 'package:bodidatacms/model/group/update_group_request.dart';
import 'package:bodidatacms/model/pagination/pagination.dart';
import 'package:bodidatacms/model/user/all_user_response.dart';
import 'package:bodidatacms/model/user/param_request_user.dart';
import 'package:bodidatacms/widgets/snackbar_custom.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'user_cubit.freezed.dart';
part 'user_state.dart';

class UserCubit extends BaseCubit<UserState> {
  UserCubit() : super(Initial(DataUser(isLoading: true)));

  @override
  void initData() {
    getAllUser();
    super.initData();
  }

  void getAllUser({String? search}) async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));
      final ParamsRequestUser paramsRequestUser = ParamsRequestUser(
          page: state.data.limit == 'all' ? 1 : state.data.page,
          limit: state.data.limit == 'all' ? '-1' : state.data.limit);
      final AllUserResponse allUserResponse =
          await dataRepository.getAllUser(paramsRequestUser);
      getListPage(allUserResponse.pagination!);
      if (search != null) {
        emit(Loaded(state.data.copyWith(
          allUser: allUserResponse.data ?? [],
        )));
        searchUser(search).then(
            (value) => emit(Loaded(state.data.copyWith(isLoading: false))));
        return;
      }
      emit(Loaded(state.data.copyWith(
          allUser: allUserResponse.data ?? [],
          listTempAllUser: allUserResponse.data,
          isLoading: false)));
    } catch (e) {
      emit(Loading(state.data.copyWith(isLoading: false)));
      handleAppError(e);
      logger.e(e);
    }
  }

  void getAllGroup(int userId) async {
    try {
      emit(Loading(state.data.copyWith(isLoadinglistTempDlgEdit: true)));

      final AllGroupResponse allGroupResponse =
          await dataRepository.getAllGroup();

      final AllGroupResponse allGroupInUserResponse =
          await dataRepository.getAllGroupInUser(userId);

      emit(Loaded(state.data.copyWith(
        isLoadinglistTempDlgEdit: false,
        allGroup: allGroupResponse.data ?? [],
        allGroupInUser: allGroupInUserResponse.data ?? [],
        listTempSearchDlgEdit: allGroupResponse.data,
      )));
    } catch (e) {
      emit(Loading(state.data.copyWith(isLoadinglistTempDlgEdit: false)));
      handleAppError(e);
      logger.e(e);
    }
  }

  Future<void> createNewGroup(String name) async {
    try {
      emit(Loading(
          state.data.copyWith(isLoading: true, isLoadingButtonCreate: true)));
      final groupRequest = GroupRequest(name: name);
      final GroupResponse groupResponse =
          await dataRepository.createGroup(groupRequest);
      if (groupResponse.success!) {
        getAllUser();
        Get.back();
        showSnackBarCustom(
            textMassage: groupResponse.message ?? '',
            typeSnackbar: TypeSnackbar.done);
      }
      emit(Loading(state.data.copyWith(isLoadingButtonCreate: false)));
    } catch (e) {
      emit(Loading(
          state.data.copyWith(isLoading: false, isLoadingButtonCreate: false)));
      logger.e(e);
      handleAppError(e);
    }
  }

  void searchInDialogEdit(String value) async {
    final List<GroupData> listGroupTemp = [];
    listGroupTemp.addAll(state.data.allGroup);
    listGroupTemp.removeWhere((element) =>
        !(element.name!.toLowerCase().contains(value.toLowerCase())));
    await Future.delayed(Duration(milliseconds: 50));
    emit(
      Loaded(
        state.data.copyWith(
          listTempSearchDlgEdit: listGroupTemp,
        ),
      ),
    );
  }

  Future<void> searchUser(String value) async {
    final List<User> listUsersTemp = [];
    listUsersTemp.addAll(state.data.allUser);
    listUsersTemp.removeWhere((element) =>
        !(element.name!.toLowerCase().contains(value.toLowerCase())));
    await Future.delayed(Duration(milliseconds: 100));
    emit(
      Loaded(
        state.data.copyWith(
          listTempAllUser: listUsersTemp,
        ),
      ),
    );
  }

  void whenSearchBoxNull() {
    emit(Loading(state.data.copyWith(listTempAllUser: state.data.allUser)));
  }

  void whenSearchDialogNull() {
    emit(Loading(
        state.data.copyWith(listTempSearchDlgEdit: state.data.allGroup)));
  }

  void whenCompleteSearchDialogNull() {
    emit(Loading(state.data.copyWith(
        listTempSearchDlgEdit: null, allGroup: [], allGroupInUser: [])));
  }

  void changePage(int pageChange) {
    emit(Loaded(state.data.copyWith(page: pageChange)));
    getAllUser();
  }

  void changeLimit(String limit) {
    emit(Loaded(state.data.copyWith(limit: limit, page: 1)));
    getAllUser();
  }

  void getListPage(Pagination pagination) {
    List<String> listPage = [];
    for (int i = 1; i <= pagination.totalPage!; i++) {
      listPage.add(i.toString());
    }
    emit(Loaded(state.data.copyWith(listPages: listPage)));
  }

  void updateGroup(int idGroup) async {
    try {
      final UpdateGroupRequest updateGroupRequest =
          UpdateGroupRequest(userId: 1, isLinked: true);

      await dataRepository.updateGroup(idGroup, updateGroupRequest);
    } catch (e) {
      handleAppError(e);
      logger.e(e);
    }
  }

  Future<void> getAllGroupInUser(int userId) async {
    try {
      final AllGroupResponse allGroupResponse =
          await dataRepository.getAllGroupInUser(userId);
      emit(Loaded(
          state.data.copyWith(allGroupInUser: allGroupResponse.data ?? [])));
    } catch (e) {
      handleAppError(e);
      logger.e(e);
    }
  }

  void changeActiveGroup(
      {required bool active,
      required int? userId,
      required int? groupId}) async {
    try {
      emit(Loading(state.data.copyWith(isLoadinglistTempDlgEdit: true)));
      if (userId == null || groupId == null) {
        return;
      }
      int idTemp = -1;

      final List<GroupData> temp = [];

      temp.addAll(state.data.listTempSearchDlgEdit ?? []);

      temp.forEachIndexed((index, element) {
        if (element.id == groupId) {
          idTemp = index;
          element.isLoading = true;
        }
      });
      emit(Loading(state.data.copyWith(listTempSearchDlgEdit: temp)));
      final updateGroupRequest =
          UpdateGroupRequest(isLinked: active, userId: userId);
      await dataRepository.updateGroup(groupId, updateGroupRequest);
      await getAllGroupInUser(userId);
      temp[idTemp].isLoading = false;
      emit(Loaded(state.data.copyWith(
          listTempSearchDlgEdit: temp, isLoadinglistTempDlgEdit: false)));
    } catch (e) {
      handleAppError(e);
      logger.e(e);
    }
  }
}
