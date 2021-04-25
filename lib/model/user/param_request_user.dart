// To parse this JSON data, do
//
//     final paramsRequestUser = paramsRequestUserFromJson(jsonString);

import 'dart:convert';

class ParamsRequestUser {
  ParamsRequestUser({
    this.page,
    this.limit,
  });

  int? page;
  String? limit;

  factory ParamsRequestUser.fromRawJson(String str) =>
      ParamsRequestUser.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ParamsRequestUser.fromJson(Map<String, dynamic> json) =>
      ParamsRequestUser(
        page: json["page"] == null ? null : json["page"],
        limit: json["limit"] == null ? null : json["limit"],
      );

  Map<String, dynamic> toJson() => {
        "page": page == null ? null : page,
        "limit": limit == null ? null : limit,
      };
}
