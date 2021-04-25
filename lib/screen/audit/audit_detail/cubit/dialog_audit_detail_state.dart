part of 'dialog_audit_detail_cubit.dart';

@freezed
class DialogAuditDetailStateData with _$DialogAuditDetailStateData {
  const factory DialogAuditDetailStateData(
      {@Default(0) int auditId,
      AuditSessionDetailResponse? auditDetailData,
      @Default([]) List<StyleAudit> listAllStyle,
      @Default([]) List<ProfileAudit> listAllProfile,
      @Default([]) List<StyleAudit> listAuditStyle,
      @Default([]) List<ProfileAudit> listAuditProfile,
      @Default(false) bool isLoading}) = DataDialogAuditDetail;
}

@freezed
class DialogAuditDetailState with _$DialogAuditDetailState {
  const factory DialogAuditDetailState.initial(DataDialogAuditDetail data) =
      Initial;
  const factory DialogAuditDetailState.loaded(DataDialogAuditDetail data) =
      Loaded;
  const factory DialogAuditDetailState.loading(DataDialogAuditDetail data) =
      Loading;
  const factory DialogAuditDetailState.error(DataDialogAuditDetail data) =
      Error;
}
