import 'package:bodidatacms/model/group/group_data.dart';
import 'package:bodidatacms/widgets/custom_loading_linear_widget.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:bodidatacms/common/style.dart';

import 'package:bodidatacms/screen/user/widgets/search_bar_widget.dart';
import 'package:bodidatacms/screen/user/widgets/user_item_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get_rx/src/rx_workers/utils/debouncer.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bodidatacms/screen/user/cubit/user_cubit.dart';

class BuildListUserWidget extends HookWidget {
  final DeviceScreenType deviceScreenType;
  final TextEditingController searchBoxController;
  BuildListUserWidget(
      {Key? key,
      required this.deviceScreenType,
      required this.searchBoxController})
      : super(key: key);

  final _debouncer = Debouncer(delay: Duration(milliseconds: 500));
  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = useTextEditingController();

    final allUserTemp = context.watch<UserCubit>().state.data.listTempAllUser;

    if (allUserTemp == null) {
      return SizedBox.shrink();
    }
    if (allUserTemp.isEmpty) {
      return Container(
          margin: EdgeInsets.symmetric(vertical: 5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('no_user_found'.tr)],
          ));
    }
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return UserItemRow(
            username: allUserTemp[index].name ?? '',
            groups: allUserTemp[index].lengthGroupByUser ?? 0,
            onClickEdit: () {
              context.read<UserCubit>().getAllGroup(allUserTemp[index].id!);
              showEditGroupDialog(
                  context: context,
                  userId: allUserTemp[index].id,
                  userName: allUserTemp[index].name ?? '',
                  searchController: searchController);
            },
            onClickDeactivate: () {},
            onClickReset: () {},
            isRow: deviceScreenType != DeviceScreenType.mobile,
            deviceScreenType: deviceScreenType);
      },
      itemCount: allUserTemp.length,
    );
  }

  void showEditGroupDialog(
      {required BuildContext context,
      required String userName,
      required int? userId,
      required TextEditingController searchController}) {
    // ignore: close_sinks
    final cubit = BlocProvider.of<UserCubit>(context);
    showDialog(
        context: context,
        builder: (_) {
          return BlocProvider.value(
            value: cubit,
            child: Dialog(
              child: Builder(builder: (context) {
                final groupByUser =
                    context.watch<UserCubit>().state.data.allGroupInUser;
                final listTempGroups =
                    context.watch<UserCubit>().state.data.listTempSearchDlgEdit;
                final isLoadinglistTempDlgEdit = context
                    .watch<UserCubit>()
                    .state
                    .data
                    .isLoadinglistTempDlgEdit;

                return Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      width: 450.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'group_by'.trArgs([userName]),
                            style: titleDialog,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 10),
                          SearchBarWidget(
                              textEditingController: searchController,
                              onChange: (value) {
                                _debouncer.call(() {
                                  if (value.isEmpty)
                                    context
                                        .read<UserCubit>()
                                        .whenSearchDialogNull();
                                  else
                                    context
                                        .read<UserCubit>()
                                        .searchInDialogEdit(value);
                                });
                              },
                              readOnly: isLoadinglistTempDlgEdit,
                              hintext: 'search_by_group_name'.tr),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.only(right: 5.0),
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'group_name'.tr,
                                      style: title,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding:
                                        EdgeInsets.only(left: 5.0, right: 20.0),
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      'active',
                                      style: title,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2.0),
                            child: isLoadinglistTempDlgEdit
                                ? CustomLoadingLinearWidget(
                                    height: 2,
                                    marginVertical: 0.0,
                                    marginHorizontal: 0.0,
                                  )
                                : Divider(
                                    color: Colors.grey,
                                    height: 2.0,
                                    thickness: 2.0,
                                  ),
                          ),
                          SizedBox(height: 5.0),
                          listTempGroups == null
                              ? SizedBox.shrink()
                              : (listTempGroups.isEmpty
                                  ? emptyOrNotFound('no_group_found'.tr)
                                  : _buildListGroup(
                                      context: context,
                                      listTempGroups: listTempGroups,
                                      groupByUser: groupByUser,
                                      onChangeActive: (val, groupId) {
                                        context
                                            .read<UserCubit>()
                                            .changeActiveGroup(
                                                active: val,
                                                userId: userId,
                                                groupId: groupId);
                                      },
                                    )),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0.0,
                      top: 0.0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: CloseButton(
                          color: Colors.red,
                          //Align(
                          // alignment: Alignment.topRight,
                          // child: CircleAvatar(
                          //   radius: 14.0,
                          //   backgroundColor: Colors.red,
                          //   child: Icon(Icons.close,
                          //       color: Colors.white, size: 21),
                          // ),
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
          );
        }).then((_) async {
      await Future.delayed(Duration(milliseconds: 200));
      searchController.clear();
      context.read<UserCubit>().whenCompleteSearchDialogNull();
      context.read<UserCubit>().getAllUser(search: searchBoxController.text);
    });
  }

  Row emptyOrNotFound(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: body1,
        )
      ],
    );
  }

  _buildListGroup({
    required BuildContext context,
    required List<GroupData> listTempGroups,
    required List<GroupData> groupByUser,
    required Function(bool, int?) onChangeActive,
  }) {
    List<Widget> children = [];
    children.addAll(
      listTempGroups.asMap().map((index, value) {
        return MapEntry(
            index,
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5.0),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(right: 5.0),
                        child: Text(
                          value.name ?? '',
                          style: body1,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.topRight,
                        padding: EdgeInsets.only(right: 20.0, left: 5.0),
                        child: SizedBox(
                          width: 45.0,
                          height: 30.0,
                          child: listTempGroups[index].isLoading
                              ? Center(
                                  child: SpinKitFadingCircle(
                                  color: indigoColor,
                                  size: 20,
                                ))
                              : FlutterSwitch(
                                  activeColor: Colors.teal.shade400,
                                  valueFontSize: 12.0,
                                  toggleSize: 25.0,
                                  value: groupByUser.isEmpty
                                      ? false
                                      : groupByUser.any(
                                          (element) => element.id == value.id),
                                  onToggle: (val) {
                                    onChangeActive(
                                        val, listTempGroups[index].id);
                                  },
                                ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
      }).values,
    );
    return Expanded(
      child: Container(
        child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(mainAxisSize: MainAxisSize.max, children: children)),
      ),
    );
  }
}
