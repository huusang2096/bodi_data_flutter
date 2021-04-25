import 'package:bodidatacms/common/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BuildListUserShimmer extends StatelessWidget {
  final DeviceScreenType deviceScreenType;

  const BuildListUserShimmer({Key? key, required this.deviceScreenType})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      child: Center(
        child: SizedBox(
          //width: 50,
          child: SpinKitFadingCircle(
            color: indigoColor,
            size: 40,
          ),
        ),
      ),
    );
  }
}
