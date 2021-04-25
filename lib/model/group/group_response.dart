// To parse this JSON data, do
//
//     final groupResponse = groupResponseFromJson(jsonString);

import 'dart:convert';

import 'package:bodidatacms/model/group/group_data.dart';

class GroupResponse {
  GroupResponse({
    this.success,
    this.message,
    this.data,
  });

  bool? success;
  String? message;
  GroupData? data;

  GroupResponse copyWith({
    bool? success,
    String? message,
    GroupData? data,
  }) =>
      GroupResponse(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory GroupResponse.fromRawJson(String str) =>
      GroupResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GroupResponse.fromJson(Map<String, dynamic> json) => GroupResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : GroupData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data?.toJson(),
      };
}

