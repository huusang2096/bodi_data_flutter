import 'dart:convert';

class ClothingPreferency {
  ClothingPreferency({
    this.id,
    this.name,
    required this.isSelect,
  });

  int? id;
  String? name;
  bool isSelect;

  factory ClothingPreferency.fromRawJson(String str) =>
      ClothingPreferency.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ClothingPreferency.fromJson(Map<String, dynamic> json) =>
      ClothingPreferency(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        isSelect: false,
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
      };
}
