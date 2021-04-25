// To parse this JSON data, do
//
//     final updatePermissionRequest = updatePermissionRequestFromJson(jsonString);

import 'dart:convert';

class UpdatePermissionRequest {
  UpdatePermissionRequest({
    required this.roles,
  });

  List<Role> roles;

  factory UpdatePermissionRequest.fromRawJson(String str) =>
      UpdatePermissionRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UpdatePermissionRequest.fromJson(Map<String, dynamic> json) =>
      UpdatePermissionRequest(
        roles: List<Role>.from(json["roles"].map((x) => Role.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "roles": List<dynamic>.from(roles.map((x) => x.toJson())),
      };
}

class Role {
  Role({
    required this.groupId,
    required this.permissionId,
    required this.isEnable,
  });

  int groupId;
  int permissionId;
  bool isEnable;

  factory Role.fromRawJson(String str) => Role.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        groupId: json["group_id"] == null ? null : json["group_id"],
        permissionId:
            json["permission_id"] == null ? null : json["permission_id"],
        isEnable: json["is_enable"] == null ? null : json["is_enable"],
      );

  Map<String, dynamic> toJson() => {
        "group_id": groupId,
        "permission_id": permissionId,
        "is_enable": isEnable,
      };
}
