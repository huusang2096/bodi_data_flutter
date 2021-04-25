import 'package:bodidatacms/common/base_cubit.dart';
import 'package:bodidatacms/model/audit/audit_session_detail_response.dart';
import 'package:bodidatacms/model/audit/audit_session_profile.dart';
import 'package:bodidatacms/model/audit/audit_session_style.dart';
import 'package:bodidatacms/model/audit/audit_update_style_profile_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'create_audit_session_cubit.freezed.dart';
part 'create_audit_session_state.dart';

class DialogCreateSessionDetailCubit
    extends BaseCubit<DialogCreateAuditSessionState> {
  DialogCreateSessionDetailCubit(
      List<StyleAudit> styles, List<ProfileAudit> profiles)
      : super(Initial(DataDialogCreateSessionAudit(
            listAuditProfile: profiles, listAuditStyle: styles)));

  @override
  void initData() {
    fetchAllProfilesStyles(state.data.auditId);
    super.initData();
  }

  getAllStyleProfile() async {
    try {
      //Load all Profile
      List<ProfileAudit> listAllProfileFormat = [];
      final listAllProfile =
          await dataRepository.getListProfile('', '', '', '', '');
      listAllProfile.list!.forEach((element) => listAllProfileFormat
          .add(ProfileAudit(id: element.id, name: element.name)));

      //Load all style
      List<StyleAudit> listAllStyleFormat = [];

      final listAllStyle = await dataRepository.getStyles('', '', '', '', '');

      listAllStyle.data!.forEach((element) => listAllStyleFormat.add(StyleAudit(
          id: element.id,
          name: element.styleName,
          modelCode: element.modelCode)));
      emit(Loaded(state.data.copyWith(
          listAllProfile: listAllProfileFormat,
          listAllStyle: listAllStyleFormat)));
    } catch (e) {
      handleAppError(e);
    }
  }

  void fetchAllProfilesStyles(int auditId) async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));
      List<ProfileAudit> listAllProfileFormat = [];
      List<StyleAudit> listAllStyleFormat = [];

      final listAllProfile =
          await dataRepository.getListProfile('', '', '', '', '');
      final listAllStyle = await dataRepository.getStyles('', '', '', '', '');

      listAllProfile.list!.forEach((element) => listAllProfileFormat
          .add(ProfileAudit(id: element.id, name: element.name)));
      listAllStyle.data!.forEach((element) => listAllStyleFormat.add(StyleAudit(
          id: element.id,
          name: element.styleName,
          modelCode: element.modelCode)));
      state.data.listAuditStyle.forEach((e) {
        listAllStyleFormat.removeWhere((element) => element.id == e.id);
      });
      state.data.listAuditProfile.forEach((e) =>
          listAllProfileFormat.removeWhere((element) => element.id == e.id));

      emit(Loaded(state.data.copyWith(
          isLoading: false,
          listAuditProfile: state.data.listAuditProfile,
          listAuditStyle: state.data.listAuditStyle,
          listAllStyle: listAllStyleFormat,
          listAllProfile: listAllProfileFormat)));
    } catch (e) {
      handleAppError(e);
    }
  }

  void addData(int id, String dataType) {
    final listAll = [];
    final listResult = [];
    if (dataType == 'style') {
      listResult
        ..addAll(state.data.listAuditStyle)
        ..add(state.data.listAllStyle.firstWhere(
          (element) => element.id == id,
        ));
      listAll
        ..addAll(state.data.listAllStyle
          ..removeWhere((element) => element.id == id));
      emit(Loaded(state.data.copyWith(
        listAuditStyle: listResult.cast(),
        listAllStyle: listAll.cast(),
      )));
    } else {
      listResult
        ..addAll(state.data.listAuditProfile)
        ..add(state.data.listAllProfile
            .firstWhere((element) => element.id == id));
      listAll
        ..addAll(state.data.listAllProfile)
        ..removeWhere((element) => element.id == id);
      emit(Loaded(state.data.copyWith(
        listAuditProfile: listResult.cast(),
        listAllProfile: listAll.cast(),
      )));
    }
  }

  void removeData(int id, String dataType) async {
    try {
      final listAll = [];
      final listResult = [];
      if (dataType == 'style') {
        listResult
          ..addAll(state.data.listAuditStyle)
          ..removeWhere(
            (element) => element.id == id,
          );
        listAll
          ..addAll(state.data.listAllStyle
            ..add(state.data.listAuditStyle
                .firstWhere((element) => element.id == id)));
        emit(Loaded(state.data.copyWith(
          listAuditStyle: listResult.cast(),
          listAllStyle: listAll.cast(),
        )));
      } else {
        listResult
          ..addAll(state.data.listAuditProfile)
          ..removeWhere(
            (element) => element.id == id,
          );
        listAll
          ..addAll(state.data.listAllProfile
            ..add(state.data.listAuditProfile
                .firstWhere((element) => element.id == id)));
        emit(Loaded(state.data.copyWith(
          listAuditProfile: listResult.cast(),
          listAllProfile: listAll.cast(),
        )));
      }
    } catch (e) {
      handleAppError(e);
    }
  }

  void saveData(String typeData, bool isSave) async {
    if (isSave) {
      typeData == 'style'
          ? Get.back(result: state.data.listAuditStyle)
          : Get.back(result: state.data.listAuditProfile);
    } else {
      Get.back(result: []);
    }
  }
}
