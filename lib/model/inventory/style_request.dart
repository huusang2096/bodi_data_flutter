// To parse this JSON data, do
//
//     final styleRequest = styleRequestFromJson(jsonString);

import 'dart:convert';

import 'package:bodidatacms/model/inventory/size_option.dart';
import 'package:bodidatacms/model/inventory/sttyle_model.dart';

class StyleRequest {
  StyleRequest({
    this.styleName,
    this.modelCode,
    this.numberAuditRecords,
    this.sizeOptions,
    this.categoryId,
    this.brand,
    this.season,
    this.year,
    this.genderId,
    this.garmentDetails,
  });

  String? styleName;
  String? modelCode;
  int? numberAuditRecords;
  List<SizeOption>? sizeOptions;
  int? categoryId;
  String? brand;
  String? season;
  int? year;
  int? genderId;
  GarmentDetails? garmentDetails;

  StyleRequest copyWith({required Style styleDetails}) => StyleRequest(
        styleName: styleDetails.styleName ?? this.styleName,
        modelCode: styleDetails.modelCode ?? this.modelCode,
        numberAuditRecords:
            styleDetails.numberAuditRecords ?? this.numberAuditRecords,
        sizeOptions: styleDetails.sizeOptions ?? this.sizeOptions,
        categoryId: styleDetails.category!.id ?? this.categoryId,
        brand: styleDetails.brand ?? this.brand,
        season: styleDetails.season ?? this.season,
        year: styleDetails.year ?? this.year,
        genderId: styleDetails.gender!.id ?? this.genderId,
        garmentDetails: styleDetails.garmentDetails ?? this.garmentDetails,
      );

  factory StyleRequest.fromRawJson(String str) =>
      StyleRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StyleRequest.fromJson(Map<String, dynamic> json) => StyleRequest(
        styleName: json["style_name"] == null ? null : json["style_name"],
        modelCode: json["model_code"] == null ? null : json["model_code"],
        numberAuditRecords: json["number_audit_records"] == null
            ? null
            : json["number_audit_records"],
        sizeOptions: json["size_options"] == null
            ? null
            : List<SizeOption>.from(
                json["size_options"].map((x) => SizeOption.fromJson(x))),
        categoryId: json["category_id"] == null ? null : json["category_id"],
        brand: json["brand"] == null ? null : json["brand"],
        season: json["season"] == null ? null : json["season"],
        year: json["year"] == null ? null : json["year"],
        genderId: json["gender_id"] == null ? null : json["gender_id"],
        garmentDetails: json["garment_details"] == null
            ? null
            : GarmentDetails.fromJson(json["garment_details"]),
      );

  Map<String, dynamic> toJson() => {
        "style_name": styleName == null ? null : styleName,
        "model_code": modelCode == null ? null : modelCode,
        "number_audit_records":
            numberAuditRecords == null ? null : numberAuditRecords,
        "size_options": sizeOptions == null
            ? null
            : List<dynamic>.from(sizeOptions!.map((x) => x.toJson())),
        "category_id": categoryId == null ? null : categoryId,
        "brand": brand == null ? null : brand,
        "season": season == null ? null : season,
        "year": year == null ? null : year,
        "gender_id": genderId == null ? null : genderId,
        "garment_details":
            garmentDetails == null ? null : garmentDetails!.toJson(),
      };
}

class GarmentDetails {
  GarmentDetails({
    this.fabricWeight,
    this.contents,
    this.patterning,
    this.fixFunctionAndAppearance,
  });

  FabricWeight? fabricWeight;
  List<Content>? contents;
  Patterning? patterning;
  FixFunctionAndAppearance? fixFunctionAndAppearance;

  factory GarmentDetails.fromRawJson(String str) =>
      GarmentDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GarmentDetails.fromJson(Map<String, dynamic> json) => GarmentDetails(
        fabricWeight: json["fabric_weight"] == null
            ? null
            : FabricWeight.fromJson(json["fabric_weight"]),
        contents: json["contents"] == null
            ? null
            : List<Content>.from(
                json["contents"].map((x) => Content.fromJson(x))),
        patterning: json["patterning"] == null
            ? null
            : Patterning.fromJson(json["patterning"]),
        fixFunctionAndAppearance: json["fix_function_and_appearance"] == null
            ? null
            : FixFunctionAndAppearance.fromJson(
                json["fix_function_and_appearance"]),
      );

  Map<String, dynamic> toJson() => {
        "fabric_weight": fabricWeight == null ? null : fabricWeight!.toJson(),
        "contents": contents == null
            ? null
            : List<dynamic>.from(contents!.map((x) => x.toJson())),
        "patterning": patterning == null ? null : patterning!.toJson(),
        "fix_function_and_appearance": fixFunctionAndAppearance == null
            ? null
            : fixFunctionAndAppearance!.toJson(),
      };
}

class Content {
  Content({
    this.title,
    this.content,
    this.percentage,
  });

  String? title;
  String? content;
  String? percentage;

  factory Content.fromRawJson(String str) => Content.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        title: json["title"] == null ? "" : json["title"],
        content: json["content"] == null ? "" : json["content"],
        percentage: json["percentage"] == null ? "" : json["percentage"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? "" : title,
        "content": content == null ? "" : content,
        "percentage": percentage == null ? "" : percentage,
      };

  List<Content> getListContents() {
    List<Content> listContents = [];
    listContents.add(
        new Content(content: '', percentage: '', title: 'Fabric content 1'));
    listContents.add(
        new Content(content: '', percentage: '', title: 'Fabric content 2'));
    listContents.add(
        new Content(content: '', percentage: '', title: 'Fabric content 3'));
    return listContents;
  }
}

class FabricWeight {
  FabricWeight({
    this.name,
    this.gsm,
  });

  String? name;
  int? gsm;

  factory FabricWeight.fromRawJson(String str) =>
      FabricWeight.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FabricWeight.fromJson(Map<String, dynamic> json) => FabricWeight(
        name: json["name"] == null ? null : json["name"],
        gsm: json["gsm"] == null ? 0 : json["gsm"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "gsm": gsm == null ? 0 : gsm,
      };
}

class FixFunctionAndAppearance {
  FixFunctionAndAppearance({
    this.content,
  });

  String? content;

  factory FixFunctionAndAppearance.fromRawJson(String str) =>
      FixFunctionAndAppearance.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FixFunctionAndAppearance.fromJson(Map<String, dynamic> json) =>
      FixFunctionAndAppearance(
        content: json["content"] == null ? "" : json["content"],
      );

  Map<String, dynamic> toJson() => {
        "content": content == null ? "" : content,
      };
}

class Patterning {
  Patterning({
    this.content,
  });

  String? content;

  factory Patterning.fromRawJson(String str) =>
      Patterning.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Patterning.fromJson(Map<String, dynamic> json) => Patterning(
        content: json["content"] == null ? "" : json["content"],
      );

  Map<String, dynamic> toJson() => {
        "content": content == null ? "" : content,
      };
}
