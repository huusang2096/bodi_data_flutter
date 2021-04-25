import 'dart:convert';

class Permission {
  Permission({
    this.id,
    this.name,
    this.isEnabled,
  });

  int? id;
  String? name;
  bool? isEnabled;

  factory Permission.fromRawJson(String str) =>
      Permission.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Permission.fromJson(Map<String, dynamic> json) => Permission(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        isEnabled: json["is_enabled"] == null ? null : json["is_enabled"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "is_enabled": isEnabled == null ? null : isEnabled,
      };
}
