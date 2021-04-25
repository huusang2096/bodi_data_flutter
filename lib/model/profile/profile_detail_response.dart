// To parse this JSON data, do
//
//     final profileDetailResponse = profileDetailResponseFromJson(jsonString);

import 'dart:convert';

import 'package:bodidatacms/model/profile/profile_response.dart';

class ProfileDetailResponse {
  ProfileDetailResponse({
    required this.success,
    required this.message,
    this.data,
  });

  bool success;
  String message;
  ProfileModel? data;

  factory ProfileDetailResponse.fromRawJson(String str) =>
      ProfileDetailResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProfileDetailResponse.fromJson(Map<String, dynamic> json) =>
      ProfileDetailResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : ProfileModel.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data == null ? null : data!.toJson(),
      };
}
