import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/inventory/style_details_response.dart';
import 'package:bodidatacms/screen/style/cubit/style_cubit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActionWidget extends StatelessWidget {
  final Function()? onPressPermission;
  final Function()? onPressRecord;

  ActionWidget({this.onPressPermission, this.onPressRecord});
  StyleDetailResponse? styleDetailResponse;

  @override
  Widget build(BuildContext context) {
    final styleId = context.watch<StyleCubit>().state.data.styleId;
    styleDetailResponse =
        context.watch<StyleCubit>().state.data.styleDetailResponse;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ElevatedButton(
          onPressed: () {
            context.read<StyleCubit>().inputStyle();
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
        SizedBox(width: 10),
        if (styleId != -1)
          ElevatedButton(
            onPressed: onPressPermission ?? () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal)),
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.lock_rounded,
                      size: 20,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'permission'.tr,
                      style: textButton,
                    ),
                  ],
                )),
          ),
        SizedBox(width: 10),
        styleDetailResponse != null
            ? ElevatedButton(
                onPressed: onPressPermission ?? () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(indigoColor)),
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.rule,
                          size: 20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'audit_records'.trArgs([
                            styleDetailResponse!.data!.numberAuditRecords
                                .toString()
                          ]),
                          style: textButton,
                        ),
                      ],
                    )),
              )
            : SizedBox.shrink(),
      ],
    );
  }
}
