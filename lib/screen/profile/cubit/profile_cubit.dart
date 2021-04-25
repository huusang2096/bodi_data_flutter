import 'package:bodidatacms/common/base_cubit.dart';
import 'package:bodidatacms/model/pagination/pagination.dart';
import 'package:bodidatacms/model/profile/clothing_preferency.dart';
import 'package:bodidatacms/model/profile/delete_profile_response.dart';
import 'package:bodidatacms/model/profile/gender_response.dart';
import 'package:bodidatacms/model/profile/hashtag.dart';
import 'package:bodidatacms/model/profile/profile_response.dart';
import 'package:bodidatacms/widgets/custom_dialog_box_widget.dart';
import 'package:bodidatacms/widgets/snackbar_custom.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:bodidatacms/common/extensions.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends BaseCubit<ProfileState> {
  ProfileCubit() : super(Initial(DataProfile()));

  @override
  void initData() {
    getListProfiles();
    getListGender();
    super.initData();
  }

  void getDeviceScreenType(DeviceScreenType deviceScreenType) {
    emit(GetDeviceScreenType(
        state.data.copyWith(deviceScreenType: deviceScreenType)));
  }

  Future<void> getListProfiles() async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));

      // Filters with gender
      String genderList = "";
      state.data.listGenders.forEach((gender) {
        if (gender.isSelect) {
          genderList += gender.name! + ",";
        }
      });

      // Filters with tags
      String hastags = "";
      state.data.listHashtags.forEach((tag) {
        if (tag.isSelect!) {
          hastags += (tag.name ?? '') + ",";
        }
      });

      String limit = state.data.limit;
      limit = limit == "all" ? "" : limit;

      final ProfileResponse profileResponse =
          await dataRepository.getListProfile(
              limit,
              state.data.page,
              state.data.keySearch,
              genderList.removeLast(),
              hastags.removeLast());
      getListPage(profileResponse.pagination!);
      emit(
        GetProfileSuccess(
          state.data.copyWith(
            listProfiles: profileResponse.list ?? [],
            isLoading: false,
          ),
        ),
      );
      getListHashtag(hastags);
    } catch (e) {
      emit(Loading(state.data.copyWith(isLoading: false)));
      handleAppError(e);
    }
  }

  void getListGender() async {
    try {
      emit(Loading(state.data.copyWith(isLoadingGender: true)));

      final GenderResponse genderResponse =
          await dataRepository.getListGender();
      emit(
        Loaded(
          state.data.copyWith(
            listGenders: genderResponse.data ?? [],
            isLoadingGender: false,
          ),
        ),
      );
    } catch (e) {
      emit(Loading(state.data.copyWith(isLoadingGender: false)));
      handleAppError(e);
    }
  }

  void getListHashtag(String hastags) {
    final List<Hashtag> listTempHashTag = [];
    final listProfiles = state.data.listProfiles;

    listProfiles.forEachIndexed((index, element) {
      listTempHashTag
          .add(Hashtag(id: index + 1, name: element.hashtags, isSelect: false));
    });

    final listSetTemp = listTempHashTag.map((e) => e.name ?? '').toSet();
    if (state.data.listHashtags.isEmpty) {
      listTempHashTag
          .retainWhere((element) => listSetTemp.remove(element.name));
    } else {
      if (hastags.isEmpty) {
        listTempHashTag
            .retainWhere((element) => listSetTemp.remove(element.name));
      } else {
        listTempHashTag
          ..clear()
          ..addAll(state.data.listHashtags);
      }
    }
    emit(
      Loaded(
        state.data.copyWith(
          listHashtags: listTempHashTag,
          isLoadingGender: false,
        ),
      ),
    );
  }

  void getListPage(Pagination pagination) {
    List<String> listPage = [];
    for (int i = 1; i <= pagination.totalPage!; i++) {
      listPage.add(i.toString());
    }
    emit(Loaded(state.data.copyWith(listPages: listPage)));
  }

  void searchWithKey(String key) {
    emit(Loaded(state.data.copyWith(keySearch: key)));
    getListProfiles();
  }

  void changeLimit(String limit) {
    emit(Loaded(state.data.copyWith(limit: limit, page: "1")));
    getListProfiles();
  }

  void changePage(String page) {
    emit(Loaded(state.data.copyWith(page: page)));
    getListProfiles();
  }

  void deleteProfile(int profileId, String nameProfile) async {
    try {
      final check = await Get.dialog(
        CustomDialogBox(
          text: 'do_you_want_delete_this_profile'.trArgs([nameProfile]),
          titleText: 'Delete',
        ),
        barrierColor: Colors.transparent,
        barrierDismissible: false,
      );
      if (check) {
        final DeleteProfileResponse deleteProfileResponse =
            await dataRepository.deleteProfile(profileId);
        if (deleteProfileResponse.success != null &&
            deleteProfileResponse.success == true) {
          showSnackBarCustom(
              textMassage: 'deleted_success'.tr,
              typeSnackbar: TypeSnackbar.done,
              titleMessage: 'Deleted');
        } else {
          showSnackBarCustom(
              textMassage: 'delete_failed'.tr,
              typeSnackbar: TypeSnackbar.warning,
              titleMessage: 'Deleted');
        }
      }
      getListProfiles();
    } catch (e) {
      handleAppError(e);
      logger.e(e);
    }
  }
}
