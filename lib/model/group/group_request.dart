// To parse this JSON data, do
//
//     final groupRequest = groupRequestFromJson(jsonString);

import 'dart:convert';

class GroupRequest {
  GroupRequest({
    this.name,
  });

  String? name;

  GroupRequest copyWith({
    String? name,
  }) =>
      GroupRequest(
        name: name ?? this.name,
      );

  factory GroupRequest.fromRawJson(String str) =>
      GroupRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GroupRequest.fromJson(Map<String, dynamic> json) => GroupRequest(
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
      };
}
