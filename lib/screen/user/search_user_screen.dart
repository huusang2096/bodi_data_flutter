import 'package:bodidatacms/common/bloc/cubit_widget.dart';
import 'package:bodidatacms/screen/user/widgets/build_list_user_widget.dart';
import 'package:bodidatacms/screen/user/widgets/build_row_widget.dart';
import 'package:bodidatacms/screen/user/widgets/limit_page_user_widget.dart';
import 'package:bodidatacms/screen/user/widgets/search_bar_widget.dart';
import 'package:bodidatacms/widgets/custom_loading_linear_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_workers/utils/debouncer.dart';

import 'package:responsive_builder/responsive_builder.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bodidatacms/screen/user/cubit/user_cubit.dart';
import 'package:bodidatacms/screen/user/widgets/add_group_widget.dart';

class SearchUserScreen extends CubitWidget<UserCubit, UserState> {
  static BlocProvider<UserCubit> provider() {
    return BlocProvider(
        create: (context) => UserCubit(), child: SearchUserScreen());
  }

  final FocusNode focusNode = FocusNode();
  final TextEditingController searchBoxController = TextEditingController();
  final _debouncer = Debouncer(delay: Duration(milliseconds: 500));
  @override
  Widget builder(BuildContext context, UserState state) {
    DeviceScreenType deviceType = getDeviceType(MediaQuery.of(context).size);

    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => focusNode.unfocus(),
        child: SafeArea(
          child: _buildBody(deviceType, context),
        ),
      ),
    );
  }

  _buildBody(DeviceScreenType deviceType, BuildContext context) {
    final isLoading = context.watch<UserCubit>().state.data.isLoading;
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          SearchBarWidget(
              textEditingController: searchBoxController,
              focusNode: focusNode,
              onChange: (value) {
                _debouncer.call(() {
                  if (value.isEmpty)
                    context.read<UserCubit>().whenSearchBoxNull();
                  else
                    context.read<UserCubit>().searchUser(value);
                });
              },
              readOnly: context.watch<UserCubit>().state.data.isLoading,
              hintext: 'search_by_username'.tr),
          isLoading
              ? CustomLoadingLinearWidget(
                  height: 3.0,
                  marginHorizontal: 5.0,
                )
              : SizedBox(height: 3.0),
          SizedBox(height: 7),
          AddGroupWidget(),
          SizedBox(height: 10),
          BuildRowWidget(
            deviceScreenType: deviceType,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: BuildListUserWidget(
                        deviceScreenType: deviceType,
                        searchBoxController: searchBoxController)),
                LimitPageUserWidget()
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose(BuildContext context) {
    focusNode.dispose();
    super.dispose(context);
  }
}
