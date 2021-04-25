import 'package:bodidatacms/common/bloc/cubit_widget.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/routes.dart';
import 'package:bodidatacms/screen/inventory/widget/limit_page_inventory_widget.dart';
import 'package:bodidatacms/screen/inventory/widget/list_categories.dart';
import 'package:bodidatacms/screen/inventory/widget/list_filters.dart';
import 'package:bodidatacms/screen/inventory/widget/list_inventory.dart';
import 'package:bodidatacms/screen/inventory/widget/search_widget.dart';
import 'package:bodidatacms/screen/inventory/cubit/inventory_cubit.dart';
import 'package:bodidatacms/widgets/custom_loading_linear_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:get/get.dart';

import '../../routes.dart';

class InventoryScreen extends CubitWidget<InventoryCubit, InventoryState> {
  static BlocProvider<InventoryCubit> provider() {
    return BlocProvider(
        create: (context) => InventoryCubit(), child: InventoryScreen());
  }

  @override
  Widget builder(BuildContext context, InventoryState state) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    Future<void> newStyle() async {
      var data = await Get.toNamed(AppRoute.styleScreen, arguments: false);

      if (data != null && data) {
        context.read<InventoryCubit>().getStyles();
      }
    }

    SingleChildScrollView buildUIOther(
        BuildContext context, InventoryState state) {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('inventory_title'.tr, style: header),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SearchWidget(
                titleButton: 'create',
                onPress: () {
                  newStyle();
                },
              ),
            ),
            SizedBox(height: 10),
            if (state.data.isLoading) ...[
              CustomLoadingLinearWidget(
                height: 2,
                marginHorizontal: 10,
                marginVertical: 2.0,
              )
            ] else ...[
              SizedBox(
                height: 6,
              )
            ],
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'filters'.tr,
                    style: title,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(flex: 1, child: ListFilters()),
                    Flexible(flex: 1, child: ListCategories()),
                  ],
                ),
              ],
            ),
            ListInventory(
              shrinkWrap: true,
            ),
            LimitPageInventoryWidget(),
          ],
        ),
      );
    }

    Column buildUIDesktop(BuildContext context, InventoryState state) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('inventory_title'.tr, style: header),
                ),
              ),
              Flexible(
                flex: 7,
                child: SearchWidget(
                  titleButton: 'create',
                  onPress: () {
                    newStyle();
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          if (state.data.isLoading) ...[
            CustomLoadingLinearWidget(
              height: 2,
              marginHorizontal: 10,
              marginVertical: 2.0,
            )
          ] else ...[
            SizedBox(
              height: 6,
            )
          ],
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'filters'.tr,
              style: title,
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 3,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ListFilters(),
                          SizedBox(height: 20),
                          ListCategories(),
                        ],
                      ),
                    )),
                Container(
                  width: 1,
                  color: Colors.blueAccent,
                  margin: EdgeInsets.symmetric(vertical: 10),
                ),
                Expanded(
                  flex: 7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(child: ListInventory()),
                      LimitPageInventoryWidget()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget buildBody(
        var deviceType, BuildContext context, InventoryState state) {
      if (deviceType == DeviceScreenType.desktop) {
        return buildUIDesktop(context, state);
      } else {
        return buildUIOther(context, state);
      }
    }

    return Scaffold(
        backgroundColor: Colors.white,
        body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: buildBody(deviceType, context, state)));
  }
}
