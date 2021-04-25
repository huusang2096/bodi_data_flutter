import 'package:bodidatacms/model/audit/audit_session_response.dart';
import 'package:bodidatacms/routes.dart';
import 'package:bodidatacms/screen/audit/cubit/audit_cubit.dart';
import 'package:bodidatacms/model/audit/audit_session_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class ListSessionsWidget extends StatelessWidget {
  final paddingLeftDefault = 12.0;
  final bool shrinkWrap;
  const ListSessionsWidget({Key? key, this.shrinkWrap = true})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<AuditSessionData> data =
        context.watch<AuditCubit>().state.data.listAuditSession;
    final bool checkInitial =
        context.watch<AuditCubit>().state.data.getDataInitial;
    return bodyWidgetDeviceCommon(data, checkInitial);
  }

  Widget bodyWidgetDeviceCommon(List<AuditSessionData> data, bool isInitial) {
    if (isInitial == false) if (data.isEmpty) {
      return Container(child: Center(child: Text('no_result'.tr)));
    }
    return ListView.separated(
        shrinkWrap: shrinkWrap,
        primary: false,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          if (index == data.length) {
            return SizedBox.shrink();
          }
          return itemListSessions(data[index], index, context);
        },
        separatorBuilder: (context, index) {
          if (data.length == 0) {
            return SizedBox.shrink();
          }
          return Divider(
            color: Colors.grey,
            thickness: 0.5,
          );
        },
        itemCount: data.length + 1);
  }

  Widget itemListSessions(
      AuditSessionData item, int indexListSessions, BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          Get.toNamed(AppRoute.url_auditDetails.trArgs([item.id.toString()]));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(left: paddingLeftDefault),
                  child: Text(
                    item.name ?? '',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.separated(
                      padding: EdgeInsets.only(left: paddingLeftDefault),
                      itemCount: item.styles!.length > 3
                          ? item.isShowMoreStyle
                              ? 3
                              : item.styles!.length
                          : item.styles!.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final StyleAudit itemStyle = item.styles![index];
                        return Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                itemStyle.name ?? '',
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: Text(
                                  itemStyle.modelCode ?? '',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 6.0);
                      },
                    ),
                    item.styles!.length > 3
                        ? item.isShowMoreStyle
                            ? showLessOrMoreWidget(() {
                                context
                                    .read<AuditCubit>()
                                    .changeShowMore(item.id!);
                              }, 'show ${item.styles!.length - 3} more')
                            : showLessOrMoreWidget(() {
                                context
                                    .read<AuditCubit>()
                                    .changeShowMore(item.id!);
                              }, 'show less')
                        : SizedBox.shrink()
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: ListView.separated(
                  padding: EdgeInsets.only(left: paddingLeftDefault),
                  itemCount: item.profiles!.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final itemProfile = item.profiles![index];
                    return Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            itemProfile.name ?? '',
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 15.0);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget showLessOrMoreWidget(Function onTap, String showTitle) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Padding(
        padding: EdgeInsets.only(left: paddingLeftDefault, top: 6.0),
        child: Text(showTitle,
            style: TextStyle(color: Colors.blue, fontSize: 12.0)),
      ),
    );
  }
}
