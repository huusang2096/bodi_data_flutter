import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/audit/audit_session_profile.dart';
import 'package:bodidatacms/screen/audit/widget/dialog_pick_filter.dart';
import 'package:flutter/material.dart';
import 'package:bodidatacms/screen/audit/cubit/audit_dialog/audit_dialog_cubit.dart';
import 'package:bodidatacms/screen/audit/cubit/audit_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class ListPariticipants extends StatelessWidget {
  final BorderSide borderSide = BorderSide(
    color: Color(0xFFC5CED8),
    style: BorderStyle.solid,
    width: 2.0,
  );
  @override
  Widget build(BuildContext context) {
    final List<ProfileAudit> listProfileAudit =
        context.watch<AuditCubit>().state.data.listProfileAudit;
    final isLoading = context.watch<AuditCubit>().state.data.isLoading;
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: buildListData(listProfileAudit, context, isLoading)),
    );
  }

  List<Widget> buildListData(List<ProfileAudit> listProfileAudit,
      BuildContext context, bool isLoading) {
    List<Widget> listWidgets = [];
    listWidgets
      ..add(Text("pariticipants".tr))
      ..addAll(listProfileAudit
          .map((e) => buildItem(
              e.name ?? '',
              () => context
                  .read<AuditCubit>()
                  .removeItemFilter(e.id!, TypeFilter.participants)
                  .then((value) =>
                      context.read<AuditCubit>().fetchDataAudiSession(false))))
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
            final listProfileAudit = await context
                .read<AuditCubit>()
                .getListFliter(TypeFilter.participants);

            showDialog(
                    builder: (_) {
                      return DialogPickFilter.provider(
                          listStyleAudit: null,
                          listProfileAudit: listProfileAudit.cast(),
                          typeFilter: TypeFilter.participants);
                    },
                    context: context)
                .then((value) {
              if (value != null && value == true)
                context
                    .read<AuditCubit>()
                    .fetchFilter(TypeFilter.participants)
                    .then((value) =>
                        context.read<AuditCubit>().fetchDataAudiSession(false));
            });
          }
        },
        child: SizedBox(
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  width: 1,
                  color: lineIndigo,
                ))),
                child: Text('add'.tr + ' ' + 'pariticipants'.tr,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      color: indigoColor,
                    )),
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
