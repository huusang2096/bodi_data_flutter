// To parse this JSON data, do
//
//     final hipShapeResponse = hipShapeResponseFromJson(jsonString);

import 'dart:convert';

import 'package:bodidatacms/model/profile/hip_shape.dart';

class HipShapeResponse {
  HipShapeResponse({
    required this.success,
    required this.message,
    this.data,
  });

  bool success;
  String message;
  List<HipShape>? data;

  factory HipShapeResponse.fromRawJson(String str) =>
      HipShapeResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HipShapeResponse.fromJson(Map<String, dynamic> json) =>
      HipShapeResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<HipShape>.from(
                json["data"].map((x) => HipShape.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}
