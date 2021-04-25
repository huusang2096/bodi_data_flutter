// To parse this JSON data, do
//
//     final registerReponse = registerReponseFromJson(jsonString);

import 'dart:convert';

class RegisterReponse {
  RegisterReponse({
    this.success,
    this.message,
    this.data,
  });

  bool? success;
  String? message;
  RegisterData? data;

  RegisterReponse copyWith({
    bool? success,
    String? message,
    RegisterData? data,
  }) =>
      RegisterReponse(
        success: success ?? this.success,
        message: message ?? this.message,
        data: data ?? this.data,
      );

  factory RegisterReponse.fromRawJson(String str) =>
      RegisterReponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RegisterReponse.fromJson(Map<String, dynamic> json) =>
      RegisterReponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : RegisterData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data?.toJson(),
      };
}

class RegisterData {
  RegisterData({
    this.token,
  });

  String? token;

  RegisterData copyWith({
    String? token,
  }) =>
      RegisterData(
        token: token ?? this.token,
      );

  factory RegisterData.fromRawJson(String str) =>
      RegisterData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RegisterData.fromJson(Map<String, dynamic> json) => RegisterData(
        token: json["token"] == null ? null : json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token == null ? null : token,
      };
}
