import 'package:bodidatacms/common/bloc/bloc.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/comments/comment.dart';
import 'package:bodidatacms/screen/comments/cubit/comments_cubit.dart';
import 'package:bodidatacms/screen/comments/messager_content_widget.dart';
import 'package:bodidatacms/screen/profile/profile_details/cubit/profile_details_cubit.dart';
import 'package:bodidatacms/screen/profile/profile_details/widgets/pd_form_measure_widget.dart';
import 'package:bodidatacms/screen/profile/profile_details/widgets/pd_form_person_widget.dart';
import 'package:bodidatacms/screen/profile/profile_details/widgets/pd_header_content_widget.dart';
import 'package:bodidatacms/widgets/custom_loading_linear_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProfileDetailsScreen
    extends CubitWidget<ProfileDetailsCubit, ProfileDetailsState> {
  bool isLoading = false;

  static provider() {
    int id = -1;
    if (Get.parameters['id'] != null) {
      id = int.parse(Get.parameters['id']!);
    }

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ProfileDetailsCubit(id)),
        BlocProvider(
            create: (context) => CommentsCubit(CommentModule.PROFILE, id)),
      ],
      child: ProfileDetailsScreen(),
    );
  }

  @override
  Widget builder(BuildContext context, ProfileDetailsState state) {
    final size = MediaQuery.of(context).size;
    DeviceScreenType deviceScreenType = getDeviceType(size);
    isLoading = context.watch<ProfileDetailsCubit>().state.data.isLoading;
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(deviceScreenType, context, state),
    );
  }

  Widget _buildBody(DeviceScreenType deviceScreenType, BuildContext context,
      ProfileDetailsState state) {
    if (deviceScreenType == DeviceScreenType.desktop) {
      return _buildUIDesktop(context, deviceScreenType, state);
    } else {
      return buildUIMobile(deviceScreenType, context, state);
    }
  }

  //if desktop & tablet use same 1 body
  Widget _buildUIDesktop(BuildContext context,
      DeviceScreenType deviceScreenType, ProfileDetailsState state) {
    return Column(
      children: [
        HeaderContentWidget(),
        isLoading
            ? CustomLoadingLinearWidget(
                height: 3.0,
                marginHorizontal: 5.0,
              )
            : SizedBox(height: 3.0),
        SizedBox(height: 10),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FormPerson(),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text('comments'.tr, style: titleHeader),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: MessagerContentWidget(),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 2,
                color: boder,
              ),
              Flexible(
                flex: 1,
                child: SingleChildScrollView(
                  child: FormMeasureWidget(
                    deviceScreenType: deviceScreenType,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildUIMobile(DeviceScreenType deviceScreenType, BuildContext context,
      ProfileDetailsState state) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HeaderContentWidget(),
            isLoading
                ? CustomLoadingLinearWidget(
                    height: 3.0,
                    marginHorizontal: 5.0,
                  )
                : SizedBox(height: 3.0),
            SizedBox(height: 10),
            FormPerson(),
            SizedBox(height: 20),
            FormMeasureWidget(deviceScreenType: deviceScreenType),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('comments'.tr, style: titleHeader),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: MessagerContentWidget(),
            )
          ],
        ),
      ),
    );
  }
}
