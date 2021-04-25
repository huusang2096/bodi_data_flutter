import 'package:bodidatacms/common/style.dart';
import 'package:flutter/material.dart';

class TextUnderLineCustomWidget extends StatelessWidget {
  const TextUnderLineCustomWidget({
    Key? key,
    required this.textTitle,
    this.onTap,
    this.icon,
    this.centerText = false,
    required this.colorTextTitle,
    required this.paddingBottom,
    required this.colorUnderLine,
  }) : super(key: key);

  final String textTitle;
  final Function? onTap;
  final IconData? icon;
  final Color colorTextTitle;
  final Color colorUnderLine;
  final double paddingBottom;
  final bool centerText;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: paddingBottom),
        child: Row(
          mainAxisAlignment:
              centerText ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: colorUnderLine, width: 1.0))),
                child: Text(
                  textTitle,
                  style: body1.copyWith(
                    color: colorTextTitle,
                  ),
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
        ));
  }
}
