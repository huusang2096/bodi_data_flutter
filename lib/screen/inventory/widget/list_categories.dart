import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/inventory/category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bodidatacms/screen/inventory/cubit/inventory_cubit.dart';

class ListCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final categories =
        context.watch<InventoryCubit>().state.data.listCategories;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'category'.tr,
            style: title,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: ListView.builder(
            shrinkWrap: true,
            primary: false,
            physics: BouncingScrollPhysics(),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final Category item = categories[index];
              return buildItem(item, context);
            },
          ),
        ),
      ],
    );
  }

  Container buildItem(Category item, BuildContext context) {
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
                value: item.isSelected,
                fillColor: MaterialStateProperty.all(
                    item.isSelected ? indigoColor : Colors.grey),
                onChanged: (value) {
                  item.isSelected = value!;
                  context.read<InventoryCubit>().getStyles();
                },
              ),
            ),
          ),
          SizedBox(width: 2),
          Text(item.name ?? '',
              overflow: TextOverflow.ellipsis, maxLines: 1, style: body1),
        ],
      ),
    );
  }
}
