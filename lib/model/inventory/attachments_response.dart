// To parse this JSON data, do
//
//     final attachmentsResponse = attachmentsResponseFromJson(jsonString);

import 'dart:convert';

class AttachmentsResponse {
  AttachmentsResponse({
    required this.success,
    required this.message,
    this.data,
  });

  bool success;
  String message;
  List<InformationFiles>? data;

  factory AttachmentsResponse.fromRawJson(String str) =>
      AttachmentsResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AttachmentsResponse.fromJson(Map<String, dynamic> json) =>
      AttachmentsResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : List<InformationFiles>.from(
                json["data"].map((x) => InformationFiles.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class InformationFiles {
  InformationFiles({
    this.id,
    this.fileName,
    this.fileType,
    this.fileSize,
    this.styleId,
    this.sizingOptions,
    this.fixFunctionAndAppearance,
    this.createdAt,
    this.updatedAt,
    this.fileUrl,
  });

  int? id;
  String? fileName;
  String? fileType;
  String? fileSize;
  int? styleId;
  dynamic? sizingOptions;
  dynamic? fixFunctionAndAppearance;
  String? createdAt;
  String? updatedAt;
  String? fileUrl;

  factory InformationFiles.fromRawJson(String str) =>
      InformationFiles.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory InformationFiles.fromJson(Map<String, dynamic> json) =>
      InformationFiles(
        id: json["id"] == null ? null : json["id"],
        fileName: json["file_name"] == null ? null : json["file_name"],
        fileType: json["file_type"] == null ? null : json["file_type"],
        fileSize: json["file_size"] == null ? null : json["file_size"],
        styleId: json["style_id"] == null ? null : json["style_id"],
        sizingOptions: json["sizing_options"],
        fixFunctionAndAppearance: json["fix_function_and_appearance"],
        createdAt: json["created_at"] == null ? null : json["created_at"],
        updatedAt: json["updated_at"] == null ? null : json["updated_at"],
        fileUrl: json["file_url"] == null ? null : json["file_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "file_name": fileName == null ? null : fileName,
        "file_type": fileType == null ? null : fileType,
        "file_size": fileSize == null ? null : fileSize,
        "style_id": styleId == null ? null : styleId,
        "sizing_options": sizingOptions,
        "fix_function_and_appearance": fixFunctionAndAppearance,
        "created_at": createdAt == null ? null : createdAt,
        "updated_at": updatedAt == null ? null : updatedAt,
        "file_url": fileUrl == null ? null : fileUrl,
      };
}
