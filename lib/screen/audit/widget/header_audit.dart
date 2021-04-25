import 'package:bodidatacms/widgets/button_save.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../routes.dart';

class HeaderAudit extends StatelessWidget {
  final DeviceScreenType? deviceType;
  const HeaderAudit({
    Key? key,
    this.deviceType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (deviceType != null && deviceType == DeviceScreenType.mobile) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "audit_sessions_directory".tr,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 120.0,
            child: ButtonSaveCommon(
              isLoading: false,
              titleButton: 'create_audit'.tr,
              iconButton: Icons.add,
              onTap: () {
                Get.toNamed(AppRoute.auditDetails);
              },
            ),
          )
        ],
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            "audit_sessions_directory".tr,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        ButtonSaveCommon(
          isLoading: false,
          titleButton: 'create_audit'.tr,
          iconButton: Icons.add,
          onTap: () {
            Get.toNamed(AppRoute.auditDetails);
          },
        )
      ],
    );
  }
}
