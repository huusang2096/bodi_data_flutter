import 'package:bodidatacms/common/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class ButtonSaveCommon extends StatelessWidget {
  final bool isLoading;
  final Function onTap;
  final String? titleButton;
  final IconData? iconButton;
  const ButtonSaveCommon(
      {Key? key,
      this.titleButton,
      this.iconButton,
      required this.isLoading,
      required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (!isLoading) onTap();
      },
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(indigoColor)),
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              isLoading
                  ? SpinKitFadingCircle(
                      size: 20.0,
                      color: Colors.white,
                    )
                  : Icon(
                      iconButton ?? Icons.check,
                      size: 20,
                      color: Colors.white,
                    ),
              SizedBox(width: 10),
              Text(
                titleButton ?? 'save'.tr,
                style: textButton,
              ),
            ],
          )),
    );
  }
}
