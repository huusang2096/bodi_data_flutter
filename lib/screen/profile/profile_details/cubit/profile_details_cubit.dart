import 'package:bodidatacms/common/base_cubit.dart';
import 'package:bodidatacms/model/profile/clothing_preferency.dart';
import 'package:bodidatacms/model/profile/delete_profile_response.dart';
import 'package:bodidatacms/model/profile/gender_response.dart';
import 'package:bodidatacms/model/profile/hip_shape.dart';
import 'package:bodidatacms/model/profile/hip_shape_response.dart';
import 'package:bodidatacms/model/profile/new_profile_response.dart';
import 'package:bodidatacms/model/profile/profile_detail_response.dart';
import 'package:bodidatacms/model/profile/profile_request.dart';
import 'package:bodidatacms/model/profile/profile_response.dart';
import 'package:bodidatacms/routes.dart';
import 'package:bodidatacms/widgets/custom_dialog_box_widget.dart';
import 'package:bodidatacms/widgets/snackbar_custom.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
part 'profile_details_state.dart';
part 'profile_details_cubit.freezed.dart';

class ProfileDetailsCubit extends BaseCubit<ProfileDetailsState> {
  ProfileDetailsCubit(int id)
      : super(Initial(DataProfileDetails(
            profileRequest: new ProfileRequest(), profileId: id)));

  @override
  void initData() {
    if (state.data.profileId != -1) {
      getProfileDetails(state.data.profileId);
    } else {
      getListGender();
      getListHipShape();
    }
    super.initData();
  }

  void getProfileDetails(int id) async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));
      final ProfileDetailResponse profileDetailResponse =
          await dataRepository.getProfileDetails(id);
      emit(Loading(state.data.copyWith(isLoading: false)));
      if (profileDetailResponse.success) {
        ProfileModel profileModel = profileDetailResponse.data!;
        ProfileRequest profileRequest =
            ProfileRequest().copyWith(profileModel: profileModel);
        emit(
          GetProfile(
            state.data.copyWith(
              profileRequest: profileRequest,
              profileDetailResponses: profileDetailResponse,
            ),
          ),
        );
        getListGender();
        getListHipShape();
      } else {
        Get.offAndToNamed(AppRoute.profileDetails);
      }
    } catch (e) {
      emit(Loading(state.data.copyWith(isLoading: false)));
      Get.offAndToNamed(AppRoute.profileDetails);
    }
  }

  void createProfile() async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));

      //validation
      final String? fieldNameError = validation(state.data.profileRequest);

      if (fieldNameError != null) {
        showSnackBarCustom(
            textMassage: 'filed_cannot_be_empty'.trArgs([fieldNameError]),
            typeSnackbar: TypeSnackbar.warning);
        emit(Loading(state.data.copyWith(isLoading: false)));
        return;
      }

      // Check profile request
      if (state.data.profileDetailResponses != null) {
        // Udpate
        ProfileModel profileModel = state.data.profileDetailResponses!.data!;
        NewProfileResponse newProfileResponse =
            await dataRepository.updateProfile(
                profileModel.id.toString(), state.data.profileRequest);
        if (newProfileResponse.success) {
          showSnackBarCustom(
              textMassage: 'update_success'.trArgs(['']),
              typeSnackbar: TypeSnackbar.done,
              titleMessage: 'updated'.tr);
        } else {
          handleAppError(newProfileResponse.message);
        }
      } else {
        // Add new
        NewProfileResponse newProfileResponse =
            await dataRepository.createProfile(state.data.profileRequest);

        if (newProfileResponse.success) {
          showSnackBarCustom(
              textMassage: 'create_success'.trArgs(['']),
              typeSnackbar: TypeSnackbar.done,
              titleMessage: 'created'.tr);
        } else {
          handleAppError(newProfileResponse.message);
        }
      }
    } catch (e) {
      emit(Loading(state.data.copyWith(isLoading: false)));
      logger.e(e);
      handleAppError(e);
    }
    emit(Loading(state.data.copyWith(isLoading: false)));
  }

  String? validation(ProfileRequest profileRequest) {
    final profileMap = profileRequest.toJson();
    final String? fieldNameError =
        profileMap.keys.firstWhereOrNull((key) => profileMap[key] == null);
    if (fieldNameError != null) {
      return fieldNameError.replaceAll('_', ' ').capitalizeFirst;
    } else {
      return null;
    }
  }

  void getListHipShape() async {
    try {
      final HipShapeResponse hipShapeResponse =
          await dataRepository.getListHipShape();
      if (hipShapeResponse.success && hipShapeResponse.data != null) {
        HipShape hipShape;
        ProfileRequest profileRequest = state.data.profileRequest;
        if (profileRequest.hipshapeId != null) {
          hipShape = hipShapeResponse.data!
              .firstWhere((element) => element.id == profileRequest.hipshapeId);
        } else {
          hipShape = hipShapeResponse.data!.elementAt(0);
        }
        profileRequest.hipshapeId = hipShape.id;

        emit(
          GetHipShape(
            state.data.copyWith(
              profileRequest: profileRequest,
              hipShape: hipShape,
              listHipShapes: hipShapeResponse.data ?? [],
            ),
          ),
        );
      }
    } catch (e) {
      handleAppError(e);
    }
  }

  void getListGender() async {
    try {
      final GenderResponse genderResponse =
          await dataRepository.getListGender();
      if (genderResponse.success && genderResponse.data != null) {
        ClothingPreferency genderModel;
        ProfileRequest profileRequest = state.data.profileRequest;

        if (profileRequest.clothingPreferencyId != null) {
          genderModel = genderResponse.data!.firstWhere(
              (element) => element.id == profileRequest.clothingPreferencyId);
        } else {
          genderModel = genderResponse.data!.elementAt(0);
        }
        profileRequest.clothingPreferencyId = genderModel.id;
        emit(
          GetGenders(
            state.data.copyWith(
              profileRequest: profileRequest,
              genderModel: genderModel,
              listGenders: genderResponse.data!,
            ),
          ),
        );
      }
    } catch (e) {
      handleAppError(e);
    }
  }

  void deleteProfile() async {
    try {
      final check = await Get.dialog(
        CustomDialogBox(
          text: 'do_you_want_delete_this_profile'
              .trArgs([state.data.profileRequest.name ?? '']),
          titleText: 'Delete',
        ),
        barrierColor: Colors.transparent,
        barrierDismissible: false,
      );
      if (check) {
        final DeleteProfileResponse deleteProfileResponse =
            await dataRepository.deleteProfile(state.data.profileId);
        if (deleteProfileResponse.success != null &&
            deleteProfileResponse.success == true) {
          Get.back();
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
    } catch (e) {
      handleAppError(e);
      logger.e(e);
    }
  }
}
