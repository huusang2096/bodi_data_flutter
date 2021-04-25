part of 'audit_cubit.dart';

@freezed
class AuditData with _$AuditData {
  const factory AuditData(
      {@Default(false) isLoading,
      @Default([]) List<AuditSessionData> listAuditSession,
      @Default([]) List<StyleAudit> listStyleAudit,
      @Default([]) List<ProfileAudit> listProfileAudit,
      @Default('') String sessionSearch,
      @Default(true) bool getDataInitial}) = DataAudit;
}

// Union
@freezed
class AuditState with _$AuditState {
  const factory AuditState.init(DataAudit data) = Initial;
  const factory AuditState.loaded(DataAudit data) = Loaded;
  const factory AuditState.loading(DataAudit data) = Loading;
  const factory AuditState.error(DataAudit data) = Error;
}
