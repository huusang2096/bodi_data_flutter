import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/screen/inventory/cubit/inventory_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_rx/src/rx_workers/utils/debouncer.dart';
import 'package:get/get.dart';

class SearchWidget extends StatelessWidget {
  final String? titleButton;
  final Function()? onPress;
  final IconData? icon;
  final Color? colorIcon;
  final double paddingHorizontal;
  SearchWidget(
      {this.titleButton,
      this.onPress,
      this.icon,
      this.colorIcon,
      this.paddingHorizontal = 30.0});
  final _debouncer = Debouncer(delay: Duration(milliseconds: 500));
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            textCapitalization: TextCapitalization.sentences,
            keyboardType: TextInputType.text,
            onChanged: (value) {
              _debouncer.call(() {
                context.read<InventoryCubit>().changeKeySearch(value);
              });
            },
            decoration: buildInputDecoration(),
          ),
        ),
        SizedBox(width: 10),
        titleButton != null
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: onPress ?? () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(indigoColor)),
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
                        : Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 4),
                            child: Text(
                              titleButton?.tr ?? '',
                              style: textButton,
                            ),
                          ),
                  ),
                ),
              )
            : SizedBox.shrink(),
      ],
    );
  }

  InputDecoration buildInputDecoration() {
    return InputDecoration(
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
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: boder, width: 2)),
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: boder, width: 2)),
        errorBorder:
            OutlineInputBorder(borderSide: BorderSide(color: boder, width: 2)));
  }
}
