// To parse this JSON data, do
//
//     final registerRequest = registerRequestFromJson(jsonString);

import 'dart:convert';

class RegisterRequest {
  RegisterRequest({
    this.username,
    this.password,
    this.name,
  });

  String? username;
  String? password;
  String? name;

  RegisterRequest copyWith({
    String? username,
    String? password,
    String? name,
  }) =>
      RegisterRequest(
        username: username ?? this.username,
        password: password ?? this.password,
        name: name ?? this.name,
      );

  factory RegisterRequest.fromRawJson(String str) =>
      RegisterRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      RegisterRequest(
        username: json["username"] == null ? null : json["username"],
        password: json["password"] == null ? null : json["password"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "username": username == null ? null : username,
        "password": password == null ? null : password,
        "name": name == null ? null : name,
      };
}
