import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final TextStyle? textStyle;
  final IconThemeData? iconThemeData;
  final double? elevation;
  final IconData? iconLeading;
  final Function()? onPressLeading;

  const CustomAppbar({
    Key? key,
    this.title,
    this.textStyle,
    this.iconThemeData,
    this.elevation,
    this.iconLeading,
    this.onPressLeading,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title?.tr ?? '',
        style: textStyle ?? TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      iconTheme: iconThemeData ??
          IconThemeData(
            color: Colors.grey,
          ),
      elevation: elevation ?? 1.0,
      automaticallyImplyLeading: true,
      leading: iconLeading != null
          ? IconButton(
              icon: Icon(iconLeading), onPressed: onPressLeading ?? () {})
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
