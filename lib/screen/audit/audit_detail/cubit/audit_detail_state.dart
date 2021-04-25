part of 'audit_detail_cubit.dart';

@freezed
class AuditDetailData with _$AuditDetailData {
  const factory AuditDetailData(
      {@Default(0) int auditId,
      AuditSessionDetailResponse? auditSessionDetailResponse,
      @Default([]) List<AuditRecordRequest> auditRecordRequests,
      @Default([]) List<Style> listAllStyle,
      @Default([]) List<ProfileModel> listAllProfile,
      @Default([]) List<StyleAudit> listAuditStyle,
      @Default([]) List<ProfileAudit> listAuditProfile,
      @Default(false) bool isLoading}) = DataAuditDetail;
}

// Union
@freezed
class AuditDetailState with _$AuditDetailState {
  const factory AuditDetailState.init(DataAuditDetail data) = Initial;
  const factory AuditDetailState.loaded(DataAuditDetail data) = Loaded;
  const factory AuditDetailState.loading(DataAuditDetail data) = Loading;
  const factory AuditDetailState.error(DataAuditDetail data) = Error;
}
