import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/screen/audit/audit_detail/cubit/audit_detail_cubit.dart';
import 'package:bodidatacms/widgets/button_save.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateTitleAuditDetailWidget extends StatelessWidget {
  const CreateTitleAuditDetailWidget(
      {Key? key,
      required this.paddingDefault,
      required this.deviceScreenType,
      required this.txtSessionName,
      required this.onTap})
      : super(key: key);

  final double paddingDefault;
  final DeviceScreenType deviceScreenType;
  final TextEditingController? txtSessionName;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: paddingDefault),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('audit_sessions'.tr, style: header),
              ButtonSaveCommon(
                isLoading: false,
                onTap: onTap,
              ),
            ],
          ),
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
                height: 60,
                padding: EdgeInsets.fromLTRB(
                    0, paddingDefault / 2, 0.0, paddingDefault / 2),
                child: TextFormField(
                  controller: txtSessionName,
                  decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: textgrey, width: 2.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: textgrey, width: 2.0)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: textgrey, width: 2.0)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: textgrey, width: 2.0)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          borderSide: BorderSide(color: textgrey, width: 2.0)),
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      hintText: "Session name"),
                ),
              ),
            ),
            SizedBox(
              width: 120,
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

  ElevatedButton buildButtonSave(BuildContext context, Function onTap) {
    return ElevatedButton(
      onPressed: () {
        onTap();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Text(
          'save'.tr,
          style: textButton,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(nameComment),
      ),
    );
  }
}
