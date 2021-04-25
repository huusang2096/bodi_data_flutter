// To parse this JSON data, do
//
//     final auditSessionResponse = auditSessionResponseFromJson(jsonString);

import 'dart:convert';

import 'package:bodidatacms/model/audit/audit_session_profile.dart';

import 'audit_session_style.dart';

class AuditSessionResponse {
  AuditSessionResponse({
    required this.success,
    required this.message,
    this.data,
  });

  bool success;
  String message;
  List<AuditSessionData>? data;

  factory AuditSessionResponse.fromRawJson(String str) =>
      AuditSessionResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AuditSessionResponse.fromJson(Map<String, dynamic> json) =>
      AuditSessionResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<AuditSessionData>.from(
                json["data"].map((x) => AuditSessionData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class AuditSessionData {
  AuditSessionData(
      {this.id,
      this.name,
      this.styles,
      this.profiles,
      this.isShowMoreStyle = true});

  int? id;
  String? name;
  List<StyleAudit>? styles;
  List<ProfileAudit>? profiles;
  bool isShowMoreStyle;
  factory AuditSessionData.fromRawJson(String str) =>
      AuditSessionData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AuditSessionData.fromJson(Map<String, dynamic> json) =>
      AuditSessionData(
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
      };
}
