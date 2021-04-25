// To parse this JSON data, do
//
//     final isRememberModal = isRememberModalFromJson(jsonString);

import 'dart:convert';

class IsRememberModal {
  IsRememberModal({
    required this.email,
    required this.password,
    required this.isRemember,
  });

  String email;
  String password;
  bool isRemember;

  factory IsRememberModal.fromRawJson(String str) =>
      IsRememberModal.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IsRememberModal.fromJson(Map<String, dynamic> json) =>
      IsRememberModal(
        email: json["email"] == null ? null : json["email"],
        password: json["password"] == null ? null : json["password"],
        isRemember: json["isRemember"] == null ? null : json["isRemember"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "isRemember": isRemember,
      };
}
