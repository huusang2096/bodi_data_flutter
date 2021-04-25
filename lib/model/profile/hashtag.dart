import 'dart:convert';

class Hashtag {
  Hashtag({
    this.id,
    this.name,
    this.isSelect,
  });

  int? id;
  String? name;
  bool? isSelect;

  factory Hashtag.fromRawJson(String str) => Hashtag.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Hashtag.fromJson(Map<String, dynamic> json) => Hashtag(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        isSelect: false,
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
      };
}
