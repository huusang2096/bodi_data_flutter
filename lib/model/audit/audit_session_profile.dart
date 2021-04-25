import 'dart:convert';

class ProfileAudit {
  ProfileAudit({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory ProfileAudit.fromRawJson(String str) =>
      ProfileAudit.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProfileAudit.fromJson(Map<String, dynamic> json) => ProfileAudit(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
      };

  static String encodeList(List<ProfileAudit> list) =>
      json.encode(list.map((e) => e.toJson()).toList());

  static List<ProfileAudit> decodeList(String listString) =>
      (json.decode(listString) as List)
          .map((e) => ProfileAudit.fromJson(e))
          .toList();
}
