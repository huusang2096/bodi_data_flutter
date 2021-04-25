import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/inventory/sttyle_model.dart';
import 'package:bodidatacms/routes.dart';
import 'package:bodidatacms/screen/inventory/cubit/inventory_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ListInventory extends StatelessWidget {
  final bool shrinkWrap;

  const ListInventory({Key? key, this.shrinkWrap: false}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final styles = context.watch<InventoryCubit>().state.data.styles;
    final checkResultSearching =
        context.watch<InventoryCubit>().state.data.checkResultSearching;
    if (checkResultSearching) {
      return Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10.0),
          child: Text('no_result'.tr));
    }
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10.0),
      child: ListView.separated(
        primary: false,
        shrinkWrap: shrinkWrap,
        physics: BouncingScrollPhysics(),
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 10.0,
          );
        },
        itemCount: styles.length,
        itemBuilder: (context, index) {
          final item = styles[index];
          return buildItemINventory(item, context);
        },
      ),
    );
  }

  Widget buildItemINventory(Style item, BuildContext context) {
    List<Widget> listSizeOption() {
      List<Widget> listSizeOption = [];
      item.sizeOptions!.forEach((sizeOption) {
        listSizeOption.add(Row(
          children: [
            Icon(
              Icons.view_comfy_rounded,
              size: 20,
              color: styleOptionColor,
            ),
            SizedBox(width: 4),
            Text(
                sizeOption.contents!.length.toString() + " " + sizeOption.name!,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: body1)
          ],
        ));
      });
      return listSizeOption;
    }

    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () async {
          var data = await Get.toNamed(
              AppRoute.url_styleDetails.trArgs([item.id.toString()]),
              arguments: true);
          if (data != null && data) {
            context.read<InventoryCubit>().getStyles();
          }
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: boder,
              style: BorderStyle.solid,
              width: 2.0,
            ),
          ),
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.brand ?? '',
                        overflow: TextOverflow.ellipsis, style: title),
                    SizedBox(height: 10),
                    Text(item.styleName ?? '',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: titleBlue),
                    SizedBox(height: 10),
                    Text(item.modelCode ?? '',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: title),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: listSizeOption(),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.rule,
                        size: 20,
                        color: styleOptionColor,
                      ),
                      SizedBox(width: 4),
                      Text("${item.numberAuditRecords} audit records",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: body1),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.tag,
                        size: 15,
                        color: styleOptionColor,
                      ),
                      SizedBox(width: 4),
                      Text("${(item.category!.name ?? '')}",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: body1),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
