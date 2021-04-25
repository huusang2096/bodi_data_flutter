import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/audit/sub_categories.dart';
import 'package:flutter/material.dart';

class CustomDropdownMobileWidget extends StatelessWidget {
  final int selected;
  final List<SubCategorie> listSub;
  final bool isDisable;
  final Function(int) onChange;
  final bool showTitle;
  final String title;
  final bool isDense;
  final double paddingDefault;

  const CustomDropdownMobileWidget(
      {Key? key,
      required this.selected,
      required this.onChange,
      required this.showTitle,
      required this.isDense,
      this.title = '',
      required this.paddingDefault,
      required this.listSub,
      required this.isDisable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: isDisable,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showTitle) Text(title, style: textCaption),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: paddingDefault / 2, vertical: paddingDefault / 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.0),
              border: Border.all(color: borderGrey2, width: 2.0),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<int>(
                isDense: isDense,
                onChanged: (value) {
                  onChange(value!);
                },
                value: selected,
                items: listSub
                    .asMap()
                    .map((key, e) => MapEntry(
                        key,
                        DropdownMenuItem<int>(
                          value: e.id,
                          child: Text(
                            e.name,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )))
                    .values
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomDropdownMobileOverallOrDetailedWidget extends StatelessWidget {
  final List<dynamic> items;
  final int selectedValue;
  final Function(dynamic) onChange;
  final bool showTitle;
  final String title;
  final bool isDense;
  final double paddingDefault;

  const CustomDropdownMobileOverallOrDetailedWidget({
    Key? key,
    required this.onChange,
    required this.showTitle,
    required this.isDense,
    this.title = '',
    required this.paddingDefault,
    required this.items,
    required this.selectedValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showTitle)
          Text(title, style: body1.copyWith(fontWeight: FontWeight.bold)),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: paddingDefault / 2, vertical: paddingDefault / 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.0),
            border: Border.all(color: borderGrey2, width: 2.0),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<dynamic>(
              isDense: isDense,
              onChanged: (value) {
                onChange(value!);
              },
              value: selectedValue,
              items: items
                  .asMap()
                  .map((key, e) => MapEntry(
                      key,
                      DropdownMenuItem<dynamic>(
                        value: e.id,
                        child: Text(
                          e.name,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )))
                  .values
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
