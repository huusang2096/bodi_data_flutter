import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/profile/hashtag.dart';
import 'package:bodidatacms/screen/profile/cubit/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListHashtags extends StatelessWidget {
  final DeviceScreenType? deviceScreenType;
  ListHashtags({this.deviceScreenType = DeviceScreenType.desktop});
  @override
  Widget build(BuildContext context) {
    var listHashTag = context.watch<ProfileCubit>().state.data.listHashtags;

    Container buildItem(Hashtag item) {
      return Container(
        height: 30,
        padding: EdgeInsets.all(4),
        child: Row(
          children: [
            Transform.scale(
              scale: 0.8,
              child: Theme(
                data: ThemeData(unselectedWidgetColor: boder),
                child: Checkbox(
                  value: item.isSelect,
                  fillColor: MaterialStateProperty.all(
                   (   item.isSelect == null || item.isSelect == false)
                          ? Colors.grey
                          : indigoColor),
                  activeColor: indigoColor,
                  onChanged: (value) {
                    item.isSelect = value;
                    context.read<ProfileCubit>().getListProfiles();
                  },
                ),
              ),
            ),
            SizedBox(width: 2),
            Flexible(
              child: Text(item.name ?? '',
                  overflow: TextOverflow.ellipsis,
                  maxLines: null,
                  style: body1),
            ),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('hashtags'.tr, style: titleBold),
            ListView.builder(
              shrinkWrap: true,
              primary: false,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.only(top: 10.0),
              itemCount: listHashTag.length,
              itemBuilder: (context, index) {
                final item = listHashTag.elementAt(index);
                return buildItem(item);
              },
            ),
          ],
        ),
      ),
    );
  }
}
