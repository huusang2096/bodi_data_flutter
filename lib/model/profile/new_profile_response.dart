// To parse this JSON data, do
//
//     final newProfileResponse = newProfileResponseFromJson(jsonString);

import 'dart:convert';

class NewProfileResponse {
  NewProfileResponse({
    required this.success,
    required this.message,
  });

  bool success;
  String message;

  factory NewProfileResponse.fromRawJson(String str) =>
      NewProfileResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NewProfileResponse.fromJson(Map<String, dynamic> json) =>
      NewProfileResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
      };
}
