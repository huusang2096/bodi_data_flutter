import 'dart:convert';

class Pagination {
  Pagination({
    this.limit,
    this.currentPage,
    this.totalPage,
  });

  int? limit;
  int? currentPage;
  int? totalPage;

  factory Pagination.fromRawJson(String str) =>
      Pagination.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        limit: json["limit"] == null ? null : json["limit"],
        currentPage: json["current_page"] == null ? null : json["current_page"],
        totalPage: json["total_page"] == null ? null : json["total_page"],
      );

  Map<String, dynamic> toJson() => {
        "limit": limit == null ? null : limit,
        "current_page": currentPage == null ? null : currentPage,
        "total_page": totalPage == null ? null : totalPage,
      };
}
