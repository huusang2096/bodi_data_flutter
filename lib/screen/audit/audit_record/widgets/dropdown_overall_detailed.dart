import 'package:bodidatacms/common/style.dart';
import 'package:flutter/material.dart';

class DropdownOverallDetailed extends StatelessWidget {
  const DropdownOverallDetailed({
    Key? key,
    required this.paddingDefault,
    required this.items,
    required this.selectedValue,
    required this.onChange,
    required this.marginRight,
    required this.isExpanded,
  }) : super(key: key);

  final double paddingDefault;
  final double marginRight;
  final List<dynamic> items;
  final int selectedValue;
  final Function(dynamic) onChange;
  final bool isExpanded;
  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return SizedBox.shrink();
    }
    return Container(
      margin: EdgeInsets.only(right: marginRight),
      padding: EdgeInsets.symmetric(
          horizontal: paddingDefault / 2, vertical: paddingDefault / 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.0),
        border: Border.all(color: borderGrey2, width: 2.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<dynamic>(
            elevation: 0,
            isDense: true,
            onChanged: (value) => onChange(value!),
            isExpanded: isExpanded,
            value: selectedValue,
            items: items
                .map((e) => DropdownMenuItem<dynamic>(
                      value: e.id,
                      child: Container(
                          child: Text(
                        e.name,
                      )),
                    ))
                .toList()),
      ),
    );
  }
}
