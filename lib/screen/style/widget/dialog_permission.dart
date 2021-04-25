import 'package:bodidatacms/common/bloc/cubit_widget.dart';
import 'package:bodidatacms/common/config.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/screen/style/widget/row_item_radio_widget.dart';
import 'package:bodidatacms/widgets/custom_loading_linear_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:bodidatacms/screen/style/cubit_permission/permission_cubit.dart';

class PermissionDialog extends CubitWidget<PermissionCubit, PermissionState> {
  static BlocProvider<PermissionCubit> provider(
      String? styleName, int styleId) {
    return BlocProvider(
        create: (context) => PermissionCubit(styleName, styleId),
        child: PermissionDialog());
  }

  @override
  Widget builder(BuildContext context, PermissionState state) {
    return AlertDialog(
      actions: [
        //  button cancel & save
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              buildButtonCancel(context),
              SizedBox(width: 20),
              buildButtonSave(context, state.data.isLoading),
            ],
          ),
        ),
      ],
      title: Column(
        children: [
          buildTitle(state),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(bottom: 5.0),
            child: buildTitleTable(),
          ),
          state.data.isLoading
              ? CustomLoadingLinearWidget(
                  height: 2,
                  marginVertical: 0,
                  marginHorizontal: 0,
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: Divider(height: 2, color: boder),
                ),
        ],
      ),
      content: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Column(
                      children: state.data.listGroupInUser
                          .asMap()
                          .map((key, value) {
                            final item = state.data.listGroupInUser[key];
                            return MapEntry(
                              key,
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: RowItemRadioWidget(
                                    titleText: item.name ?? '',
                                    groupData: item),
                              ),
                            );
                          })
                          .values
                          .toList(),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                //footer
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 10),
                //   child: Text('footer_permission_1'.tr),
                // ),
                // SizedBox(height: 10),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 10),
                //   child: Text('footer_permission_2'.tr),
                // ),
                // SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildTitleTable() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              'group'.tr,
              style: body1,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: listPermissionDefault
                  .map((e) => Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Text(
                            e.name!.tr,
                            style: body1,
                          ),
                        ),
                      ))
                  .toList()),
        ),
      ],
    );
  }

  GestureDetector buildButtonCancel(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 2, color: lineRed))),
        child: Text('cancel'.tr,
            style: body1.merge(TextStyle(color: textButtonRed))),
      ),
    );
  }

  ElevatedButton buildButtonSave(BuildContext context, bool isLoading) {
    return ElevatedButton(
      onPressed: () {
        context.read<PermissionCubit>().updatePermission().then(
            (value) => context.read<PermissionCubit>().getAllGroupInUser());
      },
      child: Row(
        children: [
          isLoading
              ? SpinKitFadingCircle(
                  color: Colors.white,
                  size: 20,
                )
              : Icon(
                  Icons.security,
                  size: 20,
                ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'save'.tr,
              style: textButton,
            ),
          ),
        ],
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(nameComment),
      ),
    );
  }

  Widget buildTitle(PermissionState state) {
    final name = state.data.name;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          'permission_on'.tr,
          style: titleHeader.copyWith(fontWeight: FontWeight.normal),
        ),
        Expanded(
          child: Text(
            name,
            style: titleHeader,
          ),
        ),
      ],
    );
  }
}
