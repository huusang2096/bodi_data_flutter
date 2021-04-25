import 'dart:convert';

import 'package:bodidatacms/model/inventory_permission/permission_model.dart';

class GroupData {
  GroupData(
      {this.id, this.name, this.isLoading = false, required this.permissions});

  int? id;
  String? name;
  late bool isLoading;
  List<Permission> permissions;

  factory GroupData.fromRawJson(String str) =>
      GroupData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GroupData.fromJson(Map<String, dynamic> json) => GroupData(
          id: json["id"] == null ? null : json["id"],
          name: json["name"] == null ? null : json["name"],
          isLoading: false,
          permissions: [
            Permission(id: 1, name: 'read_only', isEnabled: false),
            Permission(id: 2, name: 'add_comment', isEnabled: false),
            Permission(id: 3, name: 'update', isEnabled: false),
            Permission(id: 4, name: 'remove', isEnabled: false),
          ]);

  Map<String, dynamic> toJson() =>
      {"id": id == null ? null : id, "name": name == null ? null : name};
}
