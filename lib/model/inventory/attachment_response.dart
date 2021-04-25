// To parse this JSON data, do
//
//     final attachmentResponse = attachmentResponseFromJson(jsonString);

import 'dart:convert';

class AttachmentResponse {
  AttachmentResponse({
    required this.success,
    required this.message,
    this.data,
  });

  bool success;
  String message;
  InformationFile? data;

  factory AttachmentResponse.fromRawJson(String str) =>
      AttachmentResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AttachmentResponse.fromJson(Map<String, dynamic> json) =>
      AttachmentResponse(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null
            ? null
            : InformationFile.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data == null ? null : data!.toJson(),
      };
}

class InformationFile {
  InformationFile({
    this.id,
    this.fileUrl,
  });

  int? id;
  String? fileUrl;

  factory InformationFile.fromRawJson(String str) =>
      InformationFile.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory InformationFile.fromJson(Map<String, dynamic> json) =>
      InformationFile(
        id: json["id"] == null ? null : json["id"],
        fileUrl: json["file_url"] == null ? null : json["file_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "file_url": fileUrl == null ? null : fileUrl,
      };
}
