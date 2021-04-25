import 'dart:convert';

import 'package:bodidatacms/model/group/group_data.dart';

class AllGroupResponse {
  AllGroupResponse({
    this.success,
    this.message,
    this.data,
  });

  bool? success;
  String? message;
  List<GroupData>? data;

  AllGroupResponse copyWith({
    bool? success,
    String? message,
    List<GroupData>? data,
  }) =>
      AllGroupResponse(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory AllGroupResponse.fromRawJson(String str) =>
      AllGroupResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AllGroupResponse.fromJson(Map<String, dynamic> json) =>
      AllGroupResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<GroupData>.from(
                json["data"].map((x) => GroupData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}
