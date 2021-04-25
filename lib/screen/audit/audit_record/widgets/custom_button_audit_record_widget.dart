import 'package:bodidatacms/common/style.dart';
import 'package:flutter/material.dart';

class CustomButtonAuditRecord extends StatelessWidget {
  const CustomButtonAuditRecord({
    Key? key,
    required this.paddingDefault,
    required this.title,
    required this.onTap,
    this.alignment,
  }) : super(key: key);

  final double paddingDefault;
  final String title;
  final Function onTap;
  final Alignment? alignment;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(Icons.add_circle, size: 20.0),
      style: ButtonStyle(
          alignment: alignment,
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(
              vertical: (paddingDefault / 1.5), horizontal: (paddingDefault))),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: MaterialStateProperty.all(indigoColor)),
      label: Flexible(
        child: Text(
          title,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: textButton,
        ),
      ),
      onPressed: () => onTap(),
    );
  }
}
