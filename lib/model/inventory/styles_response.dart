// To parse this JSON data, do
//
//     final stylesResponse = stylesResponseFromJson(jsonString);

import 'dart:convert';

import 'package:bodidatacms/model/inventory/sttyle_model.dart';
import 'package:bodidatacms/model/pagination/pagination.dart';

class StylesResponse {
  StylesResponse({
    this.success,
    this.message,
    this.data,
    this.pagination,
  });

  bool? success;
  String? message;
  List<Style>? data;
  Pagination? pagination;

  factory StylesResponse.fromRawJson(String str) =>
      StylesResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StylesResponse.fromJson(Map<String, dynamic> json) => StylesResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<Style>.from(json["data"].map((x) => Style.fromJson(x))),
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
