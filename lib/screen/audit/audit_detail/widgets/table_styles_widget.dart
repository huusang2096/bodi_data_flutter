import 'package:bodidatacms/common/hard_code.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/audit/audit_session_detail_response.dart';
import 'package:bodidatacms/model/audit/audit_session_profile.dart';
import 'package:bodidatacms/model/audit/audit_session_record_request.dart';
import 'package:bodidatacms/model/audit/audit_session_style.dart';
import 'package:bodidatacms/routes.dart';
import 'package:bodidatacms/screen/audit/audit_detail/cubit/audit_detail_cubit.dart';
import 'package:bodidatacms/screen/audit/audit_detail/widgets/text_under_line_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TableStylesWidget extends StatelessWidget {
  TableStylesWidget(
      {Key? key,
      required this.paddingDefault,
      required this.deviceScreenType,
      required this.id,
      required this.auditRecord,
      required this.styles,
      required this.txtSessionname,
      required this.profiles})
      : super(key: key);
  final TextEditingController txtSessionname;
  final double paddingDefault;
  final DeviceScreenType deviceScreenType;
  final int id;
  List<AuditRecord> auditRecord;
  List<StyleAudit> styles;
  List<ProfileAudit> profiles;

  @override
  Widget build(BuildContext context) {
    if (styles.isEmpty || profiles.isEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: paddingDefault / 1.5),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          titleStyleItem(),
                          styleItem(height: 150, titleStyle: '', des: ''),
                          SizedBox(height: paddingDefault),
                          styleItem(height: 150, titleStyle: '', des: ''),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                      child: VerticalDivider(
                    color: textgrey,
                    width: 2.0,
                    thickness: 2.0,
                  )),
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: paddingDefault / 1.5),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 600,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: textgrey, width: 2.0)),
                              ),
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      bottom: paddingDefault / 3),
                                  child: Text('Profile'.tr, style: body1)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    flex: 3,
                  )
                ],
              ),
            ),
          )
        ],
      );
    }
    List<StyleAudit> stylesAuditRecord = [];
    auditRecord.forEach((element) => stylesAuditRecord.add(element.style!));
    List<Widget> listRowData = [];
    List<Widget> listMeasurement = [];
    List<Widget> listTitleStyles = [];
    listTitleStyles.add(
      titleStyleItem(),
    );
    listMeasurement.add(titleRowItem(profiles, context));
    styles.forEach((element) => listTitleStyles.add(
          styleItem(
              height: 100,
              titleStyle: element.name.toString(),
              des: element.modelCode.toString()),
        ));
    styles.forEach((element) => listMeasurement.add(rowItem(element, context)));

    listRowData.add(
      Expanded(
        flex: 1,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: paddingDefault / 1.5),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: listTitleStyles,
          ),
        ),
      ),
    );
    listRowData.add(
      SizedBox(
          child: VerticalDivider(
        color: textgrey,
        width: 2.0,
        thickness: 2.0,
      )),
    );
    listRowData.add(Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: paddingDefault / 1.5),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: listMeasurement,
          ),
        ),
      ),
      flex: 4,
    ));
    if (deviceScreenType == DeviceScreenType.mobile) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: listRowData,
              ),
            ),
          )
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: IntrinsicHeight(
            child: Row(
              children: listRowData,
            ),
          ),
        )
      ],
    );
  }

  Widget titleRowItem(List<ProfileAudit> profiles, BuildContext context) {
    List<Widget> listCellWiget = [];
    profiles.forEach((element) => listCellWiget.add(
          cellWidget(context,
              isOntap: false,
              showEndLine: false,
              color: Colors.transparent,
              marginHorizontal: paddingDefault / 2,
              colorUnderline: lineIndigo,
              width: 140,
              height: 0,
              listString: [element.name.toString()]),
        ));
    if (profiles.isNotEmpty) {
      return Container(
        margin: EdgeInsets.only(bottom: paddingDefault / 2),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: textgrey, width: 2.0)),
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: paddingDefault / 3),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: listCellWiget,
          ),
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.only(bottom: paddingDefault / 2),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: textgrey, width: 2.0)),
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: paddingDefault / 3),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [],
          ),
        ),
      );
    }
  }

  Widget rowItem(StyleAudit style, BuildContext context) {
    List<Widget> listCellWiget = [];
    final state = context.watch<AuditDetailCubit>().state;
    print('after emit auditRecored ${state.data.auditRecordRequests.length}');
    profiles.forEach((element) {
      listCellWiget.add(cellWidget(context,
          isOntap: true,
          showEndLine: true,
          nameProfile: element.name ?? '',
          color: cellAudit,
          marginHorizontal: paddingDefault / 2,
          textEndLine: 'audit new size',
          colorUnderline: lineIndigo,
          width: 140,
          height: 100,
          idProfile: element.id!,
          style: style,
          idSession: id,
          colorTextEndLine: indigoColor,
          paddingBottomEndLine: paddingDefault / 4,
          listString: state.data.auditSessionDetailResponse!.data == null
              ? _formatSizeNameCreate(state.data.auditRecordRequests
                  .firstWhere(
                    (e) => e.styleId! == style.id && e.profileId == element.id,
                    orElse: () => AuditRecordRequest(measurementSizes: []),
                  )
                  .measurementSizes!)
              : _formatSizeName(auditRecord
                  .firstWhere(
                    (e) =>
                        e.style!.id == style.id && e.profile!.id == element.id,
                    orElse: () => AuditRecord(measurementSizes: []),
                  )
                  .measurementSizes!)));
    });

    return Container(
      margin: EdgeInsets.only(bottom: paddingDefault / 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        //  mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: listCellWiget,
      ),
    );
  }

  Widget titleStyleItem() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: textgrey, width: 2.0)),
      ),
      child: Padding(
          padding: EdgeInsets.only(bottom: paddingDefault / 3),
          child: Text('styles'.tr, style: body1)),
    );
  }

  Widget styleItem(
      {required String titleStyle,
      required String des,
      required double height,
      bool isCenter = false,
      double marginTop = 0}) {
    return Container(
      width: 140,
      margin: EdgeInsets.only(top: paddingDefault / 2),
      height: height == 0 ? null : height,
      // constraints: BoxConstraints(maxHeight: 200, minHeight: 150),
      child: Column(
        crossAxisAlignment:
            isCenter ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          Text(titleStyle, style: body1),
          SizedBox(height: 4.0),
          Text(des, style: body1.copyWith(color: textgrey))
        ],
      ),
    );
  }

  Widget cellWidget(BuildContext context,
      {required List<String> listString,
      required Color color,
      Color? colorUnderline,
      required bool showEndLine,
      required double width,
      required double height,
      required double marginHorizontal,
      StyleAudit? style,
      String? nameProfile,
      bool? isOntap,
      String? textEndLine,
      String? textTitleCell,
      Color colorTextEndLine = Colors.black,
      int idSession = -1,
      int idProfile = -1,
      double paddingBottomEndLine = 0}) {
    final List<Widget> listWidget = [];
    if (textTitleCell != null) {
      listWidget.add(Container(
        padding: EdgeInsets.only(bottom: paddingDefault / 3),
        width: double.infinity,
        child: Text(textTitleCell,
            textAlign: TextAlign.center,
            style: body1.copyWith(fontWeight: FontWeight.bold)),
      ));
    }
    if (listString.isNotEmpty)
      listWidget.addAll(listString.map((e) => Text(
            e,
            style: body1,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          )));

    if (showEndLine) {
      listWidget.add(TextUnderLineCustomWidget(
        colorTextTitle: colorTextEndLine,
        paddingBottom: paddingBottomEndLine,
        colorUnderLine: colorUnderline ?? Colors.transparent,
        textTitle: textEndLine ?? '',
        centerText: false,
      ));
    }
    return Material(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: marginHorizontal),
        child: InkWell(
          onTap: !isOntap!
              ? null
              : () async {
                  if (idSession == -1) {
                    final String? nameP = nameProfile;
                    final String? nameSession = txtSessionname.text;
                    print(AppRoute.auditRecordDetails);
                    final data = await Get.toNamed(AppRoute.auditRecordDetails,
                        arguments: {
                          'nameProfile': nameP ?? '',
                          'nameSession': nameSession ?? '',
                          'idSession': idSession,
                          'style': style,
                          'idProfile': idProfile
                        });
                    if (data != null && data['data'] != null) {
                      print('Data get Back : ${data['data']}');
                      context
                          .read<AuditDetailCubit>()
                          .emitAuditRecordData(data['data']);
                    }
                  } else {
                    await Get.toNamed(
                      AppRoute.url_auditRecordDetailsId.trArgs([
                        KeyId.profileId.trArgs(['$idProfile']),
                        KeyId.styleId.trArgs(['${style!.id}']),
                        KeyId.sessionId.trArgs(['$idSession'])
                      ]),
                    );
                  }
                },
          child: Container(
              width: width,
              height: height == 0 ? null : height,
              padding: EdgeInsets.only(
                left: paddingDefault / 3,
                right: paddingDefault / 3,
                top: listString.length > 1 ? paddingDefault / 4 : 0,
                bottom: listString.length > 1 ? paddingDefault / 4 : 0,
              ),
              color: color,
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: listWidget),
              )),
        ),
      ),
    );
  }

  List<String> _formatSizeName(List<MeasurementSize> listSize) {
    List<String> listFormatSize = [];
    String splitString = '';

    if (listSize.isEmpty) {
      return listFormatSize;
    }
    var listSizeNotDuplicate =
        listSize.map((e) => e.size.toString()).toSet().toList();
    for (var i = 0; i < listSizeNotDuplicate.length; i++) {
      splitString =
          listSizeNotDuplicate.elementAt(i).toString().replaceAll('[', '');
      splitString = splitString.replaceAll(']', '');
      splitString = splitString.replaceAll(',', ' x ');
      listFormatSize.add(splitString);
    }

    return listFormatSize;
  }

  List<String> _formatSizeNameCreate(List<MeasurementSizeRequest> listSize) {
    List<String> listFormatSize = [];
    String splitString = '';

    if (listSize.isEmpty) {
      return listFormatSize;
    }
    var listSizeNotDuplicate =
        listSize.map((e) => e.size.toString()).toSet().toList();
    for (var i = 0; i < listSizeNotDuplicate.length; i++) {
      splitString =
          listSizeNotDuplicate.elementAt(i).toString().replaceAll('[', '');
      splitString = splitString.replaceAll(']', '');
      splitString = splitString.replaceAll(',', ' x ');
      listFormatSize.add(splitString);
    }

    return listFormatSize;
  }
}
