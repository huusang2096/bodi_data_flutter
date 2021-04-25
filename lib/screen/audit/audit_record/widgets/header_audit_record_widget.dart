import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/audit/audit_session_record_request.dart';
import 'package:bodidatacms/model/inventory/sttyle_model.dart';
import 'package:bodidatacms/screen/audit/audit_record/cubit/audit_record_cubit.dart';
import 'package:bodidatacms/widgets/button_save.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HeaderAuditRecordWidget extends StatelessWidget {
  const HeaderAuditRecordWidget({
    Key? key,
    required this.paddingDefault,
    required this.deviceScreenType,
  }) : super(key: key);

  final double paddingDefault;
  final DeviceScreenType deviceScreenType;
  @override
  Widget build(BuildContext context) {
    final DataAuditRecord stateData =
        context.watch<AuditRecordCubit>().state.data;
    final AuditSessionRecordRequest? recordDetail =
        stateData.auditSessionRecordRequest;

    final Style? style = stateData.styleResponse;

    if (DeviceScreenType.mobile == deviceScreenType) {
      return Padding(
        padding: EdgeInsets.only(bottom: paddingDefault),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleHeader(recordDetail, style),
            SizedBox(
              height: paddingDefault / 3,
            ),
            SizedBox(width: 80.0, child: buildButtonSave(context))
          ],
        ),
      );
    }
    return Padding(
      padding: EdgeInsets.only(bottom: paddingDefault * 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [titleHeader(recordDetail, style), buildButtonSave(context)],
      ),
    );
  }

  buildButtonSave(BuildContext context) {
    final isLoading = context.watch<AuditRecordCubit>().state.data.isLoading;

    return ButtonSaveCommon(
      isLoading: isLoading,
      onTap: () => context.read<AuditRecordCubit>().updateAuditRecord(),
    );
  }

  RichText titleHeader(AuditSessionRecordRequest? recordDetail, Style? style) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
              text: recordDetail == null ? '' : recordDetail.nameProfile,
              style: header),
          WidgetSpan(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.0),
                child: Icon(Icons.close, size: 26, color: borderGrey1),
              ),
              style: textGreyBold.copyWith(fontSize: 20.0)),
          TextSpan(text: style != null ? style.styleName : '', style: header),
        ],
      ),
    );
  }
}
