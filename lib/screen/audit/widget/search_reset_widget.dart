import 'package:bodidatacms/common/style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bodidatacms/screen/audit/cubit/audit_cubit.dart';

class SearchResetWidget extends StatelessWidget {
  final TextEditingController searchSessionNameController;
  final double paddingAll;
  final bool isColums;

  SearchResetWidget(
      {required this.searchSessionNameController,
      required this.paddingAll,
      required this.isColums});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(paddingAll),
        child: isColums
            ? buildColumn(context, searchSessionNameController)
            : buildRow(context, searchSessionNameController));
  }

  Row buildRow(BuildContext context, TextEditingController controller) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
          onPressed: () => context
              .read<AuditCubit>()
              .saveSessionSearch(controller.text)
              .then(
                  (value) => context.read<AuditCubit>().fetchDataAudiSession(false)),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(indigoColor)),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.search, size: 25, color: Colors.white),
                SizedBox(width: 4.0),
                Text(
                  'search'.tr,
                  overflow: TextOverflow.ellipsis,
                  style: textButton,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 3.0),
        GestureDetector(
          onTap: () => context.read<AuditCubit>().resetDataSearch(controller),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.red),
              children: [
                WidgetSpan(
                  child: Container(
                    child: Icon(Icons.refresh, size: 16, color: Colors.red),
                    margin: EdgeInsets.only(left: 5, right: 5),
                  ),
                ),
                WidgetSpan(
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: lineRed, width: 1))),
                      child: Text("Reset",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                          ))),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Column buildColumn(BuildContext context, TextEditingController controller) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: () => context
              .read<AuditCubit>()
              .saveSessionSearch(controller.text)
              .then(
                  (value) => context.read<AuditCubit>().fetchDataAudiSession(false)),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(indigoColor)),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.search, size: 25, color: Colors.white),
                SizedBox(width: 4.0),
                Text(
                  'search'.tr,
                  overflow: TextOverflow.ellipsis,
                  style: textButton,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 3.0),
        GestureDetector(
          onTap: () => context.read<AuditCubit>().resetDataSearch(controller),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.red),
              children: [
                WidgetSpan(
                  child: Container(
                    child: Icon(Icons.refresh, size: 16, color: Colors.red),
                    margin: EdgeInsets.only(left: 5, right: 5),
                  ),
                ),
                WidgetSpan(
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: lineRed, width: 1))),
                      child: Text("Reset",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                          ))),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
