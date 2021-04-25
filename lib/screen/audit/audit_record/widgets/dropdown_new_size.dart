import 'package:bodidatacms/common/style.dart';
import 'package:flutter/material.dart';

class DropdownNewSize extends StatelessWidget {
  const DropdownNewSize({
    Key? key,
    required this.paddingDefault,
    required this.items,
    required this.selectedValue,
    required this.onChange,
    this.maxWidth = 280,
    this.maxHeight = 180,
    this.marginRight = 0,
    this.marginTop = 0,
    this.marginBottom = 0,
    this.marginLeft = 0,
    this.isExpanded = true,
    this.valueIsKey = true,
  }) : super(key: key);

  final double paddingDefault;
  final double maxWidth;
  final double maxHeight;
  final double marginRight;
  final double marginTop;
  final double marginBottom;
  final double marginLeft;
  final List<String> items;
  final dynamic? selectedValue;
  final Function(dynamic) onChange;
  final bool? isExpanded;
  final bool valueIsKey;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: marginRight,
          top: marginTop,
          left: marginLeft,
          bottom: marginBottom),
      padding: EdgeInsets.symmetric(
          horizontal: paddingDefault / 2, vertical: paddingDefault / 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.0),
        border: Border.all(color: borderGrey2, width: 2.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          elevation: 0,
          isDense: true,
          onChanged: (value) => onChange(value!),
          isExpanded: isExpanded!,
          value: items.isEmpty ? null : selectedValue,
          items: items
              .asMap()
              .map(
                (key, value) => MapEntry(
                    key,
                    DropdownMenuItem(
                      value: valueIsKey ? key : value,
                      child: Container(
                          child: Text(value,
                              maxLines: 1, overflow: TextOverflow.ellipsis)),
                    )),
              )
              .values
              .toList(),
        ),
      ),
    );
  }
}
