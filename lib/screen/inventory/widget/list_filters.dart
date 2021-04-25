import 'package:bodidatacms/common/prefs/app_prefs.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:bodidatacms/screen/inventory/cubit/inventory_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListFilters extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final locatorAppPref = locator<AppPref>();
    final List<String> brandKeySearch = locatorAppPref.brandKeysSearch ?? [];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'bands'.tr,
                style: title,
              ),
              SizedBox(height: 10),
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration(),
                    controller: controller,
                    style: title,
                    onFieldSubmitted: (value) {
                      if (value.isNotEmpty) {
                        context.read<InventoryCubit>().addBrandKeys(value);
                        controller.clear();
                      }
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      if (controller.text.isNotEmpty) {
                        context
                            .read<InventoryCubit>()
                            .addBrandKeys(controller.text);
                        controller.clear();
                      }
                    },
                    child: SizedBox(
                      height: 40,
                      width: 40,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.transparent,
                        child: Icon(
                          Icons.add,
                          color: indigoColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: ListView.builder(
            shrinkWrap: true,
            primary: false,
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.only(top: 10.0),
            itemCount: brandKeySearch.length,
            itemBuilder: (context, index) {
              final item = brandKeySearch[index];
              return buildItem(item, context);
            },
          ),
        ),
      ],
    );
  }

  InputDecoration buildInputDecoration() {
    return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(width: 0.8, color: boder),
      ),
      contentPadding: EdgeInsets.only(right: 30.0, left: 10.0),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          width: 0.8,
          color: boder,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          width: 1.6,
          color: boder,
        ),
      ),
    );
  }

  Container buildItem(String name, BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      child: Row(
        children: [
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 1,
                color: lineindigo,
              ))),
              child: Text(name,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: body1.copyWith(color: indigoColor)),
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              context.read<InventoryCubit>().deleteBrandKey(name);
            },
            child: Icon(
              Icons.close_sharp,
              size: 12,
              color: indigoColor,
            ),
          ),
        ],
      ),
    );
  }
}
