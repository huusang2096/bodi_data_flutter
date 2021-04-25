import 'package:bodidatacms/common/style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SeeOtherWidget extends StatelessWidget {
  const SeeOtherWidget({
    Key? key,
    required this.paddingDefault,
  }) : super(key: key);

  final double paddingDefault;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: paddingDefault, bottom: paddingDefault * 1.5),
      child: Row(
        children: [
          Icon(Icons.keyboard_arrow_down, color: indigoColor, size: 25),
          Container(
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: lineIndigo, width: 2.0))),
            child: Text('see_other_sessions'.trArgs(['2']),
                style: body1.copyWith(color: indigoColor)),
          )
        ],
      ),
    );
  }
}
