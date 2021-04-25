import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/profile/profile_request.dart';
import 'package:bodidatacms/screen/profile/profile_details/cubit/profile_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessagerContentWidget extends StatefulWidget {
  MessagerContentWidget({Key? key}) : super(key: key);

  @override
  _MessagerContentWidgetState createState() => _MessagerContentWidgetState();
}

class _MessagerContentWidgetState extends State<MessagerContentWidget> {
  late ProfileRequest profileRequest;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    DeviceScreenType deviceScreenType = getDeviceType(size);
    profileRequest = profileRequest =
        context.watch<ProfileDetailsCubit>().state.data.profileRequest;

    return Container(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          deviceScreenType == DeviceScreenType.desktop
              ? Expanded(
                  flex: 1,
                  child: SizedBox(),
                )
              : SizedBox.shrink(),
          Expanded(
            flex: 2,
            child: Text(
              'measurements'.tr,
              style: title.merge(
                TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Row(
                children: [
                  Text(
                    'metric'.tr,
                    style: body1,
                  ),
                  Transform.scale(
                    scale: 0.6,
                    child: FlutterSwitch(
                      width: 60,
                      height: 35.0,
                      valueFontSize: 25.0,
                      activeColor: switchColor,
                      toggleSize: 30.0,
                      value: profileRequest.metric,
                      borderRadius: 30.0,
                      onToggle: (val) {
                        setState(() {
                          profileRequest.metric = val;
                        });
                      },
                    ),
                  ),
                  Text(
                    'imperial'.tr,
                    style: body1,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
