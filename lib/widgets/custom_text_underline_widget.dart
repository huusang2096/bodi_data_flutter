import 'package:bodidatacms/common/style.dart';
import 'package:flutter/material.dart';

class CustomTextUnderLineWidget extends StatelessWidget {
  const CustomTextUnderLineWidget({
    Key? key,
    required this.textTitle,
    this.onTap,
    this.icon,
    this.centerText = false,
    this.colorTextTitle,
    this.paddingBottom,
    this.colorUnderLine,
  }) : super(key: key);

  final String textTitle;
  final Function? onTap;
  final IconData? icon;
  final Color? colorTextTitle; //default: textblueColor
  final Color? colorUnderLine; //default: lineblue
  final double? paddingBottom; //default 5px
  final bool centerText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: paddingBottom ?? 5),
      child: Row(
        mainAxisAlignment:
            centerText ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: colorUnderLine ?? lineblue, width: 1.0))),
            child: Text(
              textTitle,
              style: body1.copyWith(
                color: colorTextTitle ?? textblueColor,
              ),
            ),
          ),
          if (icon != null) ...[
            SizedBox(width: 4),
            GestureDetector(
              onTap: () => onTap!(),
              child: Icon(
                icon,
                size: 12,
                color: colorTextTitle,
              ),
            ),
          ]
        ],
      ),
    );
  }
}
