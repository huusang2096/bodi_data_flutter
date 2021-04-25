import 'package:bodidatacms/common/base_cubit.dart';
import 'package:bodidatacms/model/audit/audit_session_detail_response.dart';
import 'package:bodidatacms/model/audit/audit_session_profile.dart';
import 'package:bodidatacms/model/audit/audit_session_record_request.dart';
import 'package:bodidatacms/model/audit/audit_session_style.dart';
import 'package:bodidatacms/model/audit/audit_update_style_profile_request.dart';
import 'package:bodidatacms/model/inventory/sttyle_model.dart';
import 'package:bodidatacms/model/profile/profile_response.dart';
import 'package:bodidatacms/routes.dart';
import 'package:bodidatacms/widgets/snackbar_custom.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'audit_detail_cubit.freezed.dart';
part 'audit_detail_state.dart';

class AuditDetailCubit extends BaseCubit<AuditDetailState> {
  AuditDetailCubit(int id) : super(Initial(DataAuditDetail(auditId: id)));

  @override
  void initData() {
    getAuditDetail(state.data.auditId);
    super.initData();
  }

  void getAuditDetail(int auditId) async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));
      final response = await dataRepository.getAuditSessionDetail(auditId);
      emit(Loaded(state.data.copyWith(
          auditSessionDetailResponse: response,
          listAuditStyle: response.data!.styles!,
          listAuditProfile: response.data!.profiles!,
          isLoading: false)));
      return;
    } catch (e) {
      emit(Loaded(state.data.copyWith(
          auditSessionDetailResponse: AuditSessionDetailResponse(
            message: '',
            success: false,
          ),
          listAuditStyle: [],
          listAuditProfile: [],
          isLoading: false)));
      return;
    }
  }

  void reloadData(int auditId) async {
    try {
      final response = await dataRepository.getAuditSessionDetail(auditId);
      emit(Loaded(state.data.copyWith(
        auditSessionDetailResponse: response,
        listAuditStyle: response.data!.styles!,
        listAuditProfile: response.data!.profiles!,
      )));
    } catch (e) {
      handleAppError(e);
    }
  }

  void removeSingleData(int id, String typeData) async {
    try {
      if (typeData == 'style') {
        List<int> listIdStyle = [];
        List<int> listIdProfile = [];
        List<StyleAudit> listStyleAudit = state.data.listAuditStyle;
        listStyleAudit.removeWhere((element) => element.id == id);
        listStyleAudit.forEach((element) => listIdStyle.add(element.id!));
        state.data.listAuditProfile
            .forEach((element) => listIdProfile.add(element.id!));
        AuditUpdateStyleProfileRequest auditRecordRequest =
            AuditUpdateStyleProfileRequest(
                name: state.data.auditSessionDetailResponse!.data!.name,
                profiles: listIdProfile,
                styles: listIdStyle);
        await dataRepository.updatesStyleProfile(
            state.data.auditId, auditRecordRequest);
        reloadData(state.data.auditId);
      } else {
        List<int> listIdStyle = [];
        List<int> listIdProfile = [];
        List<ProfileAudit> listProfileAudit = state.data.listAuditProfile;
        listProfileAudit.removeWhere((element) => element.id == id);
        listProfileAudit.forEach((element) => listIdProfile.add(element.id!));
        state.data.listAuditStyle
            .forEach((element) => listIdStyle.add(element.id!));
        AuditUpdateStyleProfileRequest auditRecordRequest =
            AuditUpdateStyleProfileRequest(
          name: state.data.auditSessionDetailResponse!.data!.name,
          profiles: listIdProfile,
          styles: listIdStyle,
        );
        await dataRepository.updatesStyleProfile(
            state.data.auditId, auditRecordRequest);
        reloadData(state.data.auditId);
      }
    } on Exception catch (e) {
      handleAppError(e);
    }
  }

  void emitAuditStyleDetailData(List<StyleAudit> data) {
    emit(Loaded(state.data.copyWith(listAuditStyle: data)));
  }

  void emitAuditProfileDetailData(List<ProfileAudit> data) {
    emit(Loaded(state.data.copyWith(listAuditProfile: data)));
  }

  void emitAuditRecordData(AuditRecordRequest value) {
    List<AuditRecordRequest> auditRecordRequests = []
      ..addAll(state.data.auditRecordRequests)
      ..add(value);
    print('auitRecordRequest: ${auditRecordRequests.length}');
    emit(Loaded(state.data.copyWith(auditRecordRequests: auditRecordRequests)));
  }

  void removeSingleDataOffline(int id, String typeData) {
    final listData = [];
    if (typeData == 'style') {
      listData
        ..addAll(state.data.listAuditStyle)
        ..removeWhere((element) => element.id == id);
      print('length style: ${listData.length}');
      emit(Loaded(state.data.copyWith(listAuditStyle: listData.cast())));
    } else {
      listData
        ..addAll(state.data.listAuditProfile)
        ..removeWhere((element) => element.id == id);
      emit(Loaded(state.data.copyWith(listAuditProfile: listData.cast())));
    }
  }

  void createNewAuditSession(String sessionName, List<StyleAudit> styles,
      List<ProfileAudit> profiles) async {
    try {
      List<int> listStyleId = styles.map((e) => e.id!).toList();
      List<int> listProfileId = profiles.map((e) => e.id!).toList();

      List<AuditRecordRequest> auditRecordRequest =
          state.data.auditRecordRequests;

      if (listStyleId.isEmpty) {
        showSnackBarCustom(
            textMassage: 'Styles cannot empty',
            typeSnackbar: TypeSnackbar.error);
        return;
      } else if (listProfileId.isEmpty) {
        showSnackBarCustom(
            textMassage: 'Profiles cannot empty',
            typeSnackbar: TypeSnackbar.error);
        return;
      } else if (sessionName.isEmpty) {
        showSnackBarCustom(
            textMassage: 'Session name cannot empty',
            typeSnackbar: TypeSnackbar.error);
        return;
      }

      AuditSessionRecordRequest request = AuditSessionRecordRequest(
        name: sessionName,
        profiles: listProfileId,
        styles: listStyleId,
        auditRecords: auditRecordRequest,
      );
      final response = await dataRepository.createAuditRecord(request);
      if (response.success) {
        showSnackBarCustom(
            textMassage: 'Create Success', typeSnackbar: TypeSnackbar.done);
        Get.toNamed(
            AppRoute.url_auditDetails.trArgs([response.data!.id.toString()]));
      }
      emit(Loaded(state.data.copyWith(auditSessionDetailResponse: response)));
    } catch (e) {
      handleAppError(e);
    }
  }

  void updateAuditSession(String sessionName, List<StyleAudit> styles,
      List<ProfileAudit> profiles) async {
    try {
      List<int> listStyleId = styles.map((e) => e.id!).toList();
      List<int> listProfileId = profiles.map((e) => e.id!).toList();

      List<AuditRecordRequest> auditRecordRequest = [];

      state.data.auditSessionDetailResponse!.data!.auditRecords!.forEach((e) =>
          auditRecordRequest.add(AuditRecordRequest(
              bestSize: e.bestSize,
              measurementSizes: e.measurementSizes!
                  .map((element) => MeasurementSizeRequest(
                      detailed: element.detailed,
                      size: element.size,
                      overallFit: element.overallFit,
                      subCategoryId: element.subCategory!.id))
                  .toList(),
              profileId: e.profile!.id,
              styleId: e.style!.id,
              subCategories: e.subCategories!.map((e) => e.id).toList())));
      print('Audit Record REquest: ${auditRecordRequest.length}');
      print(
          'Audit Record REquest: ${state.data.auditSessionDetailResponse!.data!.auditRecords!.length}');

      if (listStyleId.isEmpty) {
        showSnackBarCustom(
            textMassage: 'Styles cannot empty',
            typeSnackbar: TypeSnackbar.error);
        return;
      } else if (listProfileId.isEmpty) {
        showSnackBarCustom(
            textMassage: 'Profiles cannot empty',
            typeSnackbar: TypeSnackbar.error);
        return;
      } else if (sessionName.isEmpty) {
        showSnackBarCustom(
            textMassage: 'Session name cannot empty',
            typeSnackbar: TypeSnackbar.error);
        return;
      }

      AuditSessionRecordRequest request = AuditSessionRecordRequest(
        name: sessionName,
        profiles: listProfileId,
        styles: listStyleId,
        auditRecords: auditRecordRequest,
      );
      final response = await dataRepository.updateAuditRecordPut(
          state.data.auditId, request);
      if (response.success) {
        showSnackBarCustom(
            textMassage: 'Update Success', typeSnackbar: TypeSnackbar.done);
        Get.toNamed(
            AppRoute.url_auditDetails.trArgs([response.data!.id.toString()]));
      }
      emit(Loaded(state.data.copyWith(auditSessionDetailResponse: response)));
    } catch (e) {
      handleAppError(e);
    }
  }
}
