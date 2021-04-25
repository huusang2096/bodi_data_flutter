import 'dart:convert';

class HipShape {
  HipShape({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory HipShape.fromRawJson(String str) =>
      HipShape.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HipShape.fromJson(Map<String, dynamic> json) => HipShape(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
      };
}
