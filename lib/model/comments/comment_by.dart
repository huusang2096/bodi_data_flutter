import 'dart:convert';

class CommentBy {
  CommentBy({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory CommentBy.fromRawJson(String str) =>
      CommentBy.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CommentBy.fromJson(Map<String, dynamic> json) => CommentBy(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
      };
}
