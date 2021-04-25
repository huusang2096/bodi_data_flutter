import 'package:bodidatacms/screen/audit/cubit/audit_cubit.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bodidatacms/screen/audit/cubit/audit_dialog/audit_dialog_cubit.dart';

import '../../../model/audit/audit_session_style.dart';
import 'dialog_pick_filter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListStyles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isLoading = context.watch<AuditCubit>().state.data.isLoading;
    final List<StyleAudit> listStyleAudit =
        context.watch<AuditCubit>().state.data.listStyleAudit;
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: buildListData(listStyleAudit, context, isLoading)),
    );
  }

  List<Widget> buildListData(
      List<StyleAudit> listStyleAudit, BuildContext context, bool isLoading) {
    List<Widget> listWidgets = [];
    listWidgets
      ..add(Text("styles".tr))
      ..addAll(listStyleAudit
          .map(
            (e) => buildItem(
              e.name ?? '',
              () => context
                  .read<AuditCubit>()
                  .removeItemFilter(e.id!, TypeFilter.style)
                  .then((value) =>
                      context.read<AuditCubit>().fetchDataAudiSession(false)),
            ),
          )
          .toList())
      ..add(buildItemAdd(context, isLoading));
    return listWidgets;
  }

  Widget buildItemAdd(BuildContext context, bool isLoading) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: GestureDetector(
        onTap: () async {
          if (!isLoading) {
            final listStyleAudit = await context
                .read<AuditCubit>()
                .getListFliter(TypeFilter.style);
            showDialog(
                    builder: (_) {
                      return DialogPickFilter.provider(
                          listStyleAudit: listStyleAudit.cast(),
                          listProfileAudit: null,
                          typeFilter: TypeFilter.style);
                    },
                    context: context)
                .then((value) {
              if (value != null && value == true)
                context.read<AuditCubit>().fetchFilter(TypeFilter.style).then(
                    (value) =>
                        context.read<AuditCubit>().fetchDataAudiSession(false));
            });
          }
        },
        child: Row(
          children: [
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  width: 1,
                  color: lineIndigo,
                ))),
                child: Text("add_styles".tr,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      color: indigoColor,
                    )),
              ),
            ),
            SizedBox(width: 4),
            Icon(
              Icons.add,
              size: 10,
              color: indigoColor,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItem(String itemText, Function onTap) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: lineblue,
                  ),
                ),
              ),
              child: Text(
                itemText,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: textItem.copyWith(color: textblueColor),
              ),
            ),
          ),
          SizedBox(width: 4),
          GestureDetector(
            onTap: () => onTap(),
            child: Icon(
              Icons.close,
              size: 10,
              color: textblueColor,
            ),
          ),
        ],
      ),
    );
  }
}
