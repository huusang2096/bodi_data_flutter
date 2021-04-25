import 'dart:convert';

import 'package:bodidatacms/model/inventory/category.dart';
import 'package:bodidatacms/model/inventory/size_option.dart';
import 'package:bodidatacms/model/inventory/style_request.dart';
import 'package:bodidatacms/model/profile/clothing_preferency.dart';

class Style {
  Style({
    this.id,
    this.styleName,
    this.modelCode,
    this.numberAuditRecords,
    this.sizeOptions,
    this.category,
    this.brand,
    this.createdBy,
    this.season,
    this.year,
    this.gender,
    this.garmentDetails,
  });

  int? id;
  String? styleName;
  String? modelCode;
  int? numberAuditRecords;
  List<SizeOption>? sizeOptions;
  Category? category;
  String? brand;
  dynamic? createdBy;
  String? season;
  int? year;
  ClothingPreferency? gender;
  GarmentDetails? garmentDetails;

  factory Style.fromRawJson(String str) => Style.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Style.fromJson(Map<String, dynamic> json) => Style(
        id: json["id"] == null ? null : json["id"],
        styleName: json["style_name"] == null ? null : json["style_name"],
        modelCode: json["model_code"] == null ? null : json["model_code"],
        numberAuditRecords: json["number_audit_records"] == null
            ? 0
            : json["number_audit_records"],
        sizeOptions: json["size_options"] == null
            ? []
            : List<SizeOption>.from(
                json["size_options"].map((x) => SizeOption.fromJson(x))),
        category: json["category"] == null
            ? Category()
            : Category.fromJson(json["category"]),
        brand: json["brand"] == null ? null : json["brand"],
        createdBy: json["created_by"],
        season: json["season"] == null ? null : json["season"],
        year: json["year"] == null ? null : json["year"],
        gender: json["gender"] == null
            ? null
            : ClothingPreferency.fromJson(json["gender"]),
        garmentDetails: json["garment_details"] == null
            ? null
            : GarmentDetails.fromJson(json["garment_details"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "style_name": styleName == null ? null : styleName,
        "model_code": modelCode == null ? null : modelCode,
        "number_audit_records":
            numberAuditRecords == null ? 0 : numberAuditRecords,
        "size_options": sizeOptions == null
            ? null
            : List<dynamic>.from(sizeOptions!.map((x) => x.toJson())),
        "category": category == null ? null : category!.toJson(),
        "brand": brand == null ? null : brand,
        "created_by": createdBy,
        "season": season == null ? null : season,
        "year": year == null ? null : year,
        "gender": gender == null ? null : gender!.toJson(),
        "garment_details":
            garmentDetails == null ? null : garmentDetails!.toJson(),
      };
}
