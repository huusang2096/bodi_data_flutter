part of 'create_audit_session_cubit.dart';

@freezed
class DialogCreateSessionStateData with _$DialogCreateSessionStateData {
  const factory DialogCreateSessionStateData(
      {@Default(0) int auditId,
      AuditSessionDetailResponse? auditDetailData,
      @Default([]) List<StyleAudit> listAllStyle,
      @Default([]) List<ProfileAudit> listAllProfile,
      @Default([]) List<StyleAudit> listAuditStyle,
      @Default([]) List<ProfileAudit> listAuditProfile,
      @Default(false) bool isLoading}) = DataDialogCreateSessionAudit;
}

@freezed
class DialogCreateAuditSessionState with _$DialogCreateAuditSessionState {
  const factory DialogCreateAuditSessionState.initial(
      DataDialogCreateSessionAudit data) = Initial;
  const factory DialogCreateAuditSessionState.loaded(
      DataDialogCreateSessionAudit data) = Loaded;
  const factory DialogCreateAuditSessionState.loading(
      DataDialogCreateSessionAudit data) = Loading;
  const factory DialogCreateAuditSessionState.error(
      DataDialogCreateSessionAudit data) = Error;
}
