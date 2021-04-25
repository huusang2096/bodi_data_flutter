import 'dart:convert';
import 'package:bodidatacms/model/comments/comment_by.dart';

enum CommentModule { STYLE, PROFILE, AUDIT }

class Comments {
  Comments({
    this.id,
    this.content,
    this.subContent,
    this.commentBy,
    this.type,
    this.createdAt,
  });

  int? id;
  String? content;
  String? subContent;
  CommentBy? commentBy;
  String? type;
  String? createdAt;

  factory Comments.fromRawJson(String str) =>
      Comments.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Comments.fromJson(Map<String, dynamic> json) => Comments(
        id: json["id"] == null ? null : json["id"],
        content: json["content"] == null ? null : json["content"],
        subContent: json["sub_content"] == null ? null : json["sub_content"],
        commentBy: json["comment_by"] == null
            ? null
            : CommentBy.fromJson(json["comment_by"]),
        type: json["type"] == null ? null : json["type"],
        createdAt: json["created_at"] == null ? null : json["created_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "content": content == null ? null : content,
        "sub_content": subContent == null ? null : subContent,
        "comment_by": commentBy == null ? null : commentBy!.toJson(),
        "type": type == null ? null : type,
        "created_at": createdAt == null ? null : createdAt,
      };
}
