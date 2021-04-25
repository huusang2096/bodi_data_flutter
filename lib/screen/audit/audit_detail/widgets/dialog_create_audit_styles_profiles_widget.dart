import 'package:bodidatacms/common/bloc/bloc.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/audit/audit_session_profile.dart';
import 'package:bodidatacms/model/audit/audit_session_style.dart';
import 'package:bodidatacms/screen/audit/audit_detail/cubit/create_audit_session_cubit.dart';
import 'package:bodidatacms/screen/audit/audit_detail/cubit/dialog_audit_detail_cubit.dart';
import 'package:bodidatacms/widgets/custom_loading_linear_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class DialogAddCreateAuditStyleProfileWidget extends CubitWidget<
    DialogCreateSessionDetailCubit, DialogCreateAuditSessionState> {
  static BlocProvider<DialogCreateSessionDetailCubit> provider(
      {required String typeData,
      required List<StyleAudit> styles,
      required List<ProfileAudit> profiles}) {
    return BlocProvider(
        create: (context) => DialogCreateSessionDetailCubit(styles, profiles),
        child: DialogAddCreateAuditStyleProfileWidget(
          styles: styles,
          profiles: profiles,
          typeAddData: typeData,
        ));
  }

  final String typeAddData;
  final List<StyleAudit> styles;
  final List<ProfileAudit> profiles;
  DialogAddCreateAuditStyleProfileWidget(
      {required this.styles,
      required this.profiles,
      required this.typeAddData});

  @override
  Widget builder(BuildContext context, DialogCreateAuditSessionState state) {
    final listSelect = typeAddData == 'style'
        ? state.data.listAllStyle.cast()
        : state.data.listAllProfile.cast();
    final listResult = typeAddData == 'style'
        ? state.data.listAuditStyle.cast()
        : state.data.listAuditProfile.cast();

    return AlertDialog(
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          typeAddData == 'style'
              ? Text('pick_style_in_filler'.tr)
              : Text('pick_profile_in_filler'.tr),
        ],
      ),
      titlePadding: EdgeInsets.fromLTRB(20, 10, 0, 10.0),
      actionsPadding: EdgeInsets.only(bottom: 10.0, right: 20.0),
      content: Container(
        height: 300,
        child: state.data.isLoading
            ? Column(
                children: [
                  CustomLoadingLinearWidget(
                    height: 1,
                  ),
                  Container(
                    height: 250,
                  )
                ],
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        typeAddData == 'style'
                            ? Text('select_style'.tr)
                            : Text('select_profile'.tr),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 5.0, bottom: 5.0, right: 20.0),
                          child: Container(
                            height: 250,
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: listSelect
                                      .map(
                                        (e) => TextButton(
                                          onPressed: () {
                                            context
                                                .read<
                                                    DialogCreateSessionDetailCubit>()
                                                .addData(e.id!, typeAddData);
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 5.0),
                                                  child: Text(
                                                    e.name ?? '',
                                                    maxLines: null,
                                                    style: textItem.copyWith(
                                                        color: textblueColor),
                                                  ),
                                                ),
                                              ),
                                              Icon(
                                                Icons.add,
                                                size: 20.0,
                                                color: textblueColor,
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                      .toList()),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: VerticalDivider(),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('preview'.tr),
                        Container(
                          height: 250,
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 5.0, bottom: 5.0, right: 20.0),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: listResult
                                      .map((e) => TextButton(
                                            onPressed: () {
                                              context
                                                  .read<
                                                      DialogCreateSessionDetailCubit>()
                                                  .removeData(
                                                      e.id!, typeAddData);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 5.0),
                                                    child: Text(
                                                      e.name ?? '',
                                                      maxLines: null,
                                                      style: textItem.copyWith(
                                                          color: textblueColor),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 5.0),
                                                Icon(
                                                  Icons.close,
                                                  size: 20.0,
                                                  color: textblueColor,
                                                )
                                              ],
                                            ),
                                          ))
                                      .toList()),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
      actions: [
        typeAddData == 'style'
            ? buidActions(context, 'style')
            : buidActions(context, 'profile')
      ],
    );
  }

  Row buidActions(BuildContext context, String typeData) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
            onPressed: () {
              context
                  .read<DialogCreateSessionDetailCubit>()
                  .saveData(typeData, false);
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(textButtonRed)),
            child: Text('cancel'.tr)),
        SizedBox(width: 10.0),
        ElevatedButton(
            onPressed: () {
              context
                  .read<DialogCreateSessionDetailCubit>()
                  .saveData(typeData, true);
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(indigoColor)),
            child: Text('save'.tr)),
      ],
    );
  }
}
