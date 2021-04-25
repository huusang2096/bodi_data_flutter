import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/audit/audit_session_record_request.dart';
import 'package:bodidatacms/screen/audit/audit_record/cubit/audit_record_cubit.dart';
import 'package:bodidatacms/screen/audit/audit_record/widgets/dropdown_new_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PickBestSizeWidget extends StatelessWidget {
  const PickBestSizeWidget({
    Key? key,
    required this.paddingDefault,
  }) : super(key: key);

  final double paddingDefault;

  @override
  Widget build(BuildContext context) {
    final stateData = context.watch<AuditRecordCubit>().state.data;
    final AuditSessionRecordRequest? data = stateData.auditSessionRecordRequest;
    final List<String> dataDialogPickSize = stateData.listTitleTable;
    final String selectedTitleTable = stateData.selectedTitleTable;
    DeviceScreenType deviceScreenType =
        getDeviceType(MediaQuery.of(context).size);
    if (deviceScreenType != DeviceScreenType.desktop) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('sessions'.tr, style: textGreyBold.copyWith(fontSize: 15.0)),
              Text(data == null ? '' : data.name ?? '',
                  style: titleHeader.copyWith(fontSize: 17.0))
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: paddingDefault / 1.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text('best_size'.tr,
                      style: body1.copyWith(fontWeight: FontWeight.bold)),
                ),
                Row(
                  children: [
                    Expanded(
                      child: DropdownNewSize(
                        items: dataDialogPickSize,
                        selectedValue: selectedTitleTable,
                        marginRight: 0,
                        valueIsKey: false,
                        onChange: (value) {
                          context
                              .read<AuditRecordCubit>()
                              .changeSelectBestSize(value);
                        },
                        paddingDefault: paddingDefault,
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    if (deviceScreenType == DeviceScreenType.tablet)
                      Expanded(child: SizedBox()),
                  ],
                ),
              ],
            ),
          )
        ],
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('sessions'.tr, style: textGreyBold.copyWith(fontSize: 15.0)),
              Text(data == null ? '' : data.name ?? '',
                  style: titleHeader.copyWith(fontSize: 17.0))
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text('best_size'.tr,
                          style: body1.copyWith(fontWeight: FontWeight.bold)),
                    ),
                    DropdownNewSize(
                      items: dataDialogPickSize,
                      selectedValue: selectedTitleTable,
                      marginRight: 0,
                      valueIsKey: false,
                      onChange: (value) {
                        context
                            .read<AuditRecordCubit>()
                            .changeSelectBestSize(value);
                      },
                      paddingDefault: paddingDefault,
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
