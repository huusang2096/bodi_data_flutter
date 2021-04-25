import 'package:bodidatacms/common/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String hintext;
  final bool readOnly;
  final Function(String) onChange;
  final FocusNode? focusNode;
  const SearchBarWidget(
      {Key? key,
      this.textEditingController,
      this.focusNode,
      required this.hintext,
      required this.readOnly,
      required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Container(
        height: 60,
        child: TextFormField(
          controller: textEditingController,
          focusNode: focusNode,
          onChanged: (value) {
            onChange(value);
          },
          readOnly: readOnly,
          decoration: InputDecoration(
              isDense: true,
              hintText: hintext.tr,
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
                  borderSide: BorderSide(color: boder, width: 2))),
        ),
      );
    });
  }
}
