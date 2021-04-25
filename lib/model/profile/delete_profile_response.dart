// To parse this JSON data, do
//
//     final deleteProfileResponse = deleteProfileResponseFromJson(jsonString);

import 'dart:convert';

class DeleteProfileResponse {
  DeleteProfileResponse({
    this.success,
    this.message,
    this.data,
  });

  bool? success;
  String? message;
  List<dynamic>? data;

  factory DeleteProfileResponse.fromRawJson(String str) =>
      DeleteProfileResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DeleteProfileResponse.fromJson(Map<String, dynamic> json) =>
      DeleteProfileResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<dynamic>.from(json["data"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : List<dynamic>.from(data!.map((x) => x)),
      };
}
