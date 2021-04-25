// To parse this JSON data, do
//
//     final loginRequest = loginRequestFromJson(jsonString);

import 'dart:convert';

class LoginRequest {
  LoginRequest({
    this.username,
    this.password,
  });

  String? username;
  String? password;

  LoginRequest copyWith({
    String? username,
    String? password,
  }) =>
      LoginRequest(
        username: username ?? this.username,
        password: password ?? this.password,
      );

  factory LoginRequest.fromRawJson(String str) =>
      LoginRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginRequest.fromJson(Map<String, dynamic> json) => LoginRequest(
        username: json["username"] == null ? null : json["username"],
        password: json["password"] == null ? null : json["password"],
      );

  Map<String, dynamic> toJson() => {
        "username": username == null ? null : username,
        "password": password == null ? null : password,
      };
}
