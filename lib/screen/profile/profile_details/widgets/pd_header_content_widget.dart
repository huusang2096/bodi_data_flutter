import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/screen/profile/profile_details/cubit/profile_details_cubit.dart';
import 'package:bodidatacms/widgets/button_save.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HeaderContentWidget extends StatelessWidget {
  const HeaderContentWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                'profile_details'.tr,
                style: title.merge(
                  TextStyle(fontSize: 30),
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              children: [
                ButtonSaveCommon(
                  isLoading: false,
                  onTap: () =>
                      context.read<ProfileDetailsCubit>().createProfile(),
                ),
                SizedBox(width: 10),
                if (context.watch<ProfileDetailsCubit>().state.data.profileId !=
                    -1)
                  TextButton(
                    onPressed: () {
                      context.read<ProfileDetailsCubit>().deleteProfile();
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFFB7475B)),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.person_remove_rounded,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(width: 5),
                          Text('delete'.tr, style: textButton),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
