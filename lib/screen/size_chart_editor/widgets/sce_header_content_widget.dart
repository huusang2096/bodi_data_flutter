import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/screen/size_chart_editor/cubit/size_chart_editor_cubit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HeaderContentWidget extends StatelessWidget {
  final DeviceScreenType? deviceScreenType;

  HeaderContentWidget({this.deviceScreenType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              'size_chart'.tr,
              style: header,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<SizeChartEditorCubit>().updateSizeChart();
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(indigoColor)),
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.check,
                      size: 20,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'save'.tr,
                      style: textButton,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
