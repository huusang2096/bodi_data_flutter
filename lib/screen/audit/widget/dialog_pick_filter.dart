import 'package:bodidatacms/common/bloc/cubit_widget.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/audit/audit_session_profile.dart';
import 'package:flutter/material.dart';
import 'package:bodidatacms/screen/audit/cubit/audit_dialog/audit_dialog_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../model/audit/audit_session_style.dart';
import 'package:get/get.dart';

class DialogPickFilter extends CubitWidget<AuditDialogCubit, AuditDialogState> {
  static BlocProvider<AuditDialogCubit> provider(
      {List<StyleAudit>? listStyleAudit,
      List<ProfileAudit>? listProfileAudit,
      required TypeFilter typeFilter}) {
    return BlocProvider(
        create: (context) => AuditDialogCubit(
            listStyleAudit ?? [], listProfileAudit ?? [], typeFilter),
        child: DialogPickFilter());
  }

  @override
  void afterFirstLayout(BuildContext context) {
    context.read<AuditDialogCubit>().fetchFirstData();
    super.afterFirstLayout(context);
  }

  @override
  Widget builder(BuildContext context, AuditDialogState state) {
    final TypeFilter typeFilter = state.data.typeFilter;

    final listSelect = typeFilter == TypeFilter.style
        ? state.data.listStyleAudit.cast()
        : state.data.listProfileAudit.cast();
    final listResult = typeFilter == TypeFilter.style
        ? state.data.listStyleAuditResult.cast()
        : state.data.listProfileAuditResult.cast();

    return AlertDialog(
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          typeFilter == TypeFilter.style
              ? Text('pick_style_in_filler'.tr)
              : Text('pick_profile_in_filler'.tr),
        ],
      ),
      titlePadding: EdgeInsets.fromLTRB(20, 10, 0, 10.0),
      actionsPadding: EdgeInsets.only(bottom: 10.0, right: 20.0),
      content: Container(
        height: 300,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  typeFilter == TypeFilter.style
                      ? Text('select_style'.tr)
                      : Text('select_profile'.tr),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 5.0, bottom: 5.0, right: 20.0),
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
                                        .read<AuditDialogCubit>()
                                        .selectItemFilter(e.id!);
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 5.0),
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
                              .toList(),
                        ),
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
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 5.0, bottom: 5.0, right: 20.0),
                      // height: 300,
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: listResult
                              .map((e) => TextButton(
                                    onPressed: () {
                                      context
                                          .read<AuditDialogCubit>()
                                          .removeItemFilter(e.id!);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
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
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [buidActions(context)],
    );
  }

  Row buidActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
            onPressed: () => context.read<AuditDialogCubit>().saveData(false),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(textButtonRed)),
            child: Text('cancel'.tr)),
        SizedBox(width: 10.0),
        ElevatedButton(
            onPressed: () => context.read<AuditDialogCubit>().saveData(true),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(indigoColor)),
            child: Text('save'.tr)),
      ],
    );
  }
}
