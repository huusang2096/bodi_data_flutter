import 'package:bodidatacms/common/bloc/cubit_widget.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/comments/comment.dart';
import 'package:bodidatacms/screen/comments/cubit/comments_cubit.dart';
import 'package:bodidatacms/screen/comments/messager_content_widget.dart';
import 'package:bodidatacms/screen/style/cubit/style_cubit.dart';
import 'package:bodidatacms/screen/style/widget/button_widget.dart';
import 'package:bodidatacms/screen/style/widget/style_input.dart';
import 'package:bodidatacms/widgets/custom_loading_linear_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'widget/dialog_permission.dart';

class StyleScreen extends CubitWidget<StyleCubit, StyleState> {
  int styleID = 0;
  bool isLoading = false;

  static provider() {
    int id = -1;
    if (Get.parameters['id'] != null) {
      id = int.parse(Get.parameters['id']!);
    }

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => StyleCubit(id)),
        BlocProvider(
            create: (context) => CommentsCubit(CommentModule.STYLE, id)),
      ],
      child: StyleScreen(),
    );
  }

  Widget buildBody(var deviceType, BuildContext context, StyleState state) {
    if (deviceType == DeviceScreenType.desktop) {
      return buildUIDesktop(context, deviceType, state);
    } else {
      return buildUIOther(context, deviceType, state);
    }
  }

  Widget buildUIDesktop(BuildContext context, DeviceScreenType deviceScreenType,
      StyleState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('style_specifications'.tr, style: header),
            ActionWidget(
              onPressPermission: () => showDialog(
                  builder: (_) => PermissionDialog.provider(
                      context
                              .watch<StyleCubit>()
                              .state
                              .data
                              .styleRequest
                              .styleName ??
                          '',
                      context.read<StyleCubit>().state.data.styleId),
                  context: context),
            ),
          ],
        ),
        if (state.data.isLoading) ...[
          CustomLoadingLinearWidget(
            height: 2,
            marginHorizontal: 0,
            marginVertical: 2.0,
          )
        ] else ...[
          SizedBox(
            height: 6,
          )
        ],
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(flex: 1, child: StypeInputWidget()),
              SizedBox(width: 10),
              Flexible(flex: 1, child: MessagerContentWidget()),
            ],
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }

  Widget buildUIOther(BuildContext context, DeviceScreenType deviceScreenType,
      StyleState state) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('style_specifications'.tr, style: header),
          if (state.data.isLoading) ...[
            CustomLoadingLinearWidget(
              height: 2,
              marginHorizontal: 0,
              marginVertical: 2.0,
            )
          ] else ...[
            SizedBox(
              height: 6,
            )
          ],
          ActionWidget(
            onPressPermission: () => showDialog(
                builder: (_) => PermissionDialog.provider(
                    context
                            .watch<StyleCubit>()
                            .state
                            .data
                            .styleRequest
                            .styleName ??
                        '',
                    context.read<StyleCubit>().state.data.styleId),
                context: context),
          ),
          StypeInputWidget(),
          MessagerContentWidget()
        ],
      ),
    );
  }

  @override
  Widget builder(BuildContext context, StyleState state) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: buildBody(deviceType, context, state),
        ));
  }
}
