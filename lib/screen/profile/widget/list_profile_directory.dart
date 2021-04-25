import 'package:bodidatacms/common/resources.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/profile/profile_response.dart';
import 'package:bodidatacms/routes.dart';
import 'package:bodidatacms/screen/profile/cubit/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:get/get.dart';
import 'package:bodidatacms/common/extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListProfileDirectory extends StatelessWidget {
  final DeviceScreenType? deviceScreenType;
  final bool skinWrapList;
  ListProfileDirectory(
      {Key? key,
      this.deviceScreenType = DeviceScreenType.desktop,
      this.skinWrapList = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ProfileModel> listProfiles =
        context.watch<ProfileCubit>().state.data.listProfiles;
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView.separated(
        primary: false,
        shrinkWrap: skinWrapList,
        physics: BouncingScrollPhysics(),
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 10.0,
          );
        },
        padding: EdgeInsets.only(top: 10.0),
        itemCount: listProfiles.length,
        itemBuilder: (context, index) {
          final item = listProfiles.elementAt(index);
          return buildItemProfileDirector(item, context, deviceScreenType!);
        },
      ),
    );
  }

  Widget buildItemProfileDirector(ProfileModel item, BuildContext context,
      DeviceScreenType deviceScreenType) {
    return InkWell(
      onTap: () async {
        var data = await Get.toNamed(
            AppRoute.url_profileDetails.trArgs([item.id.toString()]),
            arguments: true);
        if (data != null && data) {
          context.read<ProfileCubit>().getListProfiles();
        }
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFC5CED8),
            style: BorderStyle.solid,
            width: 2.0,
          ),
          color: Colors.transparent,
        ),
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            item.name ?? '',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: titleBold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Wrap(
                            children: [
                              Container(
                                color: Color.fromRGBO(144, 188, 179, 1),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 10),
                                  child: Text(
                                    item.clothingPreferency!.name ?? "",
                                    style: body1.copyWith(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    deviceScreenType != DeviceScreenType.desktop
                        ? Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                item.hashtags!,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: body1.copyWith(color: indigoColor),
                              ),
                            ],
                          )
                        : SizedBox.shrink(),
                  ],
                ),
              ),
              deviceScreenType == DeviceScreenType.desktop
                  ? Expanded(
                      flex: 1,
                      child: Text(
                        item.hashtags ?? "",
                        style: TextStyle(color: Colors.purple),
                      ))
                  : SizedBox.shrink(),
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          var data = await Get.toNamed(
                              AppRoute.url_profileDetails
                                  .trArgs([item.id.toString()]),
                              arguments: true);
                          if (data != null && data) {
                            context.read<ProfileCubit>().getListProfiles();
                          }
                        },
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Container(
                                    margin: EdgeInsets.only(bottom: 5),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.indigo,
                                                width: 1))),
                                    child: Text('edit'.tr,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.indigo,
                                        ))),
                              ),
                              WidgetSpan(
                                child: Container(
                                  child: Images.editProfile.loadImage(
                                      size: 25, color: Colors.indigo),
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          context
                              .read<ProfileCubit>()
                              .deleteProfile(item.id ?? 0, item.name ?? '');
                        },
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.red),
                            children: [
                              WidgetSpan(
                                child: Container(
                                    margin: EdgeInsets.only(bottom: 5),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.red, width: 1))),
                                    child: Text('remove'.tr,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.red,
                                        ))),
                              ),
                              WidgetSpan(
                                child: Container(
                                  child: Images.removeProfile
                                      .loadImage(size: 25, color: Colors.red),
                                  margin: EdgeInsets.only(left: 5, right: 5),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
