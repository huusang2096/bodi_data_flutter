// To parse this JSON data, do
//
//     final commentResponse = commentResponseFromJson(jsonString);

import 'dart:convert';

import 'package:bodidatacms/model/pagination/pagination.dart';
import 'package:bodidatacms/model/comments/comment.dart';

class CommentResponse {
  CommentResponse({
    this.success,
    this.message,
    this.data,
    this.pagination,
  });

  bool? success;
  String? message;
  List<Comments>? data;
  Pagination? pagination;

  factory CommentResponse.fromRawJson(String str) =>
      CommentResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CommentResponse.fromJson(Map<String, dynamic> json) =>
      CommentResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<Comments>.from(
                json["data"].map((x) => Comments.fromJson(x))),
        pagination: json["pagination"] == null
            ? null
            : Pagination.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "pagination": pagination == null ? null : pagination!.toJson(),
      };
}
