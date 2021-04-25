part of 'audit_record_cubit.dart';

@freezed
class AuditRecordData with _$AuditRecordData {
  const factory AuditRecordData(
      {@Default(false) bool isLoading,
      @Default(false) bool showComment,
      @Default(-1) int idSession,
      @Default(-1) int idStyle,
      @Default(-1) int idProfile,
      @Default([]) List<DropdownSubCategorieModel> listDropDownSub,
      Style? styleResponse,
      @Default([]) List<String> listTitleTable,
      @Default('') String selectedTitleTable,
      AuditSessionRecordRequest? auditSessionRecordRequest}) = DataAuditRecord;
}

// Union
@freezed
class AuditRecordState with _$AuditRecordState {
  const factory AuditRecordState.init(DataAuditRecord data) = Initial;
  const factory AuditRecordState.loaded(DataAuditRecord data) = Loaded;
  const factory AuditRecordState.loading(DataAuditRecord data) = Loading;
  const factory AuditRecordState.error(DataAuditRecord data) = Error;
}
