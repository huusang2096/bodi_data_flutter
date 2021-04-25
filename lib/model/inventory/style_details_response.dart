// To parse this JSON data, do
//
//     final styleDetailResponse = styleDetailResponseFromJson(jsonString);

import 'dart:convert';

import 'package:bodidatacms/model/inventory/sttyle_model.dart';

class StyleDetailResponse {
  StyleDetailResponse({
    required this.success,
    required this.message,
    this.data,
  });

  bool success;
  String message;
  Style? data;

  factory StyleDetailResponse.fromRawJson(String str) =>
      StyleDetailResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StyleDetailResponse.fromJson(Map<String, dynamic> json) =>
      StyleDetailResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : Style.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data == null ? null : data!.toJson(),
      };
}
