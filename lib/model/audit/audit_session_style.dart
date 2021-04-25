import 'dart:convert';

class StyleAudit {
  StyleAudit({
    this.id,
    this.name,
    this.modelCode,
  });

  int? id;
  String? name;
  String? modelCode;

  factory StyleAudit.fromRawJson(String str) =>
      StyleAudit.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StyleAudit.fromJson(Map<String, dynamic> json) => StyleAudit(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        modelCode: json["model_code"] == null ? null : json["model_code"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "model_code": modelCode == null ? null : modelCode,
      };

  static String encodeList(List<StyleAudit> list) =>
      json.encode(list.map((e) => e.toJson()).toList());

  static List<StyleAudit> decodeList(String listString) =>
      (json.decode(listString) as List)
          .map((e) => StyleAudit.fromJson(e))
          .toList();
}
