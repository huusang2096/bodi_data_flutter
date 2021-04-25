// To parse this JSON data, do
//
//     final brandSelectModal = brandSelectModalFromJson(jsonString);

import 'dart:convert';

class BrandSelectModal {
  BrandSelectModal({
    this.brand,
    this.isSelected = false,
  });

  String? brand;
  bool isSelected;

  factory BrandSelectModal.fromRawJson(String str) =>
      BrandSelectModal.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BrandSelectModal.fromJson(Map<String, dynamic> json) =>
      BrandSelectModal(
        brand: json["brand"] == null ? null : json["brand"],
      );

  Map<String, dynamic> toJson() => {
        "brand": brand == null ? null : brand,
        "isSelected": isSelected,
      };
}
