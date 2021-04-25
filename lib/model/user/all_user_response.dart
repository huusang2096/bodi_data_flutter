// To parse this JSON data, do
//
//     final allUserResponse = allUserResponseFromJson(jsonString);

import 'dart:convert';

import 'package:bodidatacms/model/group/group_data.dart';
import 'package:bodidatacms/model/pagination/pagination.dart';

class AllUserResponse {
  AllUserResponse({
    this.success,
    this.message,
    this.data,
    this.pagination,
  });

  bool? success;
  String? message;
  List<User>? data;
  Pagination? pagination;

  factory AllUserResponse.fromRawJson(String str) =>
      AllUserResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AllUserResponse.fromJson(Map<String, dynamic> json) =>
      AllUserResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<User>.from(json["data"].map((x) => User.fromJson(x))),
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

class User {
  User(
      {this.id, this.name, this.isActive, this.groups, this.lengthGroupByUser});

  int? id;
  String? name;
  bool? isActive;
  List<GroupData>? groups;
  int? lengthGroupByUser;
  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
      id: json["id"] == null ? null : json["id"],
      name: json["name"] == null ? null : json["name"],
      isActive: json["is_active"] == null ? null : json["is_active"],
      groups: json["groups"] == null
          ? null
          : List<GroupData>.from(
              json["groups"].map((x) => GroupData.fromJson(x))),
      lengthGroupByUser: json["groups"] == null
          ? null
          : List<GroupData>.from(
              json["groups"].map((x) => GroupData.fromJson(x))).length);

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "is_active": isActive == null ? null : isActive,
        "groups": groups == null
            ? null
            : List<dynamic>.from(groups!.map((x) => x.toJson())),
      };
}
