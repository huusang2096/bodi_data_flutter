import 'package:animate_icons/animate_icons.dart';
import 'package:bodidatacms/common/prefs/app_prefs.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/routes.dart';
import 'package:bodidatacms/screen/template/templateModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';

import '../../locator.dart';

class WebNavWidget extends StatefulWidget {
  @override
  _WebNavWidgetState createState() => _WebNavWidgetState();
}

class _WebNavWidgetState extends State<WebNavWidget>
    with SingleTickerProviderStateMixin {
  late AnimateIconController controller;
  int position = 0;
  AppPref get appPref => locator<AppPref>();
  String versionName = "";
  bool resized = false;
  void loadData() async {
    final version = (await PackageInfo.fromPlatform()).version;
    final number = (await PackageInfo.fromPlatform()).buildNumber;
    setState(() {
      versionName = version + "+" + number;
    });
  }

  final double paddingColButton = 82 / 2 - 26 / 2;
  double widthScreen = Get.width * 0.2;

  @override
  void initState() {
    controller = AnimateIconController();
    loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      constraints: BoxConstraints(maxWidth: widthScreen),
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
      duration: Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: AnimatedSwitcher(
                    duration: Duration(milliseconds: 500),
                    child: logoWidget(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(0),
                  // padding: const EdgeInsets.only(right: 80 / 2 - 26 / 2 - 8),
                  child: AnimateIcons(
                    startIcon: Icons.menu,
                    endIcon: Icons.arrow_forward_ios,
                    size: 26.0,
                    onStartIconPress: () {
                      controller.animateToEnd();
                      setState(() {
                        if (resized) {
                          resized = false;
                          widthScreen = MediaQuery.of(context).size.width * 0.2;
                        } else {
                          resized = true;
                          widthScreen = 82;
                        }
                      });
                      return true;
                    },
                    onEndIconPress: () {
                      controller.animateToStart();
                      setState(() {
                        if (resized) {
                          resized = false;
                          widthScreen = MediaQuery.of(context).size.width * 0.2;
                        } else {
                          resized = true;
                          widthScreen = 80;
                        }
                      });
                      return true;
                    },
                    duration: Duration(milliseconds: 500),
                    clockwise: false,
                    controller: controller,
                  ),
                ),
              ],
            ),
            _colButtons(context, widthScreen),
            //_versionName(),
          ],
        ),
      ),
    );
  }

  Widget logoWidget() {
    if (resized) {
      return Container(
        key: UniqueKey(),
        padding: EdgeInsets.only(left: 5),
        height: 60.0,
        child: Center(
            child: Text('CMS',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(color: Colors.black, fontSize: 16))),
      );
    }
    return Container(
      key: UniqueKey(),
      child: Image.asset(
        "assets/images/logo.png",
        height: 60,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _versionName() {
    return SizedBox(
      width: widthScreen,
      child: Center(
        child: Text(
          '$versionName',
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: titleInput,
        ),
      ),
    );
  }

  Widget _colSingleButton({
    IconData? icon,
    Color? iconColor,
    required Color colorBackgound,
    String text = "",
  }) {
    return Container(
      height: 50.0,
      alignment: Alignment.center,
      color: colorBackgound,
      padding: EdgeInsets.only(left: paddingColButton),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            color: iconColor,
            size: 26,
          ),
          Flexible(
            child: buildTextButtonWidget(text, resized),
          )
        ],
      ),
    );
  }

  Widget buildTextButtonWidget(String text, bool isResized) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 800),
      opacity: isResized ? 0.0 : 1.0,
      child: Text('    ' + text.tr,
          overflow: TextOverflow.fade,
          maxLines: 1,
          style: TextStyle(color: Colors.black, fontSize: 16)),
    );
  }

  Widget _colButtons(BuildContext context, double? widthScreen) {
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
                    text: "users".tr,
                    icon: Icons.account_circle,
                    iconColor: position == 0 ? Colors.indigo : Colors.black,
                    colorBackgound: position == 0
                        ? Colors.indigo.withOpacity(0.1)
                        : Colors.transparent)),
          ),
          SizedBox(height: 10.0),
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
                    text: 'inventory'.tr,
                    icon: Icons.inventory,
                    iconColor: position == 1 ? Colors.indigo : Colors.black,
                    colorBackgound: position == 1
                        ? Colors.indigo.withOpacity(0.1)
                        : Colors.transparent)),
          ),
          SizedBox(height: 10.0),
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
                  text: 'profile_diretory'.tr,
                  icon: Icons.now_widgets_sharp,
                  iconColor: position == 2 ? Colors.indigo : Colors.black,
                  colorBackgound: position == 2
                      ? Colors.indigo.withOpacity(0.1)
                      : Colors.transparent),
            ),
          ),
          SizedBox(height: 10.0),
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
                  text: 'audit_sessions'.tr,
                  icon: Icons.view_list_rounded,
                  iconColor: position == 3 ? Colors.indigo : Colors.black,
                  colorBackgound: position == 3
                      ? Colors.indigo.withOpacity(0.1)
                      : Colors.transparent),
            ),
          ),
          SizedBox(height: 10.0),
          Material(
            color: Colors.white,
            child: InkWell(
              onTap: () {
                appPref.logout();
                Provider.of<TemplateModel>(context, listen: false)
                    .changeTemple();
                Get.offAndToNamed(AppRoute.loginScreen);
              },
              child: _colSingleButton(
                  text: 'log_out'.tr,
                  icon: Icons.logout,
                  iconColor: Colors.black,
                  colorBackgound: position == 4
                      ? Colors.indigo.withOpacity(0.1)
                      : Colors.transparent),
            ),
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
