// To parse this JSON data, do
//
//     final baseResponse = baseResponseFromJson(jsonString);

import 'dart:convert';

class BaseResponse {
  BaseResponse(
      {required this.success,
      this.errorCode,
      required this.message,
      this.error});

  bool success;
  bool? error;
  String? errorCode;
  String message;

  factory BaseResponse.fromRawJson(String str) =>
      BaseResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BaseResponse.fromJson(Map<String, dynamic> json) => BaseResponse(
        success: json["success"] == null ? null : json["success"],
        errorCode: json["error_code"] == null ? null : json["error_code"],
        error: json["error"] == null ? null : json["error"],
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "error_code": errorCode,
        "error": error,
        "message": message,
      };
}
