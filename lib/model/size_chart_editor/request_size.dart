// To parse this JSON data, do
//
//     final requestSize = requestSizeFromJson(jsonString);

import 'dart:convert';

import 'package:bodidatacms/model/inventory/size_option.dart';

class RequestSize {
  RequestSize({
    required this.sizeOptions,
  });

  List<SizeOption> sizeOptions;

  factory RequestSize.fromRawJson(String str) =>
      RequestSize.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RequestSize.fromJson(Map<String, dynamic> json) => RequestSize(
        sizeOptions: json["size_options"] = List<SizeOption>.from(
            json["size_options"].map((x) => SizeOption.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "size_options": List<dynamic>.from(sizeOptions.map((x) => x.toJson())),
      };
}
