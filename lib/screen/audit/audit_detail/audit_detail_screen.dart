import 'package:bodidatacms/common/bloc/bloc.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/screen/audit/audit_detail/cubit/audit_detail_cubit.dart';
import 'package:bodidatacms/screen/audit/audit_detail/widgets/create_title_audit_detail_widget.dart';
import 'package:bodidatacms/screen/audit/audit_detail/widgets/table_styles_profiles_widget.dart';
import 'package:bodidatacms/screen/audit/audit_detail/widgets/table_styles_widget.dart';
import 'package:bodidatacms/screen/audit/audit_detail/widgets/title_audit_detail_widget.dart';
import 'package:bodidatacms/widgets/custom_loading_linear_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'cubit/audit_detail_cubit.dart';

class AuditDetailScreen
    extends CubitWidget<AuditDetailCubit, AuditDetailState> {
  final TextEditingController txtSessionname = TextEditingController(text: '');
  static BlocProvider<AuditDetailCubit> provider() {
    return BlocProvider(
        create: (context) {
          int id = Get.parameters['id'] == null
              ? -1
              : int.tryParse(Get.parameters['id']!) ?? -1;

          return AuditDetailCubit(id);
        },
        child: AuditDetailScreen());
  }

  final double paddingDefault = 20.0;
  @override
  void afterFirstLayout(BuildContext context) {}

  @override
  void listener(BuildContext context, AuditDetailState state) {
    if (state is Loaded) {
      print('Loaded');
    }
  }

  @override
  Widget builder(BuildContext context, state) {
    DeviceScreenType deviceType = getDeviceType(MediaQuery.of(context).size);
    return Scaffold(
      body: bodyWidget(context, deviceType, state),
    );
  }

  Widget bodyWidget(BuildContext context, DeviceScreenType deviceScreenType,
      AuditDetailState state) {
    Widget contentWidget = SizedBox.shrink();
    if (state.data.auditSessionDetailResponse?.data == null) {
      contentWidget = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CreateTitleAuditDetailWidget(
            paddingDefault: paddingDefault,
            deviceScreenType: deviceScreenType,
            txtSessionName: txtSessionname,
            onTap: () => context.read<AuditDetailCubit>().createNewAuditSession(
                txtSessionname.text,
                state.data.listAuditStyle,
                state.data.listAuditProfile),
          ),
          TableStylesProfilesWidget(
              paddingDefault: paddingDefault,
              deviceScreenType: deviceScreenType,
              styles: state.data.listAuditStyle,
              profiles: state.data.listAuditProfile),
          if (deviceScreenType == DeviceScreenType.mobile)
            Padding(
              padding: EdgeInsets.only(bottom: paddingDefault / 2),
              child: Divider(
                color: textgrey,
                height: 2.0,
              ),
            ),
          TableStylesWidget(
              auditRecord: [],
              txtSessionname: txtSessionname,
              styles: state.data.listAuditStyle,
              profiles: state.data.listAuditProfile,
              id: state.data.auditId,
              paddingDefault: paddingDefault,
              deviceScreenType: deviceScreenType)
        ],
      );
    } else {
      txtSessionname.text = state.data.auditSessionDetailResponse!.data!.name!;
      contentWidget = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CreateTitleAuditDetailWidget(
            paddingDefault: paddingDefault,
            deviceScreenType: deviceScreenType,
            txtSessionName: txtSessionname,
            onTap: () => state.data.auditId == -1
                ? context.read<AuditDetailCubit>().createNewAuditSession(
                    txtSessionname.text,
                    state.data.listAuditStyle,
                    state.data.listAuditProfile)
                : context.read<AuditDetailCubit>().updateAuditSession(
                    txtSessionname.text,
                    state.data.listAuditStyle,
                    state.data.listAuditProfile),
          ),
          TableStylesProfilesWidget(
            paddingDefault: paddingDefault,
            deviceScreenType: deviceScreenType,
            styles: state.data.listAuditStyle,
            profiles: state.data.listAuditProfile,
          ),
          if (deviceScreenType == DeviceScreenType.mobile)
            Padding(
              padding: EdgeInsets.only(bottom: paddingDefault / 2),
              child: Divider(
                color: textgrey,
                height: 2.0,
              ),
            ),
          TableStylesWidget(
              auditRecord:
                  state.data.auditSessionDetailResponse!.data!.auditRecords!,
              txtSessionname: txtSessionname,
              styles: state.data.listAuditStyle,
              profiles: state.data.listAuditProfile,
              id: state.data.auditId,
              paddingDefault: paddingDefault,
              deviceScreenType: deviceScreenType)
        ],
      );
    }
    return SizedBox.expand(
        child: Padding(
      padding: const EdgeInsets.all(30.0),
      child: SingleChildScrollView(
        child: state.data.isLoading
            ? Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                TitleAuditDetailWidget(
                  paddingDefault: paddingDefault,
                  deviceScreenType: deviceScreenType,
                  sessionName: ' ',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomLoadingLinearWidget(
                  height: 3.0,
                  marginHorizontal: 5.0,
                )
              ])
            : contentWidget,
      ),
    ));
  }

  @override
  void dispose(BuildContext context) {
    txtSessionname.dispose();
    super.dispose(context);
  }
}
