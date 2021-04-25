import 'package:bodidatacms/common/hard_code.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/audit/audit_session_record_request.dart';
import 'package:bodidatacms/model/audit/sub_categories.dart';
import 'package:bodidatacms/model/inventory/size_option.dart';
import 'package:bodidatacms/screen/audit/audit_record/cubit/audit_record_cubit.dart';
import 'package:bodidatacms/screen/audit/audit_record/widgets/comments_widget.dart';
import 'package:bodidatacms/screen/audit/audit_record/widgets/custom_button_audit_record_widget.dart';
import 'package:bodidatacms/screen/audit/audit_record/widgets/custom_dropdown_mobile_widget.dart';
import 'package:bodidatacms/screen/audit/audit_record/widgets/dropdown_new_size.dart';
import 'package:bodidatacms/screen/audit/audit_record/widgets/header_audit_record_widget.dart';
import 'package:bodidatacms/screen/audit/audit_record/widgets/pick_best_size_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class UiMobileAuditRecord extends StatelessWidget {
  final double paddingDefault;
  final DeviceScreenType deviceScreenType;
  const UiMobileAuditRecord(
      {Key? key, required this.deviceScreenType, required this.paddingDefault})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final AuditRecordState state = context.watch<AuditRecordCubit>().state;
    return Container(
      padding: EdgeInsets.all(paddingDefault),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderAuditRecordWidget(
                paddingDefault: paddingDefault,
                deviceScreenType: deviceScreenType),
            PickBestSizeWidget(
              paddingDefault: paddingDefault,
            ),
            SizedBox(height: paddingDefault),
            Padding(
              padding: EdgeInsets.only(bottom: paddingDefault),
              child: Row(
                children: [
                  if (state.data.listDropDownSub.length < 4) ...[
                    CustomButtonAuditRecord(
                      onTap: () =>
                          context.read<AuditRecordCubit>().addSubCategory(),
                      title: 'add_measurement'.tr,
                      alignment: Alignment.centerLeft,
                      paddingDefault: paddingDefault,
                    ),
                    SizedBox(width: paddingDefault),
                  ],
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
                          final List<int> listSelected = List.generate(
                              listSizeOption.length, (index) => 0);
                          return StatefulBuilder(builder: (_, setState) {
                            return dialogNewSize(context, listSizeOption,
                                listSelected, setState);
                          });
                        },
                      ).then((value) {
                        if (value != null) {
                          context.read<AuditRecordCubit>().newSize(value);
                        }
                      });
                    },
                  )
                ],
              ),
            ),
            buildTable(state, context),
            SizedBox(height: paddingDefault * 2),
            CommentsWidget(paddingDefault: paddingDefault),
          ],
        ),
      ),
    );
  }

  Container buildTable(AuditRecordState state, BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: state.data.listDropDownSub
                  .asMap()
                  .map((key, value) => MapEntry(
                      key,
                      buildItemRow(
                        context: context,
                        paddingLeft: key > 0 ? paddingDefault / 3 : 0,
                        listSub: value.listSub,
                        isDisable: value.isDisable,
                        onChange: (value) {
                          context
                              .read<AuditRecordCubit>()
                              .changeSelectListSub(key, value);
                        },
                        selectedSubCategory: value.isSelected,
                      )))
                  .values
                  .toList())),
    );
  }

  Container buildItemRow(
      {required int selectedSubCategory,
      required List<SubCategorie> listSub,
      required bool isDisable,
      required Function(int) onChange,
      required BuildContext context,
      double paddingLeft = 0,
      Color? colorBorderRight}) {
    final DataAuditRecord stateData =
        context.watch<AuditRecordCubit>().state.data;
    final AuditSessionRecordRequest auditSessionRecordRequest =
        stateData.auditSessionRecordRequest!;
    final List<MeasurementSizeRequest> itemRow = [];
    stateData.listTitleTable.forEach((element) {
      final MeasurementSizeRequest? item = auditSessionRecordRequest
          .auditRecords!
          .firstWhereOrNull((element) =>
              element.styleId == stateData.idStyle &&
              element.profileId == stateData.idProfile)!
          .measurementSizes!
          .firstWhereOrNull((e) =>
              e.size!.join(formatSize) == element &&
              e.subCategoryId == selectedSubCategory);
      if (item != null) itemRow.add(item);
    });

    return Container(
      decoration: BoxDecoration(
          border: Border(
              right: BorderSide(
                  color: colorBorderRight ?? borderGrey1, width: 2.0))),
      child: IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleTable(
                paddingLeft: paddingLeft,
                isDisable: isDisable,
                listSub: listSub,
                onChange: (value) {
                  onChange(value);
                },
                selected: selectedSubCategory),
            buildDivider(),
          ]..addAll(itemRow
              .asMap()
              .map(
                (key, value) => MapEntry(
                  key,
                  Container(
                    color: key % 2 == 0 ? Colors.transparent : cellAuditLight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        buildCell(
                            paddingLeft: paddingLeft,
                            context: context,
                            item: value,
                            titleCell: value.size!.join(formatSize)),
                        buildDivider(paddingTop: paddingDefault / 3),
                      ],
                    ),
                  ),
                ),
              )
              .values
              .toList()),
        ),
      ),
    );
  }

  Widget buildCell(
      {required String titleCell,
      double paddingLeft = 0,
      required MeasurementSizeRequest item,
      required BuildContext context}) {
    return Container(
      height: 180.0,
      padding: EdgeInsets.only(left: paddingLeft, right: paddingDefault / 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: paddingDefault / 2),
            child: Text(titleCell, style: title),
          ),
          CustomDropdownMobileOverallOrDetailedWidget(
            paddingDefault: paddingDefault,
            isDense: true,
            onChange: (value) {
              context
                  .read<AuditRecordCubit>()
                  .changeValueInDropdownOverall(item, value);
            },
            showTitle: true,
            title: 'overall_fit'.tr,
            items: AuditRecordDataDefault().listOverallFit,
            selectedValue: item.idSelectOverallfitDropdown,
          ),
          SizedBox(height: paddingDefault / 3),
          CustomDropdownMobileOverallOrDetailedWidget(
            paddingDefault: paddingDefault,
            isDense: true,
            onChange: (value) {
              context
                  .read<AuditRecordCubit>()
                  .changeValueInDropdownDetailed(item, value);
            },
            showTitle: true,
            title: 'detailed'.tr,
            items: AuditRecordDataDefault()
                .listDropdownOverAndDetail
                .firstWhere((element) =>
                    element.overallFit.id == item.idSelectOverallfitDropdown)
                .listDetailed,
            selectedValue: item.idSelectDetailedDropdown,
          ),
          Text.rich(
            TextSpan(
              children: [
                WidgetSpan(
                    child: Icon(
                  Icons.question_answer,
                  color: textblueColor,
                  size: 20,
                )),
                TextSpan(
                    text: ' ' + 'comment'.tr,
                    style: textButton.copyWith(
                        color: textblueColor, fontWeight: FontWeight.normal))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDivider({double paddingTop = 0}) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop),
      child: Divider(
        color: borderGrey1,
        height: 2.0,
        thickness: 2.0,
      ),
    );
  }

  Container titleTable(
      {required int selected,
      required List<SubCategorie> listSub,
      required bool isDisable,
      required Function(int) onChange,
      double paddingLeft = 0}) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
          left: paddingLeft,
          bottom: paddingDefault / 4,
          right: paddingDefault / 3),
      child: CustomDropdownMobileWidget(
        showTitle: true,
        paddingDefault: paddingDefault,
        isDense: true,
        onChange: (value) {
          onChange(value);
        },
        isDisable: isDisable,
        listSub: listSub,
        selected: selected,
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
