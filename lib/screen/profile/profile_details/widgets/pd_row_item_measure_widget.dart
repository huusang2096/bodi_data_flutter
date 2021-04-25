import 'package:bodidatacms/common/resources.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:bodidatacms/common/extensions.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RowItemMeasureWidget extends StatelessWidget {
  final TextEditingController controller;
  final String titleText;
  final String hintText;
  final bool? hasSuffixIcon;
  final DeviceScreenType deviceScreenType;
  final Function(String?) addData;

  RowItemMeasureWidget(
      {Key? key,
      required this.controller,
      required this.titleText,
      required this.hintText,
      this.hasSuffixIcon,
      required this.addData,
      required this.deviceScreenType})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool isDesktop = deviceScreenType == DeviceScreenType.desktop;
    return Row(
      mainAxisAlignment:
          isDesktop ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Text(titleText.tr,
              style: titleInput,
              textAlign: isDesktop ? TextAlign.end : TextAlign.start),
        ),
        SizedBox(width: 5),
        Expanded(
          flex: 2,
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: controller,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),
            ],
            onChanged: (value) {
              if (value.isNotEmpty) {
                addData(value);
              } else {
                addData(null);
              }
            },
            decoration: InputDecoration(
              hintText: hintText.tr,
              hintStyle: title.copyWith(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  width: 2.0,
                  color: Colors.transparent,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  width: 2.0,
                  color: boder,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  width: 2.0,
                  color: Colors.red,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(
                  width: 2.0,
                  color: boder,
                ),
              ),
              suffixIcon: hasSuffixIcon ?? true
                  ? IconButton(
                      onPressed: () {},
                      icon: Images.iconMeasureTape.loadImage(
                        size: 15,
                        color: Colors.black,
                      ),
                    )
                  : null,
            ),
            style: title,
          ),
        ),
        SizedBox(width: 5),
        isDesktop
            ? Expanded(
                flex: 2,
                child: SizedBox(),
              )
            : SizedBox.shrink(),
      ],
    );
  }
}
