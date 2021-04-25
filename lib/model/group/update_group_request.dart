// To parse this JSON data, do
//
//     final updateGroupRequest = updateGroupRequestFromJson(jsonString);

import 'dart:convert';

class UpdateGroupRequest {
  UpdateGroupRequest({
    this.userId,
    this.isLinked,
  });

  int? userId;
  bool? isLinked;

  factory UpdateGroupRequest.fromRawJson(String str) =>
      UpdateGroupRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UpdateGroupRequest.fromJson(Map<String, dynamic> json) =>
      UpdateGroupRequest(
        userId: json["user_id"] == null ? null : json["user_id"],
        isLinked: json["is_linked"] == null ? null : json["is_linked"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId == null ? null : userId,
        "is_linked": isLinked == null ? null : isLinked,
      };
}
