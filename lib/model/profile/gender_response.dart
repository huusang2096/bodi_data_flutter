// To parse this JSON data, do
//
//     final genderResponse = genderResponseFromJson(jsonString);

import 'dart:convert';

import 'package:bodidatacms/model/profile/clothing_preferency.dart';

class GenderResponse {
  GenderResponse({
    required this.success,
    required this.message,
    this.data,
  });

  bool success;
  String message;
  List<ClothingPreferency>? data;

  factory GenderResponse.fromRawJson(String str) =>
      GenderResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GenderResponse.fromJson(Map<String, dynamic> json) => GenderResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<ClothingPreferency>.from(
                json["data"].map((x) => ClothingPreferency.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}
