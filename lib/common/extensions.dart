import 'package:bodidatacms/model/comments/comment.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Our design contains Neumorphism design and i made a extention for it
// We can apply it on any  widget

extension Neumorphism on Widget {
  addNeumorphism({
    double borderRadius = 10.0,
    Offset offset = const Offset(5, 5),
    double blurRadius = 10,
    Color topShadowColor = Colors.white60,
    Color bottomShadowColor = const Color(0x26234395),
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        boxShadow: [
          BoxShadow(
            offset: offset,
            blurRadius: blurRadius,
            color: bottomShadowColor,
          ),
          BoxShadow(
            offset: Offset(-offset.dx, -offset.dx),
            blurRadius: blurRadius,
            color: topShadowColor,
          ),
        ],
      ),
      child: this,
    );
  }
}

extension StringHelper on String {
  String removeLast() {
    String text = this;
    if ( this.length > 0) {
      text = this.substring(0, this.length - 1);
    }
    return text;
  }
}

extension ParseToString on CommentModule {
  String toShortString() {
    return this.toString().split('.').last;
  }
}

extension ImageHelper on String {
  Widget loadImage(
      {double? width, double? height, double? size, Color? color}) {
    if (size != null && size > 0) {
      width = size;
      height = size;
    }
    if (this.contains('http')) {
      return CachedNetworkImage(
        imageUrl: this,
        width: width,
        height: height,
        color: color,
        errorWidget: (context, url, error) => Icon(Icons.error),
      );
    }

    if (this.contains('.svg')) {
      var img = SvgPicture.asset(
        this,
        width: width ?? 24,
        height: height ?? 24,
        color: color,
      );
      return img;
    }

    if (this.contains('.png')) {
      return Image.asset(
        this,
        width: width,
        height: height,
        color: color,
      );
    }

    throw 'Assest $this failed to load';
  }
}

extension GlobalKeyExtension on GlobalKey {
  Rect? get globalPaintBounds {
    final renderObject = currentContext?.findRenderObject();
    var translation = renderObject?.getTransformTo(null).getTranslation();
    if (translation != null) {
      return renderObject!.paintBounds
          .shift(Offset(translation.x, translation.y));
    } else {
      return null;
    }
  }
}
