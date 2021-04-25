import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/screen/profile/cubit/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_rx/src/rx_workers/utils/debouncer.dart';

class SearchWidget extends StatelessWidget {
  final String? titleButton;
  final Function()? onPress;
  final IconData? icon;
  final Color? colorIcon;
  final double paddingLeftButton;
  final double paddingRightButton;
  SearchWidget(
      {this.titleButton,
      this.onPress,
      this.icon,
      this.colorIcon,
      this.paddingLeftButton = 30,
      this.paddingRightButton = 30.0});

  @override
  Widget build(BuildContext context) {
    final _debouncer = Debouncer(delay: new Duration(microseconds: 500));
    // ignore: close_sinks
    ProfileCubit _cubit = context.watch<ProfileCubit>();
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 10.0),
            child: TextFormField(
                textCapitalization: TextCapitalization.sentences,
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  _debouncer.call(() {
                    if (value.isNotEmpty) {
                      _cubit.searchWithKey(value);
                    } else {
                      _cubit.searchWithKey("");
                    }
                  });
                },
                decoration: InputDecoration(
                    isDense: true,
                    hintText: 'hint_text_search_inventory'.tr,
                    hintStyle: textGreyBold,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/images/icon_search.svg',
                        width: 12,
                        height: 12,
                        color: Colors.blueGrey.shade600,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: boder, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: boder, width: 2)),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: boder, width: 2)))),
          ),
        ),
        titleButton != null
            ? Container(
                padding: EdgeInsets.only(
                    left: paddingLeftButton, right: paddingRightButton),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: onPress ?? () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(indigoColor)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: icon != null
                            ? Row(
                                children: [
                                  Icon(
                                    icon,
                                    size: 20,
                                    color: colorIcon ?? Colors.white,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    titleButton?.tr ?? '',
                                    style: textButton,
                                  ),
                                ],
                              )
                            : Text(
                                titleButton?.tr ?? '',
                                style: textButton,
                              ),
                      ),
                    ),
                  ],
                ),
              )
            : SizedBox.shrink(),
      ],
    );
  }
}
