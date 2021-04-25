import 'package:bodidatacms/common/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TitleAuditDetailWidget extends StatelessWidget {
  const TitleAuditDetailWidget(
      {Key? key,
      required this.paddingDefault,
      required this.deviceScreenType,
      required this.sessionName})
      : super(key: key);

  final double paddingDefault;
  final DeviceScreenType deviceScreenType;
  final String? sessionName;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: paddingDefault),
          child: Text('audit_sessions'.tr, style: header),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: paddingDefault / 3),
          child: Text('session_name'.tr,
              style: body1.copyWith(fontWeight: FontWeight.bold)),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(paddingDefault / 2,
                    paddingDefault / 2, 0.0, paddingDefault / 2),
                decoration: BoxDecoration(
                    border: Border.all(color: textgrey, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: Text(sessionName!, style: title),
              ),
            ),
            if (deviceScreenType == DeviceScreenType.desktop)
              Expanded(
                child: SizedBox(),
              )
          ],
        ),
      ],
    );
  }
}
