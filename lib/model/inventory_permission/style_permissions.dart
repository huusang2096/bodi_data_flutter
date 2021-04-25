// To parse this JSON data, do
//
//     final stylePermissions = stylePermissionsFromJson(jsonString);

import 'dart:convert';

import 'package:bodidatacms/model/inventory_permission/permission_model.dart';

class StylePermissions {
  StylePermissions({
    required this.success,
    required this.message,
    this.data,
  });

  bool success;
  String message;
  List<InformationPermission>? data;

  factory StylePermissions.fromRawJson(String str) =>
      StylePermissions.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StylePermissions.fromJson(Map<String, dynamic> json) =>
      StylePermissions(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<InformationPermission>.from(
                json["data"].map((x) => InformationPermission.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class InformationPermission {
  InformationPermission({
    this.id,
    this.name,
    required this.permissions,
  });

  int? id;
  String? name;
  List<Permission> permissions;

  factory InformationPermission.fromRawJson(String str) =>
      InformationPermission.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory InformationPermission.fromJson(Map<String, dynamic> json) =>
      InformationPermission(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        permissions: json["permissions"] == null
            ? []
            : List<Permission>.from(
                json["permissions"].map((x) => Permission.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "permissions": List<dynamic>.from(permissions.map((x) => x.toJson())),
      };
}
