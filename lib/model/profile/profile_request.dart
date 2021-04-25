// To parse this JSON data, do
//
//     final profileRequest = profileRequestFromJson(jsonString);

import 'dart:convert';

import 'package:bodidatacms/model/profile/profile_response.dart';

class ProfileRequest {
  ProfileRequest({
    this.name,
    this.clothingPreferencyId,
    this.yearOfBirth,
    this.hashtags,
    this.weight,
    this.height,
    this.neck,
    this.chest,
    this.naturalWaist,
    this.waist,
    this.seat,
    this.hip,
    this.inseam,
    this.centerBack,
    this.shoulder,
    this.armLength,
    this.sleeveLength,
    this.shirtLength,
    this.bicep,
    this.outseam,
    this.hipshapeId,
    this.highHip = false,
    this.metric = false,
  });

  String? name;
  int? clothingPreferencyId;
  int? yearOfBirth;
  String? hashtags;
  int? weight;
  int? height;
  int? neck;
  int? chest;
  int? naturalWaist;
  int? waist;
  int? seat;
  int? hip;
  int? inseam;
  int? centerBack;
  int? shoulder;
  int? armLength;
  int? sleeveLength;
  int? shirtLength;
  int? bicep;
  int? outseam;
  int? hipshapeId;
  bool highHip;
  bool metric;

  factory ProfileRequest.fromRawJson(String str) =>
      ProfileRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  ProfileRequest copyWith({required ProfileModel profileModel}) =>
      ProfileRequest(
        name: profileModel.name ?? this.name,
        clothingPreferencyId:
            profileModel.clothingPreferency!.id ?? this.clothingPreferencyId,
        yearOfBirth: profileModel.yearOfBirth ?? this.yearOfBirth,
        hashtags: profileModel.hashtags ?? this.hashtags,
        weight: profileModel.weight ?? this.weight,
        height: profileModel.height ?? this.height,
        neck: profileModel.neck ?? this.neck,
        chest: profileModel.chest ?? this.chest,
        naturalWaist: profileModel.naturalWaist ?? this.naturalWaist,
        waist: profileModel.waist ?? this.waist,
        seat: profileModel.seat ?? this.seat,
        hip: profileModel.hip ?? this.hip,
        inseam: profileModel.inseam ?? this.inseam,
        centerBack: profileModel.centerBack ?? this.centerBack,
        shoulder: profileModel.shoulder ?? this.shoulder,
        armLength: profileModel.armLength ?? this.armLength,
        sleeveLength: profileModel.sleeveLength ?? this.sleeveLength,
        shirtLength: profileModel.shirtLength ?? this.shirtLength,
        bicep: profileModel.bicep ?? this.bicep,
        outseam: profileModel.outseam ?? this.outseam,
        hipshapeId: profileModel.hipshape!.id ?? this.hipshapeId,
        highHip: profileModel.highHip == 0 ? false : true,
        metric: profileModel.metric == 0 ? false : true,
      );

  factory ProfileRequest.fromJson(Map<String, dynamic> json) => ProfileRequest(
        name: json["name"] == null ? null : json["name"],
        clothingPreferencyId: json["clothing_preferency_id"] == null
            ? null
            : json["clothing_preferency_id"],
        yearOfBirth:
            json["year_of_birth"] == null ? null : json["year_of_birth"],
        hashtags: json["hashtags"] == null ? null : json["hashtags"],
        weight: json["weight"] == null ? null : json["weight"],
        height: json["height"] == null ? null : json["height"],
        neck: json["neck"] == null ? null : json["neck"],
        chest: json["chest"] == null ? null : json["chest"],
        naturalWaist:
            json["natural_waist"] == null ? null : json["natural_waist"],
        waist: json["waist"] == null ? null : json["waist"],
        seat: json["seat"] == null ? null : json["seat"],
        hip: json["hip"] == null ? null : json["hip"],
        inseam: json["inseam"] == null ? null : json["inseam"],
        centerBack: json["center_back"] == null ? null : json["center_back"],
        shoulder: json["shoulder"] == null ? null : json["shoulder"],
        armLength: json["arm_length"] == null ? null : json["arm_length"],
        sleeveLength:
            json["sleeve_length"] == null ? null : json["sleeve_length"],
        shirtLength: json["shirt_length"] == null ? null : json["shirt_length"],
        bicep: json["bicep"] == null ? null : json["bicep"],
        outseam: json["outseam"] == null ? null : json["outseam"],
        hipshapeId: json["hipshape_id"] == null ? null : json["hipshape_id"],
        highHip: json["high_hip"] == null ? null : json["high_hip"],
        metric: json["metric"] == null ? null : json["metric"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "clothing_preferency_id":
            clothingPreferencyId == null ? null : clothingPreferencyId,
        "year_of_birth": yearOfBirth == null ? null : yearOfBirth,
        "hashtags": hashtags == null ? null : hashtags,
        "weight": weight == null ? null : weight,
        "height": height == null ? null : height,
        "neck": neck == null ? null : neck,
        "chest": chest == null ? null : chest,
        "natural_waist": naturalWaist == null ? null : naturalWaist,
        "waist": waist == null ? null : waist,
        "seat": seat == null ? null : seat,
        "hip": hip == null ? null : hip,
        "inseam": inseam == null ? null : inseam,
        "center_back": centerBack == null ? null : centerBack,
        "shoulder": shoulder == null ? null : shoulder,
        "arm_length": armLength == null ? null : armLength,
        "sleeve_length": sleeveLength == null ? null : sleeveLength,
        "shirt_length": shirtLength == null ? null : shirtLength,
        "bicep": bicep == null ? null : bicep,
        "outseam": outseam == null ? null : outseam,
        "hipshape_id": hipshapeId == null ? null : hipshapeId,
        "high_hip": highHip,
        "metric": metric,
      };
}
