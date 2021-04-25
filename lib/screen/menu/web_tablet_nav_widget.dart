import 'package:bodidatacms/common/prefs/app_prefs.dart';
import 'package:bodidatacms/screen/template/templateModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../locator.dart';
import '../../routes.dart';

class WebTabletNavWidget extends StatefulWidget {
  @override
  _WebTabletNavWidgetState createState() => _WebTabletNavWidgetState();
}

class _WebTabletNavWidgetState extends State<WebTabletNavWidget> {
  int position = 0;
  AppPref get appPref => locator<AppPref>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 70,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.2),
              blurRadius: 2,
              offset: Offset(0.5, 0.0),
              spreadRadius: 2)
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          _colButtons(context),
          _logoutButton(),
        ],
      ),
    );
  }

  Widget _colSingleButton(
      {IconData? icon, Color borderColor = Colors.black, Color? iconColor}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35),
      child: Container(
        width: 70,
        child: Icon(
          icon,
          color: iconColor,
        ),
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              width: 2,
              color: borderColor,
            ),
          ),
        ),
      ),
    );
  }

  Widget _colButtons(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Material(
            color: Colors.white,
            child: InkWell(
                onTap: () {
                  setState(() {
                    position = 0;
                  });
                  Get.toNamed(AppRoute.searchScreen);
                },
                child: _colSingleButton(
                    icon: Icons.account_circle,
                    iconColor: position == 0 ? Colors.indigo : Colors.black,
                    borderColor: position == 0
                        ? Colors.deepOrange
                        : Colors.transparent)),
          ),
          Material(
            color: Colors.white,
            child: InkWell(
                onTap: () {
                  setState(() {
                    position = 1;
                  });
                  Get.toNamed(AppRoute.inventoryScreen);
                },
                child: _colSingleButton(
                    icon: Icons.inventory,
                    iconColor: position == 1 ? Colors.indigo : Colors.black,
                    borderColor: position == 1
                        ? Colors.deepOrange
                        : Colors.transparent)),
          ),
          Material(
            color: Colors.white,
            child: InkWell(
              onTap: () {
                setState(() {
                  position = 2;
                });
                Get.toNamed(AppRoute.profileScreen);
              },
              child: _colSingleButton(
                  icon: Icons.now_widgets_sharp,
                  iconColor: position == 2 ? Colors.indigo : Colors.black,
                  borderColor:
                      position == 2 ? Colors.deepOrange : Colors.transparent),
            ),
          ),
          Material(
            color: Colors.white,
            child: InkWell(
              onTap: () {
                setState(() {
                  position = 3;
                });
                Get.toNamed(AppRoute.auditScreen);
              },
              child: _colSingleButton(
                  icon: Icons.view_list_rounded,
                  iconColor: position == 3 ? Colors.indigo : Colors.black,
                  borderColor:
                      position == 3 ? Colors.deepOrange : Colors.transparent),
            ),
          ),
        ],
      ),
    );
  }

  Widget _logoutButton() {
    return InkWell(
        onTap: () {
          appPref.logout();
          Provider.of<TemplateModel>(context, listen: false).changeTemple();
          Get.offAndToNamed(AppRoute.loginScreen);
        },
        child: Icon(Icons.exit_to_app));
  }
}
