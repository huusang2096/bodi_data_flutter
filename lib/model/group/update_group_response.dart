// To parse this JSON data, do
//
//     final updateGroupResponse = updateGroupResponseFromJson(jsonString);

import 'dart:convert';

import 'package:bodidatacms/model/group/group_data.dart';

class UpdateGroupResponse {
  UpdateGroupResponse({
    this.success,
    this.message,
    this.data,
  });

  bool? success;
  String? message;
  GroupData? data;

  factory UpdateGroupResponse.fromRawJson(String str) =>
      UpdateGroupResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UpdateGroupResponse.fromJson(Map<String, dynamic> json) =>
      UpdateGroupResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : GroupData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data!.toJson(),
      };
}
