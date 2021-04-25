import 'dart:convert';

class AuditSessionRecordRequest {
  AuditSessionRecordRequest(
      {this.name,
      this.styles,
      this.profiles,
      this.auditRecords,
      this.nameProfile});
  String? nameProfile;
  String? name;
  List<int?>? styles;
  List<int?>? profiles;
  List<AuditRecordRequest>? auditRecords;

  AuditSessionRecordRequest copyWith({
    String? name,
    List<int>? styles,
    List<int>? profiles,
    List<AuditRecordRequest>? auditRecords,
  }) =>
      AuditSessionRecordRequest(
        name: name ?? this.name,
        styles: styles ?? this.styles,
        profiles: profiles ?? this.profiles,
        auditRecords: auditRecords ?? this.auditRecords,
      );

  String toRawJson() => json.encode(toJson());

  Map<String, dynamic> toJson() => {
        "name": name,
        "styles": List<dynamic>.from(styles!.map((x) => x)),
        "profiles": List<dynamic>.from(profiles!.map((x) => x)),
        "audit_records":
            List<dynamic>.from(auditRecords!.map((x) => x.toJson())),
      };
}

class AuditRecordRequest {
  AuditRecordRequest(
      {this.styleId,
      this.profileId,
      this.subCategories,
      this.measurementSizes,
      this.bestSize});

  int? styleId;
  int? profileId;
  List<int?>? subCategories;
  List<MeasurementSizeRequest>? measurementSizes;
  List<String>? bestSize;

  AuditRecordRequest copyWith(
          {int? styleId,
          int? profileId,
          List<int>? subCategories,
          List<MeasurementSizeRequest>? measurementSizes,
          List<String>? bestSize,
          String? nameProfile}) =>
      AuditRecordRequest(
          styleId: styleId ?? this.styleId,
          profileId: profileId ?? this.profileId,
          subCategories: subCategories ?? this.subCategories,
          measurementSizes: measurementSizes ?? this.measurementSizes,
          bestSize: bestSize ?? this.bestSize);

  String toRawJson() => json.encode(toJson());

  Map<String, dynamic> toJson() => {
        "style_id": styleId,
        "profile_id": profileId,
        "sub_categories": List<dynamic>.from(subCategories!.map((x) => x)),
        "measurement_sizes":
            List<dynamic>.from(measurementSizes!.map((x) => x.toJson())),
        "best_size": bestSize == null
            ? null
            : List<dynamic>.from(bestSize!.map((x) => x)),
      };
}

class MeasurementSizeRequest {
  MeasurementSizeRequest({
    this.size,
    this.subCategoryId,
    this.overallFit,
    this.detailed,
    this.idSelectOverallfitDropdown = 1,
    this.idSelectDetailedDropdown = -1,
    this.idDataDropdownOverAndDetail = 1,
  });

  List<String>? size;
  int? subCategoryId;
  String? overallFit;
  String? detailed;
  int idSelectOverallfitDropdown;
  int idSelectDetailedDropdown;
  int idDataDropdownOverAndDetail;
  MeasurementSizeRequest copyWith({
    List<String>? size,
    int? subCategoryId,
    String? overallFit,
    String? detailed,
  }) =>
      MeasurementSizeRequest(
        size: size ?? this.size,
        subCategoryId: subCategoryId ?? this.subCategoryId,
        overallFit: overallFit ?? this.overallFit,
        detailed: detailed ?? this.detailed,
      );

  String toRawJson() => json.encode(toJson());

  Map<String, dynamic> toJson() => {
        "size": List<dynamic>.from(size!.map((x) => x)),
        "sub_category_id": subCategoryId,
        "overall_fit": overallFit,
        "detailed": detailed,
      };
}
