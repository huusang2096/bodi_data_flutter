// To parse this JSON data, do
//
//     final categoriesModal = categoriesModalFromJson(jsonString);

import 'dart:convert';

import 'package:bodidatacms/model/inventory/category.dart';

class CategoriesModal {
  CategoriesModal({
    this.success,
    this.message,
    this.data,
  });

  bool? success;
  String? message;
  List<Category>? data;

  factory CategoriesModal.fromRawJson(String str) =>
      CategoriesModal.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CategoriesModal.fromJson(Map<String, dynamic> json) =>
      CategoriesModal(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<Category>.from(
                json["data"].map((x) => Category.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null
            ? null
            : List<Category>.from(data!.map((x) => x.toJson())),
      };
}
