// To parse this JSON data, do
//
//     final profileResponse = profileResponseFromJson(jsonString);

import 'dart:convert';

import 'package:bodidatacms/model/pagination/pagination.dart';
import 'package:bodidatacms/model/profile/clothing_preferency.dart';
import 'package:bodidatacms/model/profile/hip_shape.dart';

class ProfileResponse {
  ProfileResponse({
    this.success,
    this.message,
    this.list,
    this.pagination,
  });

  bool? success;
  String? message;
  List<ProfileModel>? list;
  Pagination? pagination;

  factory ProfileResponse.fromRawJson(String str) =>
      ProfileResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      ProfileResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        list: json["data"] == null
            ? []
            : List<ProfileModel>.from(
                json["data"].map((x) => ProfileModel.fromJson(x))),
        pagination: json["pagination"] == null
            ? null
            : Pagination.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": list == null
            ? null
            : List<dynamic>.from(list!.map((x) => x.toJson())),
        "pagination": pagination == null ? null : pagination!.toJson(),
      };
}

class ProfileModel {
  ProfileModel({
    this.id,
    this.name,
    this.clothingPreferency,
    this.yearOfBirth,
    this.hashtags,
    this.weight,
    this.height,
    this.chest,
    this.naturalWaist,
    this.waist,
    this.seat,
    this.hip,
    this.inseam,
    this.neck,
    this.centerBack,
    this.shoulder,
    this.armLength,
    this.sleeveLength,
    this.shirtLength,
    this.bicep,
    this.outseam,
    this.hipshape,
    this.highHip,
    this.metric,
  });

  int? id;
  String? name;
  ClothingPreferency? clothingPreferency;
  int? yearOfBirth;
  String? hashtags;
  int? weight;
  int? height;
  int? chest;
  int? naturalWaist;
  int? waist;
  int? seat;
  int? hip;
  int? inseam;
  int? neck;
  int? centerBack;
  int? shoulder;
  int? armLength;
  int? sleeveLength;
  int? shirtLength;
  int? bicep;
  int? outseam;
  HipShape? hipshape;
  int? highHip;
  int? metric;

  factory ProfileModel.fromRawJson(String str) =>
      ProfileModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        clothingPreferency: json["clothing_preferency"] == null
            ? null
            : ClothingPreferency.fromJson(json["clothing_preferency"]),
        yearOfBirth:
            json["year_of_birth"] == null ? null : json["year_of_birth"],
        hashtags: json["hashtags"] == null ? null : json["hashtags"],
        weight: json["weight"] == null ? null : json["weight"],
        height: json["height"] == null ? null : json["height"],
        chest: json["chest"] == null ? null : json["chest"],
        naturalWaist:
            json["natural_waist"] == null ? null : json["natural_waist"],
        waist: json["waist"] == null ? null : json["waist"],
        seat: json["seat"] == null ? null : json["seat"],
        hip: json["hip"] == null ? null : json["hip"],
        inseam: json["inseam"] == null ? null : json["inseam"],
        neck: json["neck"] == null ? null : json["neck"],
        centerBack: json["center_back"] == null ? null : json["center_back"],
        shoulder: json["shoulder"] == null ? null : json["shoulder"],
        armLength: json["arm_length"] == null ? null : json["arm_length"],
        sleeveLength:
            json["sleeve_length"] == null ? null : json["sleeve_length"],
        shirtLength: json["shirt_length"] == null ? null : json["shirt_length"],
        bicep: json["bicep"] == null ? null : json["bicep"],
        outseam: json["outseam"] == null ? null : json["outseam"],
        hipshape: json["hipshape"] == null
            ? null
            : HipShape.fromJson(json["hipshape"]),
        highHip: json["high_hip"] == null ? null : json["high_hip"],
        metric: json["metric"] == null ? null : json["metric"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "clothing_preferency":
            clothingPreferency == null ? null : clothingPreferency!.toJson(),
        "year_of_birth": yearOfBirth == null ? null : yearOfBirth,
        "hashtags": hashtags == null ? null : hashtags,
        "weight": weight == null ? null : weight,
        "height": height == null ? null : height,
        "chest": chest == null ? null : chest,
        "natural_waist": naturalWaist == null ? null : naturalWaist,
        "waist": waist == null ? null : waist,
        "seat": seat == null ? null : seat,
        "hip": hip == null ? null : hip,
        "inseam": inseam == null ? null : inseam,
        "neck": neck == null ? null : neck,
        "center_back": centerBack == null ? null : centerBack,
        "shoulder": shoulder == null ? null : shoulder,
        "arm_length": armLength == null ? null : armLength,
        "sleeve_length": sleeveLength == null ? null : sleeveLength,
        "shirt_length": shirtLength == null ? null : shirtLength,
        "bicep": bicep == null ? null : bicep,
        "outseam": outseam == null ? null : outseam,
        "hipshape": hipshape == null ? null : hipshape!.toJson(),
        "high_hip": highHip == null ? null : highHip,
        "metric": metric == null ? null : metric,
      };
}
