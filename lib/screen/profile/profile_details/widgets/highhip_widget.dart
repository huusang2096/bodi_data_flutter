import 'package:bodidatacms/common/resources.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/profile/profile_request.dart';
import 'package:bodidatacms/screen/profile/profile_details/cubit/profile_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bodidatacms/common/extensions.dart';

class HightHipWidget extends StatefulWidget {
  HightHipWidget({Key? key}) : super(key: key);

  @override
  _HightHipWidgetState createState() => _HightHipWidgetState();
}

class _HightHipWidgetState extends State<HightHipWidget> {
  late ProfileRequest profileRequest;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    DeviceScreenType deviceScreenType = getDeviceType(size);
    profileRequest =
        context.watch<ProfileDetailsCubit>().state.data.profileRequest;

    return deviceScreenType == DeviceScreenType.desktop
        ? Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  "hip_shape".tr,
                  style: titleInput,
                  textAlign: TextAlign.right,
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                flex: 2,
                child: buildHipInput(),
              ),
              SizedBox(width: 5),
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    buildHipHigh(),
                    Text(
                      'high_hip'.tr,
                      style: body1,
                    ),
                  ],
                ),
              ),
            ],
          )
        : Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      "hip_shape".tr,
                      style: titleInput,
                      textAlign: deviceScreenType == DeviceScreenType.desktop
                          ? TextAlign.end
                          : TextAlign.start,
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    flex: 2,
                    child: buildHipInput(),
                  ),
                  SizedBox(width: 5),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  buildHipHigh(),
                  Text(
                    'high_hip'.tr,
                    style: body1,
                  ),
                  SizedBox(width: 5),
                ],
              ),
            ],
          );
  }

  Transform buildHipHigh() {
    return Transform.scale(
      scale: 0.6,
      child: FlutterSwitch(
        width: 60,
        height: 35.0,
        valueFontSize: 25.0,
        activeColor: switchColor,
        toggleSize: 30.0,
        value: profileRequest.highHip,
        borderRadius: 30.0,
        onToggle: (val) {
          setState(() {
            profileRequest.highHip = val;
          });
        },
      ),
    );
  }

  TextFormField buildHipInput() {
    return TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),
      ],
      controller: new TextEditingController(
          text:
              profileRequest.hip != null ? profileRequest.hip.toString() : ""),
      onChanged: (value) {
        if (value.isNotEmpty) {
          profileRequest.hip = int.parse(value);
        }
      },
      decoration: InputDecoration(
          hintText: "hip_shape".tr,
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
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Images.iconMeasureTape.loadImage(
              size: 15,
              color: Colors.black,
            ),
          )),
      style: title,
    );
  }
}
