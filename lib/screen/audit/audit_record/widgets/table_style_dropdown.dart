import 'package:bodidatacms/common/hard_code.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/audit/audit_session_record_request.dart';
import 'package:bodidatacms/model/audit/sub_categories.dart';
import 'package:bodidatacms/screen/audit/audit_record/cubit/audit_record_cubit.dart';
import 'package:bodidatacms/screen/audit/audit_record/widgets/custom_button_audit_record_widget.dart';
import 'package:bodidatacms/screen/audit/audit_record/widgets/dropdown_overall_detailed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

class TableStyleDropdownWidget extends StatelessWidget {
  TableStyleDropdownWidget({
    Key? key,
    required this.paddingDefault,
  }) : super(key: key);

  final double paddingDefault;

  final double heightCell = 130;

  @override
  Widget build(BuildContext context) {
    final AuditRecordState state = context.watch<AuditRecordCubit>().state;
    return Container(
      width: double.infinity,
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(left: paddingDefault / 3),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: borderGrey1, width: 2.0),
                        ),
                      ),
                      child: Text('size'.tr, style: title)),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(color: borderGrey1, width: 2.0),
                        bottom: BorderSide(color: borderGrey1, width: 2.0),
                      ),
                    ),
                    child: Column(
                      children: state.data.listDropDownSub
                          .asMap()
                          .map((key, value) => MapEntry(
                              key,
                              dropDownCategory(
                                  listSub: value.listSub,
                                  isDisable: value.isDisable,
                                  onChange: (value) {
                                    context
                                        .read<AuditRecordCubit>()
                                        .changeSelectListSub(key, value);
                                  },
                                  selected: value.isSelected,
                                  colorBackground: key % 2 == 0
                                      ? Colors.transparent
                                      : cellAuditLight)))
                          .values
                          .toList()
                            ..add((state.data.listDropDownSub.length < 4
                                ? Container(
                                    height: heightCell,
                                    width: double.infinity,
                                    padding: EdgeInsets.only(
                                        right: paddingDefault / 2),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          child: CustomButtonAuditRecord(
                                            onTap: () => context
                                                .read<AuditRecordCubit>()
                                                .addSubCategory(),
                                            title: 'add_measurement'.tr,
                                            alignment: Alignment.centerLeft,
                                            paddingDefault: paddingDefault,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                : Container())),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 9,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: state.data.auditSessionRecordRequest == null
                      ? <Widget>[]
                      : state.data.listTitleTable
                          .asMap()
                          .map((key, value) => MapEntry(
                              key,
                              multiItemCell(
                                  context: context,
                                  titleText: value,
                                  colorBorderRight: borderGrey1)))
                          .values
                          .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  VerticalDivider verticalDeviderCustom() {
    return VerticalDivider(
      color: borderGrey1,
      width: 2.0,
      thickness: 2.0,
    );
  }

  Widget multiItemCell(
      {required String titleText,
      required Color colorBorderRight,
      required BuildContext context}) {
    final DataAuditRecord stateData =
        context.watch<AuditRecordCubit>().state.data;
    final AuditSessionRecordRequest auditSessionRecordRequest =
        stateData.auditSessionRecordRequest!;
    final List<MeasurementSizeRequest> itemColumn = [];

    //get data follow categori and style name
    stateData.listDropDownSub.forEach((idSubCategory) {
      final MeasurementSizeRequest? itemMeasurement = auditSessionRecordRequest
          .auditRecords!
          .firstWhereOrNull((element) =>
              element.styleId == stateData.idStyle &&
              element.profileId == stateData.idProfile)!
          .measurementSizes!
          .firstWhereOrNull((elementMeasurement) =>
              elementMeasurement.subCategoryId == idSubCategory.isSelected &&
              titleText == elementMeasurement.size!.join(formatSize));

      if (itemMeasurement != null) itemColumn.add(itemMeasurement);
    });
    final List<Widget> itemColumnWidget = [];
    if (itemColumn.isNotEmpty)
      itemColumnWidget
        ..addAll(itemColumn
            .asMap()
            .map((key, value) {
              return MapEntry(
                  key,
                  itemCell(
                      colorBackground:
                          key % 2 == 0 ? Colors.transparent : cellAuditLight,
                      item: value,
                      context: context));
            })
            .values
            .toList())
        ..add(Container(
            height: stateData.listDropDownSub.length < 4 ? heightCell : 0));
    else
      itemColumnWidget.add(Container(height: heightCell, width: 150));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: paddingDefault / 2),
          child: Text(titleText, style: title),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: borderGrey1, width: 2.0),
              right: BorderSide(color: colorBorderRight, width: 2.0),
              bottom: BorderSide(color: borderGrey1, width: 2.0),
            ),
          ),
          child: IntrinsicWidth(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: itemColumnWidget),
          ),
        ),
      ],
    );
  }

  Widget itemCell(
      {Color? colorBackground = Colors.transparent,
      required MeasurementSizeRequest item,
      required BuildContext context}) {
    return Container(
      height: heightCell,
      color: colorBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Wrap(
                children: [
                  SizedBox(width: paddingDefault / 2),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 11.0),
                        child: Text('overall_fit'.tr,
                            style: body1.copyWith(fontWeight: FontWeight.bold)),
                      ),
                      DropdownOverallDetailed(
                        items: AuditRecordDataDefault().listOverallFit,
                        marginRight: paddingDefault / 2,
                        onChange: (value) {
                          context
                              .read<AuditRecordCubit>()
                              .changeValueInDropdownOverall(item, value);
                        },
                        paddingDefault: paddingDefault,
                        selectedValue: item.idSelectOverallfitDropdown,
                        isExpanded: false,
                      ),
                      buildComment(),
                    ],
                  ),
                  if (item.idSelectDetailedDropdown != -1)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 11.0),
                          child: Text('detailed'.tr,
                              style:
                                  body1.copyWith(fontWeight: FontWeight.bold)),
                        ),
                        DropdownOverallDetailed(
                          items: AuditRecordDataDefault()
                              .listDropdownOverAndDetail
                              .firstWhere((element) =>
                                  element.overallFit.id ==
                                  item.idSelectOverallfitDropdown)
                              .listDetailed,
                          isExpanded: false,
                          marginRight: paddingDefault / 2,
                          onChange: (value) {
                            context
                                .read<AuditRecordCubit>()
                                .changeValueInDropdownDetailed(item, value);
                          },
                          paddingDefault: paddingDefault,
                          selectedValue: item.idSelectDetailedDropdown,
                        ),
                        buildComment(),
                      ],
                    )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildComment() {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Text.rich(
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
    );
  }

  Container dropDownCategory({
    Color colorBackground = Colors.transparent,
    required int selected,
    required List<SubCategorie> listSub,
    required bool isDisable,
    required Function(int) onChange,
  }) {
    return Container(
        width: double.infinity,
        height: heightCell,
        color: colorBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AbsorbPointer(
              absorbing: isDisable,
              child: Container(
                margin: EdgeInsets.only(right: paddingDefault / 2),
                padding: EdgeInsets.symmetric(
                    horizontal: paddingDefault / 2,
                    vertical: paddingDefault / 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.0),
                  border: Border.all(color: borderGrey2, width: 2.0),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<int>(
                      elevation: 0,
                      isDense: true,
                      onChanged: (value) {
                        onChange(value!);
                      },
                      isExpanded: true,
                      value: selected,
                      items: listSub
                          .map((e) => DropdownMenuItem<int>(
                                value: e.id,
                                child: Container(
                                    child: Text(e.name,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis)),
                              ))
                          .toList()),
                ),
              ),
            )
          ],
        ));
  }
}
