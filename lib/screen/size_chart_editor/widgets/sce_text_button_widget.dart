import 'package:bodidatacms/common/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextButtonAddMeasure extends StatelessWidget {
  String titleText;
  Function() onTap;

  CustomTextButtonAddMeasure(
      {Key? key, required this.titleText, required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onTap();
      },
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          titleText.tr,
          style: textButton,
        ),
      ),
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(indigoColor)),
    );
  }
}
