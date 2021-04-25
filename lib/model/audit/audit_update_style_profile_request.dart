// To parse this JSON data, do
//
//     final auditUpdateStyleProfileRequest = auditUpdateStyleProfileRequestFromJson(jsonString);

import 'dart:convert';

class AuditUpdateStyleProfileRequest {
  AuditUpdateStyleProfileRequest({
    this.name,
    this.styles,
    this.profiles,
  });

  String? name;
  List<int>? styles;
  List<int>? profiles;

  factory AuditUpdateStyleProfileRequest.fromRawJson(String str) =>
      AuditUpdateStyleProfileRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AuditUpdateStyleProfileRequest.fromJson(Map<String, dynamic> json) =>
      AuditUpdateStyleProfileRequest(
        name: json["name"] == null ? null : json["name"],
        styles: json["styles"] == null
            ? null
            : List<int>.from(json["styles"].map((x) => x)),
        profiles: json["profiles"] == null
            ? null
            : List<int>.from(json["profiles"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "styles":
            styles == null ? null : List<dynamic>.from(styles!.map((x) => x)),
        "profiles": profiles == null
            ? null
            : List<dynamic>.from(profiles!.map((x) => x)),
      };
}
