import 'package:bodidatacms/common/base_cubit.dart';
import 'package:bodidatacms/model/audit/audit_session_profile.dart';
import 'package:bodidatacms/model/profile/profile_response.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bodidatacms/screen/audit/cubit/audit_dialog/audit_dialog_cubit.dart';
import '../../../model/audit/audit_session_response.dart';
import '../../../model/audit/audit_session_style.dart';
part 'audit_state.dart';
part 'audit_cubit.freezed.dart';

class AuditCubit extends BaseCubit<AuditState> {
  AuditCubit() : super(Initial(DataAudit()));

  @override
  void initData() {
    fetchFilter(TypeFilter.style);
    fetchFilter(TypeFilter.participants);
    fetchDataAudiSession(true);
    super.initData();
  }

  void resetDataSearch(TextEditingController controller) {
    emit(Loading(state.data.copyWith(isLoading: true)));
    appPref.setStylesFilter([]);
    appPref.setProfilesFilter([]);
    controller.clear();
    emit(Loaded(state.data.copyWith(
        listStyleAudit: [], listProfileAudit: [], sessionSearch: '')));
    fetchDataAudiSession(false);
  }

  Future<void> removeItemFilter(int id, TypeFilter typeFilter) async {
    emit(Loading(state.data.copyWith()));

    if (typeFilter == TypeFilter.style) {
      final List<StyleAudit> listStyleAudit = appPref.stylesFilter;
      listStyleAudit.removeWhere((element) => element.id == id);
      appPref.setStylesFilter(listStyleAudit);
      emit(Loaded(state.data.copyWith(listStyleAudit: listStyleAudit)));
    } else {
      final List<ProfileAudit> listProfileAudit = appPref.profilesFilter;
      listProfileAudit.removeWhere((element) => element.id == id);
      appPref.setProfilesFilter(listProfileAudit);

      emit(Loaded(state.data.copyWith(listProfileAudit: listProfileAudit)));
    }
  }

  void fetchDataAudiSession(bool featchInitial) async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));

      final String stylesSearch = getKeyStylesSearch();
      final String profilesSearch = getKeyProfileSearch();

      final AuditSessionResponse auditSessionResponse =
          await dataRepository.getAuditSession(
              stylesSearch, profilesSearch, state.data.sessionSearch);

      emit(Loaded(state.data.copyWith(
          listAuditSession: auditSessionResponse.data ?? [],
          isLoading: false,
          getDataInitial: featchInitial)));
    } catch (e) {
      handleAppError(e);
      logger.e(e);
    }
  }

  Future<void> saveSessionSearch(String value) async {
    emit(Loaded(state.data.copyWith(sessionSearch: value)));
  }

  String getKeyStylesSearch() {
    String result = '';
    state.data.listStyleAudit.forEach((element) {
      result += (element.id.toString() + ',');
    });

    return result;
  }

  String getKeyProfileSearch() {
    String result = '';
    state.data.listProfileAudit.forEach((element) {
      result += (element.id.toString() + ',');
    });

    return result;
  }

  Future<void> fetchFilter(TypeFilter typeFilter) async {
    try {
      if (typeFilter == TypeFilter.style) {
        final List<StyleAudit> listStyleAudit = appPref.stylesFilter;
        emit(Loaded(state.data.copyWith(listStyleAudit: listStyleAudit)));
      } else {
        final ProfileResponse allProfileResponse =
            await dataRepository.getListProfile('', '', '', '', '');
        final List<ProfileAudit> listProfileAudit = appPref.profilesFilter;

        listProfileAudit.removeWhere((element) =>
            !allProfileResponse.list!.any((e) => e.id == element.id));
        appPref.setProfilesFilter(listProfileAudit);
        emit(Loaded(state.data.copyWith(listProfileAudit: listProfileAudit)));
      }
    } catch (e) {
      handleAppError(e);
      logger.e(e);
    }
  }

  Future<List<dynamic>> getListFliter(TypeFilter typeFilter) async {
    try {
      if (typeFilter == TypeFilter.style) {
        final List<StyleAudit> listStyle = [];
        final allStyleResponse =
            await dataRepository.getStyles('', '', '', '', '');
        allStyleResponse.data!.forEach((element) {
          listStyle.add(StyleAudit(
              id: element.id,
              modelCode: element.modelCode,
              name: element.styleName));
        });

        //delete duplicate
        final listSetTemp = listStyle.map((e) => e.id).toSet();
        listStyle.retainWhere((element) => listSetTemp.remove(element.id));

        //delete item not selected
        listStyle.removeWhere((element) =>
            state.data.listStyleAudit.any((item) => item.id == element.id));
        return listStyle;
      } else {
        final List<ProfileAudit> listProfile = [];

        final allProfileResponse =
            await dataRepository.getListProfile('', '', '', '', '');
        allProfileResponse.list!.forEach((element) {
          listProfile.add(ProfileAudit(id: element.id, name: element.name));
        });

        //delete duplicate
        final listSetTemp = listProfile.map((e) => e.id).toSet();
        listProfile.retainWhere((element) => listSetTemp.remove(element.id));

        //delete item not selected
        listProfile.removeWhere((element) =>
            state.data.listProfileAudit.any((item) => item.id == element.id));
        return listProfile;
      }
    } catch (e) {
      handleAppError(e);
      return [];
    }
  }

  void changeShowMore(int idSession) {
    emit(Loading(state.data.copyWith()));
    final List<AuditSessionData> listAuditSession = state.data.listAuditSession;
    listAuditSession.forEach((element) {
      if (element.id == idSession)
        element.isShowMoreStyle = !element.isShowMoreStyle;
    });
    emit(Loaded(state.data.copyWith(listAuditSession: listAuditSession)));
  }
}
