// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

class LoginResponse {
  LoginResponse({
    this.success,
    this.message,
    this.data,
  });

  bool? success;
  String? message;
  LoginData? data;

  factory LoginResponse.fromRawJson(String str) =>
      LoginResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : LoginData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data!.toJson(),
      };
}

class LoginData {
  LoginData({
    this.token,
    this.id,
    this.name,
  });

  String? token;
  int? id;
  String? name;

  factory LoginData.fromRawJson(String str) =>
      LoginData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginData.fromJson(Map<String, dynamic> json) => LoginData(
        token: json["token"] == null ? null : json["token"],
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "token": token == null ? null : token,
        "id": id == null ? null : id,
        "name": name == null ? null : name,
      };
}
