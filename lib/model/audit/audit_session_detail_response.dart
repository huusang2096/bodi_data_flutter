import 'dart:convert';

import 'package:bodidatacms/model/audit/audit_session_profile.dart';
import 'package:bodidatacms/model/audit/audit_session_style.dart';

class AuditSessionDetailResponse {
  AuditSessionDetailResponse({
    required this.success,
    required this.message,
    this.data,
  });

  bool success;
  String message;
  DataAuditDetails? data;

  factory AuditSessionDetailResponse.fromRawJson(String str) =>
      AuditSessionDetailResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AuditSessionDetailResponse.fromJson(Map<String, dynamic> json) =>
      AuditSessionDetailResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : DataAuditDetails.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data == null ? null : data!.toJson(),
      };
}

class DataAuditDetails {
  DataAuditDetails({
    this.id,
    this.name,
    this.styles,
    this.profiles,
    this.auditRecords,
  });

  int? id;
  String? name;
  List<StyleAudit>? styles;
  List<ProfileAudit>? profiles;
  List<AuditRecord>? auditRecords;

  factory DataAuditDetails.fromRawJson(String str) =>
      DataAuditDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DataAuditDetails.fromJson(Map<String, dynamic> json) =>
      DataAuditDetails(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        styles: json["styles"] == null
            ? []
            : List<StyleAudit>.from(
                json["styles"].map((x) => StyleAudit.fromJson(x))),
        profiles: json["profiles"] == null
            ? []
            : List<ProfileAudit>.from(
                json["profiles"].map((x) => ProfileAudit.fromJson(x))),
        auditRecords: json["audit_records"] == null
            ? []
            : List<AuditRecord>.from(
                json["audit_records"].map((x) => AuditRecord.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "styles": styles == null
            ? null
            : List<dynamic>.from(styles!.map((x) => x.toJson())),
        "profiles": profiles == null
            ? null
            : List<dynamic>.from(profiles!.map((x) => x.toJson())),
        "audit_records": auditRecords == null
            ? null
            : List<dynamic>.from(auditRecords!.map((x) => x.toJson())),
      };
}

class AuditRecord {
  AuditRecord({
    this.id,
    this.style,
    this.profile,
    this.subCategories,
    this.measurementSizes,
    this.bestSize,
  });

  int? id;
  StyleAudit? style;
  ProfileAudit? profile;
  List<ProfileAudit>? subCategories;
  List<MeasurementSize>? measurementSizes;
  List<String>? bestSize;

  factory AuditRecord.fromRawJson(String str) =>
      AuditRecord.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AuditRecord.fromJson(Map<String, dynamic> json) => AuditRecord(
        id: json["id"] == null ? null : json["id"],
        style:
            json["style"] == null ? null : StyleAudit.fromJson(json["style"]),
        profile: json["profile"] == null
            ? null
            : ProfileAudit.fromJson(json["profile"]),
        subCategories: json["sub_categories"] == null
            ? []
            : List<ProfileAudit>.from(
                json["sub_categories"].map((x) => ProfileAudit.fromJson(x))),
        measurementSizes: json["measurement_sizes"] == null
            ? []
            : List<MeasurementSize>.from(json["measurement_sizes"]
                .map((x) => MeasurementSize.fromJson(x))),
        bestSize: json["best_size"] == null
            ? []
            : List<String>.from(json["best_size"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "style": style == null ? null : style!.toJson(),
        "profile": profile == null ? null : profile!.toJson(),
        "sub_categories": subCategories == null
            ? null
            : List<dynamic>.from(subCategories!.map((x) => x.toJson())),
        "measurement_sizes": measurementSizes == null
            ? null
            : List<dynamic>.from(measurementSizes!.map((x) => x.toJson())),
        "best_size": List<dynamic>.from(bestSize!.map((x) => x)),
      };
}

class MeasurementSize {
  MeasurementSize({
    this.id,
    this.size,
    this.subCategory,
    this.overallFit,
    this.detailed,
  });

  int? id;
  List<String>? size;
  ProfileAudit? subCategory;
  String? overallFit;
  String? detailed;

  factory MeasurementSize.fromRawJson(String str) =>
      MeasurementSize.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MeasurementSize.fromJson(Map<String, dynamic> json) =>
      MeasurementSize(
        id: json["id"] == null ? null : json["id"],
        size: json["size"] == null
            ? null
            : List<String>.from(json["size"].map((x) => x)),
        subCategory: json["sub_category"] == null
            ? null
            : ProfileAudit.fromJson(json["sub_category"]),
        overallFit: json["overall_fit"] == null ? null : json["overall_fit"],
        detailed: json["detailed"] == null ? null : json["detailed"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "size": size == null ? null : List<dynamic>.from(size!.map((x) => x)),
        "sub_category": subCategory == null ? null : subCategory!.toJson(),
        "overall_fit": overallFit == null ? null : overallFit,
        "detailed": detailed == null ? null : detailed,
      };
}
