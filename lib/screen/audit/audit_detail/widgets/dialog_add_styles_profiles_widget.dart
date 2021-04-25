import 'package:bodidatacms/common/bloc/bloc.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/screen/audit/audit_detail/cubit/dialog_audit_detail_cubit.dart';
import 'package:bodidatacms/widgets/custom_loading_linear_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class DialogAddStyleProfileWidget
    extends CubitWidget<DialogAuditDetailCubit, DialogAuditDetailState> {
  static BlocProvider<DialogAuditDetailCubit> provider(
      {required int auditId, required String typeData}) {
    return BlocProvider(
        create: (context) => DialogAuditDetailCubit(auditId),
        child: DialogAddStyleProfileWidget(
          typeAddData: typeData,
          auditId: auditId,
        ));
  }

  final String typeAddData;
  final int auditId;
  DialogAddStyleProfileWidget(
      {required this.auditId, required this.typeAddData});

  @override
  Widget builder(BuildContext context, DialogAuditDetailState state) {
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
                                                .read<DialogAuditDetailCubit>()
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
                                                      DialogAuditDetailCubit>()
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
    final state = context.watch<DialogAuditDetailCubit>().state;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
            onPressed: () {
              context.read<DialogAuditDetailCubit>().saveData(auditId, false);
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(textButtonRed)),
            child: Text('cancel'.tr)),
        SizedBox(width: 10.0),
        ElevatedButton(
            onPressed: () {
              if (state.data.auditDetailData!.data == null) {
                print('Save Local');
                typeData == 'style'
                    ? Get.back(result: state.data.listAuditStyle)
                    : Get.back(result: state.data.listAuditProfile);
                return;
              }
              context.read<DialogAuditDetailCubit>().saveData(auditId, true);
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(indigoColor)),
            child: Text('save'.tr)),
      ],
    );
  }
}
