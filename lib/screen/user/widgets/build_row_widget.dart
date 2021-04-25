import 'package:bodidatacms/common/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BuildRowWidget extends StatelessWidget {
  final DeviceScreenType deviceScreenType;

  const BuildRowWidget({Key? key, required this.deviceScreenType})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (deviceScreenType != DeviceScreenType.mobile) {
      return Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.centerLeft,
              child: Text('user_name'.tr, style: title),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Text('group'.tr, style: title),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.centerRight,
              child: Text('action'.tr, style: title),
            ),
          )
        ],
      );
    }
    return SizedBox.shrink();
  }
}
