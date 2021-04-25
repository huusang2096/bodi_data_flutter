import 'dart:convert';

class Measurement {
  Measurement({
    this.title,
    required this.contents,
  });

  String? title;
  List<String> contents = [];

  factory Measurement.fromRawJson(String str) =>
      Measurement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Measurement.fromJson(Map<String, dynamic> json) => Measurement(
        title: json["title"] == null ? '' : json["title"],
        contents: json["contents"] =
            List<String>.from(json["contents"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? '' : title,
        "contents": List<dynamic>.from(contents.map((x) => x)),
      };
}
