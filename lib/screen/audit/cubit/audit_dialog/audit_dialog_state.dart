part of 'audit_dialog_cubit.dart';

@freezed
class AuditDialogStateData with _$AuditDialogStateData {
  const factory AuditDialogStateData(
      {@Default(false) bool isLoading,
      @Default([]) List<StyleAudit> listStyleAudit,
      @Default([]) List<StyleAudit> listStyleAuditResult,
      @Default([]) List<ProfileAudit> listProfileAudit,
      @Default([]) List<ProfileAudit> listProfileAuditResult,
      @Default(TypeFilter.style) TypeFilter typeFilter}) = DataAuditDialog;
}

@freezed
class AuditDialogState with _$AuditDialogState {
  const factory AuditDialogState.init(DataAuditDialog data) = Initial;
  const factory AuditDialogState.loaded(DataAuditDialog data) = Loaded;
  const factory AuditDialogState.loading(DataAuditDialog data) = Loading;
  const factory AuditDialogState.error(DataAuditDialog data) = Error;
}
