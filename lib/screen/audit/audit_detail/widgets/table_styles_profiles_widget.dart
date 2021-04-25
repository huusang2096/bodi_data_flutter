import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/audit/audit_session_profile.dart';
import 'package:bodidatacms/model/audit/audit_session_style.dart';
import 'package:bodidatacms/screen/audit/audit_detail/cubit/audit_detail_cubit.dart';
import 'package:bodidatacms/screen/audit/audit_detail/widgets/dialog_add_styles_profiles_widget.dart';
import 'package:bodidatacms/screen/audit/audit_detail/widgets/dialog_create_audit_styles_profiles_widget.dart';
import 'package:bodidatacms/screen/audit/audit_detail/widgets/text_under_line_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TableStylesProfilesWidget extends StatelessWidget {
  TableStylesProfilesWidget(
      {Key? key,
      required this.paddingDefault,
      required this.deviceScreenType,
      required this.styles,
      required this.profiles})
      : super(key: key);

  double paddingDefault;
  DeviceScreenType deviceScreenType;
  List<StyleAudit> styles;
  List<ProfileAudit> profiles;

  @override
  Widget build(BuildContext context) {
    if (deviceScreenType != DeviceScreenType.desktop) {
      return Container(
        margin: EdgeInsets.only(
            top: paddingDefault / 2, bottom: paddingDefault * 1.5),
        decoration: BoxDecoration(
          border: Border.all(color: textgrey, width: 2.0),
        ),
        child: SizedBox(
          child: Column(
            //  crossAxisAlignment: CrossAxisAlignment.stretch,
            //   mainAxisSize: MainAxisSize.min,
            children: [
              columnStyles(context),
              Divider(
                color: textgrey,
                height: 2.0,
              ),
              columnProfiles(context)
            ],
          ),
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(top: paddingDefault / 2, bottom: paddingDefault),
      decoration: BoxDecoration(
        border: Border.all(color: textgrey, width: 2.0),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(child: columnStyles(context)),
            SizedBox(
              child: VerticalDivider(
                color: textgrey,
                indent: 0,
                endIndent: 0,
                thickness: 2,
              ),
            ),
            Expanded(child: columnProfiles(context))
          ],
        ),
      ),
    );
  }

  Widget columnProfiles(BuildContext context) {
    List<Widget> profilesTextWidget = [];
    final data = context.watch<AuditDetailCubit>().state.data;
    profilesTextWidget.add(
      Padding(
        padding: EdgeInsets.only(bottom: paddingDefault / 2),
        child: Text('profiles'.tr + '(${profiles.length})', style: body1),
      ),
    );

    profiles.forEach(
      (e) => profilesTextWidget.add(TextUnderLineCustomWidget(
          textTitle: e.name!,
          icon: Icons.close,
          colorUnderLine: lineblue,
          paddingBottom: paddingDefault / 4,
          colorTextTitle: textblueColor,
          onTap: () {
            data.auditId == -1
                ? context
                    .read<AuditDetailCubit>()
                    .removeSingleDataOffline(e.id!, 'profile')
                : context
                    .read<AuditDetailCubit>()
                    .removeSingleData(e.id!, 'profile');
          })),
    );
    final auditId = data.auditId;
    profilesTextWidget.add(
      TextUnderLineCustomWidget(
          textTitle: 'Add Profile',
          paddingBottom: 0,
          icon: Icons.add,
          colorUnderLine: lineIndigo,
          colorTextTitle: indigoColor,
          onTap: () {
            print('Add Profiles');
            if (auditId == -1) {
              showDialog(
                      builder: (_) {
                        return DialogAddCreateAuditStyleProfileWidget.provider(
                            typeData: 'profiles',
                            styles: data.listAuditStyle,
                            profiles: data.listAuditProfile);
                      },
                      context: context)
                  .then((value) {
                print('Back Value: $value');
                if (value is List<ProfileAudit> && value.isNotEmpty) {
                  context
                      .read<AuditDetailCubit>()
                      .emitAuditProfileDetailData(value);
                }
              });
            } else {
              showDialog(
                      builder: (_) {
                        return DialogAddStyleProfileWidget.provider(
                            typeData: 'profiles', auditId: auditId);
                      },
                      context: context)
                  .then((value) {
                print('Back Value: $value');
                if (value == true) {
                  context.read<AuditDetailCubit>().reloadData(auditId);
                }
                if (value is List<ProfileAudit>) {
                  context
                      .read<AuditDetailCubit>()
                      .emitAuditProfileDetailData(value);
                }
              });
            }
          }),
    );
    return Container(
      padding: EdgeInsets.all(paddingDefault / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: profilesTextWidget,
      ),
    );
  }

  Widget columnStyles(BuildContext context) {
    List<Widget> styleTextWidget = [];
    final data = context.watch<AuditDetailCubit>().state.data;
    styleTextWidget.add(
      Padding(
        padding: EdgeInsets.only(bottom: paddingDefault / 2),
        child: Text('styles'.tr + '(${styles.length})', style: body1),
      ),
    );

    styles.forEach(
      (e) => styleTextWidget.add(TextUnderLineCustomWidget(
          textTitle: e.name!,
          icon: Icons.close,
          colorUnderLine: lineblue,
          paddingBottom: paddingDefault / 4,
          colorTextTitle: textblueColor,
          onTap: () {
            print('remove single item');
            data.auditSessionDetailResponse!.data == null
                ? context
                    .read<AuditDetailCubit>()
                    .removeSingleDataOffline(e.id!, 'style')
                : context
                    .read<AuditDetailCubit>()
                    .removeSingleData(e.id!, 'style');
          })),
    );
    final auditId = data.auditId;

    styleTextWidget.add(TextUnderLineCustomWidget(
        textTitle: 'Add Style',
        paddingBottom: 0,
        icon: Icons.add,
        colorUnderLine: lineIndigo,
        colorTextTitle: indigoColor,
        onTap: () {
          print('Add Style');

          if (auditId == -1) {
            showDialog(
                    builder: (_) {
                      return DialogAddCreateAuditStyleProfileWidget.provider(
                          typeData: 'style',
                          styles: data.listAuditStyle,
                          profiles: data.listAuditProfile);
                    },
                    context: context)
                .then((value) {
              print('Back Value: $value');
              if (value is List<StyleAudit> && value.isNotEmpty) {
                context
                    .read<AuditDetailCubit>()
                    .emitAuditStyleDetailData(value);
              }
            });
          } else {
            showDialog(
                    builder: (_) {
                      return DialogAddStyleProfileWidget.provider(
                          typeData: 'style', auditId: auditId);
                    },
                    context: context)
                .then((value) {
              print('Back Value: $value');
              if (value == true) {
                context.read<AuditDetailCubit>().reloadData(auditId);
              }
              if (value is List<StyleAudit>) {
                context
                    .read<AuditDetailCubit>()
                    .emitAuditStyleDetailData(value);
              }
            });
          }
        }));
    return Container(
      padding: EdgeInsets.all(paddingDefault / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: styleTextWidget,
      ),
    );
  }
}
