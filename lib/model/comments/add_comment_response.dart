// To parse this JSON data, do
//
//     final addCommentResponse = addCommentResponseFromJson(jsonString);

import 'dart:convert';

import 'package:bodidatacms/model/comments/comment.dart';

class AddCommentResponse {
  AddCommentResponse({
    this.success,
    this.message,
    this.data,
  });

  bool? success;
  String? message;
  Comments? data;

  factory AddCommentResponse.fromRawJson(String str) =>
      AddCommentResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddCommentResponse.fromJson(Map<String, dynamic> json) =>
      AddCommentResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : Comments.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data!.toJson(),
      };
}
