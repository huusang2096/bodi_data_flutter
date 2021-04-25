import 'package:bodidatacms/common/bloc/bloc.dart';
import 'package:bodidatacms/common/hard_code.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/comments/comment.dart';
import 'package:bodidatacms/model/inventory/size_option.dart';
import 'package:bodidatacms/screen/audit/audit_record/cubit/audit_record_cubit.dart';
import 'package:bodidatacms/screen/audit/audit_record/widgets/comments_widget.dart';
import 'package:bodidatacms/screen/audit/audit_record/widgets/custom_button_audit_record_widget.dart';
import 'package:bodidatacms/screen/audit/audit_record/widgets/dropdown_new_size.dart';
import 'package:bodidatacms/screen/audit/audit_record/widgets/header_audit_record_widget.dart';
import 'package:bodidatacms/screen/audit/audit_record/widgets/pick_best_size_widget.dart';
import 'package:bodidatacms/screen/audit/audit_record/widgets/table_style_dropdown.dart';
import 'package:bodidatacms/screen/audit/audit_record/widgets/ui_mobile.dart';
import 'package:bodidatacms/screen/comments/cubit/comments_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AuditRecordScreen
    extends CubitWidget<AuditRecordCubit, AuditRecordState> {
  static MultiBlocProvider provider() {
    final parameters = Get.parameters;
    final id = parameters[KeyId.sessionKey] == null
        ? -1
        : int.tryParse(parameters[KeyId.sessionKey] ?? '') ?? -1;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuditRecordCubit()),
        BlocProvider(
            create: (context) => CommentsCubit(CommentModule.AUDIT, id)),
      ],
      child: AuditRecordScreen(),
    );
  }

  final double paddingDefault = 20.0;

  @override
  Widget builder(BuildContext context, AuditRecordState state) {
    DeviceScreenType deviceType = getDeviceType(MediaQuery.of(context).size);

    return Scaffold(
      backgroundColor: Colors.white,
      body: buildBuildBody(deviceType, context, state),
    );
  }

  Widget buildBuildBody(DeviceScreenType deviceScreenType, BuildContext context,
      AuditRecordState state) {
    if (deviceScreenType == DeviceScreenType.mobile) {
      return UiMobileAuditRecord(
          paddingDefault: paddingDefault, deviceScreenType: deviceScreenType);
    }
    return Container(
      padding: EdgeInsets.all(paddingDefault),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderAuditRecordWidget(
                paddingDefault: paddingDefault,
                deviceScreenType: deviceScreenType),
            PickBestSizeWidget(paddingDefault: paddingDefault),
            SizedBox(height: paddingDefault * 1.5),
            Stack(
              alignment: Alignment.topRight,
              children: [
                Padding(
                    padding: EdgeInsets.only(top: paddingDefault * 1.8),
                    child: TableStyleDropdownWidget(
                        paddingDefault: paddingDefault)),
                CustomButtonAuditRecord(
                  paddingDefault: paddingDefault,
                  title: 'new_size'.tr,
                  onTap: () {
                    if (state.data.styleResponse == null &&
                        state.data.auditSessionRecordRequest == null) return;
                    showDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (_) {
                        final List<SizeOption> listSizeOption =
                            state.data.styleResponse != null
                                ? state.data.styleResponse!.sizeOptions!
                                : [];
                        final List<int> listSelected =
                            List.generate(listSizeOption.length, (index) => 0);
                        return StatefulBuilder(builder: (_, setState) {
                          return dialogNewSize(
                              context, listSizeOption, listSelected, setState);
                        });
                      },
                    ).then((value) {
                      if (value != null) {
                        context.read<AuditRecordCubit>().newSize(value);
                      }
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: paddingDefault),
            // SeeOtherWidget(paddingDefault: paddingDefault),
            Padding(
              padding: EdgeInsets.only(
                  top: paddingDefault, bottom: paddingDefault * 1.5),
              child: CommentsWidget(paddingDefault: paddingDefault),
            ),
          ],
        ),
      ),
    );
  }

  AlertDialog dialogNewSize(
      BuildContext context,
      List<SizeOption> listSizeOption,
      List<int> listSelected,
      StateSetter setState) {
    return AlertDialog(
      backgroundColor: Colors.white,
      actions: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildButtonCancel(context),
            SizedBox(width: 20),
            buildButtonSave(context, () {
              final List<String> listSizeResult = [];
              for (int i = 0; i < listSizeOption.length; i++) {
                listSizeResult
                    .add(listSizeOption[i].contents![listSelected[i]]);
              }
              Navigator.of(context).pop(listSizeResult);
            }),
          ],
        )
      ],
      content: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text('select_new_size'.tr),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: listSizeOption
                  .asMap()
                  .map(
                    (key, value) => MapEntry(
                      key,
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          DropdownNewSize(
                            items: value.contents!,
                            isExpanded: false,
                            selectedValue: listSelected[key],
                            paddingDefault: paddingDefault,
                            onChange: (value) {
                              setState(() {
                                listSelected[key] = value;
                              });
                            },
                          ),
                          key < listSizeOption.length - 1
                              ? Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Icon(Icons.close,
                                      size: 26, color: borderGrey1),
                                )
                              : SizedBox.shrink()
                        ],
                      ),
                    ),
                  )
                  .values
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector buildButtonCancel(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 2, color: lineRed))),
        child: Text('cancel'.tr,
            style: body1.merge(TextStyle(color: textButtonRed))),
      ),
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
