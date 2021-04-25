import 'package:bodidatacms/common/style.dart';
import 'package:flutter/material.dart';

class CustomLoadingLinearWidget extends StatelessWidget {
  final double height;
  final double marginHorizontal;
  final double marginVertical;
  const CustomLoadingLinearWidget(
      {Key? key,
      this.height = 4.0,
      this.marginHorizontal = 20.0,
      this.marginVertical = 0.0})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        margin: EdgeInsets.symmetric(
            horizontal: marginHorizontal, vertical: marginVertical),
        child: LinearProgressIndicator(backgroundColor: indigoColor));
  }
}
