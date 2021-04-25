// To parse this JSON data, do
//
//     final overallFit = overallFitFromJson(jsonString);

import 'dart:convert';

class DataDropdownOverAndDetail {
  DataDropdownOverAndDetail(
      {required this.listDetailed, required this.overallFit});
  OverallFit overallFit;
  List<Detailed> listDetailed;
}

class OverallFit {
  OverallFit({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory OverallFit.fromRawJson(String str) =>
      OverallFit.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OverallFit.fromJson(Map<String, dynamic> json) => OverallFit(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class Detailed {
  Detailed({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory Detailed.fromRawJson(String str) =>
      Detailed.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Detailed.fromJson(Map<String, dynamic> json) => Detailed(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
