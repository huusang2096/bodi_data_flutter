import 'package:bodidatacms/common/bloc/bloc.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/routes.dart';
import 'package:bodidatacms/screen/profile/cubit/profile_cubit.dart';
import 'package:bodidatacms/screen/profile/widget/limit_page.dart';
import 'package:bodidatacms/screen/profile/widget/list_genders.dart';
import 'package:bodidatacms/screen/profile/widget/list_hashtags.dart';
import 'package:bodidatacms/screen/profile/widget/list_profile_directory.dart';
import 'package:bodidatacms/widgets/custom_loading_linear_widget.dart';
import 'package:bodidatacms/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:get/get.dart';

class ProfileScreen extends CubitWidget<ProfileCubit, ProfileState> {
  static BlocProvider<ProfileCubit> provider() {
    return BlocProvider(
        create: (context) => ProfileCubit(), child: ProfileScreen());
  }

  @override
  Widget builder(BuildContext context, ProfileState state) {
    final size = MediaQuery.of(context).size;
    DeviceScreenType deviceScreenType = getDeviceType(size);
    bool isLoading = context.watch<ProfileCubit>().state.data.isLoading;

    Widget buildLoading() {
      return isLoading
          ? CustomLoadingLinearWidget(
              height: 2.0,
              marginVertical: 5.0,
            )
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: SizedBox(height: 2),
            );
    }

    Future<void> newProfile() async {
      var data = await Get.toNamed(AppRoute.profileDetails, arguments: false);

      if (data != null && data) {
        context.read<ProfileCubit>().getListProfiles();
      }
    }

    SingleChildScrollView buildUIOther(
        DeviceScreenType deviceScreenType, BuildContext context) {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'profile_diretory'.tr,
                style: header,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: SearchWidget(
                titleButton: 'new_profile',
                icon: Icons.group_add_outlined,
                onPress: () {
                  newProfile();
                },
              ),
            ),
            SizedBox(height: 5),
            buildLoading(),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'filters'.tr,
                    style: title,
                  ),
                ),
                Flexible(
                    flex: 1,
                    child: ListGenders(
                      deviceScreenType: deviceScreenType,
                    )),
                Flexible(
                    flex: 1,
                    child: ListHashtags(
                      deviceScreenType: deviceScreenType,
                    )),
              ],
            ),
            ListProfileDirectory(
              deviceScreenType: deviceScreenType,
              skinWrapList: true,
            ),
            LimitPageWidget()
          ],
        ),
      );
    }

    Widget buildUIDesktop(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'profile_diretory'.tr,
                    style: header,
                  ),
                ),
              ),
              Flexible(
                flex: 7,
                child: SearchWidget(
                  titleButton: 'new_profile',
                  icon: Icons.group_add_outlined,
                  paddingRightButton: 10,
                  onPress: () {
                    newProfile();
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          buildLoading(),
          SizedBox(height: 25),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 20),
                          child: Text(
                            'filters'.tr,
                            style: title,
                          ),
                        ),
                        ListGenders(),
                        SizedBox(height: 20),
                        ListHashtags(),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          width: 1,
                          color: Colors.black,
                        ))),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Text(
                                  'name'.tr,
                                  style: titleBold,
                                )),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  'hashtags'.tr,
                                  style: titleBold,
                                )),
                            Expanded(flex: 1, child: SizedBox.shrink()),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child: ListProfileDirectory()),
                            LimitPageWidget(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget buildBody(DeviceScreenType deviceScreenType, BuildContext context) {
      if (deviceScreenType == DeviceScreenType.desktop) {
        return buildUIDesktop(context);
      } else {
        return buildUIOther(deviceScreenType, context);
      }
    }

    return Scaffold(
        backgroundColor: Colors.white,
        body: buildBody(deviceScreenType, context));
  }
}
