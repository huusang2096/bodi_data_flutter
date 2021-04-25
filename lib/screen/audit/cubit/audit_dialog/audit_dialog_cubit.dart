import 'package:bodidatacms/model/audit/audit_session_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bodidatacms/common/base_cubit.dart';
import 'package:get/get.dart';
import '../../../../model/audit/audit_session_style.dart';
part 'audit_dialog_state.dart';
part 'audit_dialog_cubit.freezed.dart';

enum TypeFilter { style, participants }

class AuditDialogCubit extends BaseCubit<AuditDialogState> {
  AuditDialogCubit(List<StyleAudit> listStyleAudit,
      List<ProfileAudit> listProfileAudit, TypeFilter typeFilter)
      : super(Initial(DataAuditDialog(
            listProfileAudit: listProfileAudit,
            listStyleAudit: listStyleAudit,
            typeFilter: typeFilter)));

  fetchFirstData() {
    if (state.data.typeFilter == TypeFilter.style) {
      final List<StyleAudit> listStyleAuditResult = appPref.stylesFilter;
      emit(Loaded(
          state.data.copyWith(listStyleAuditResult: listStyleAuditResult)));
    } else {
      final List<ProfileAudit> listProfileAuditResult = appPref.profilesFilter;
      emit(Loaded(
          state.data.copyWith(listProfileAuditResult: listProfileAuditResult)));
    }
  }

  void selectItemFilter(int id) {
    emit(Loading(state.data.copyWith(isLoading: true)));
    final listResult = [];
    final listTemp = [];
    if (state.data.typeFilter == TypeFilter.style) {
      listResult
        ..addAll(state.data.listStyleAuditResult)
        ..add(state.data.listStyleAudit
            .firstWhere((element) => element.id == id));
      listTemp
        ..addAll(state.data.listStyleAudit)
        ..removeWhere((element) => element.id == id);
      emit(Loaded(state.data.copyWith(
          listStyleAuditResult: listResult.cast(),
          listStyleAudit: listTemp.cast(),
          isLoading: false)));
    } else {
      listResult
        ..addAll(state.data.listProfileAuditResult)
        ..add(state.data.listProfileAudit
            .firstWhere((element) => element.id == id));
      listTemp
        ..addAll(state.data.listProfileAudit)
        ..removeWhere((element) => element.id == id);
      emit(Loaded(state.data.copyWith(
          listProfileAuditResult: listResult.cast(),
          listProfileAudit: listTemp.cast(),
          isLoading: false)));
    }
  }

  void removeItemFilter(int id) {
    emit(Loading(state.data.copyWith(isLoading: true)));
    final listResult = [];
    final listTemp = [];
    if (state.data.typeFilter == TypeFilter.style) {
      listTemp
        ..addAll(state.data.listStyleAudit)
        ..add(state.data.listStyleAuditResult
            .firstWhere((element) => element.id == id));

      listResult
        ..addAll(state.data.listStyleAuditResult)
        ..removeWhere((element) => element.id == id);

      emit(Loaded(state.data.copyWith(
          listStyleAuditResult: listResult.cast(),
          listStyleAudit: listTemp.cast(),
          isLoading: false)));
    } else {
      listTemp
        ..addAll(state.data.listProfileAudit)
        ..add(state.data.listProfileAuditResult
            .firstWhere((element) => element.id == id));

      listResult
        ..addAll(state.data.listProfileAuditResult)
        ..removeWhere((element) => element.id == id);

      emit(Loaded(state.data.copyWith(
          listProfileAuditResult: listResult.cast(),
          listProfileAudit: listTemp.cast(),
          isLoading: false)));
    }
  }

  void saveData(bool resultBack) {
    if (state.data.typeFilter == TypeFilter.style)
      appPref.setStylesFilter(state.data.listStyleAuditResult);
    else
      appPref.setProfilesFilter(state.data.listProfileAuditResult);
    Get.back(result: resultBack);
  }
}
