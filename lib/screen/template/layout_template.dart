import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/screen/menu/web_nav_widget.dart';
import 'package:bodidatacms/screen/menu/web_tablet_nav_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  final Widget child;
  const LayoutTemplate({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
        key: _scaffoldKey,
        drawer: deviceType == DeviceScreenType.mobile ? WebNavWidget() : null,
        appBar: deviceType == DeviceScreenType.mobile
            ? AppBar(
                leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
              ))
            : null,
        body: ResponsiveBuilder(
          builder: (context, sizingInformation) {
            if (sizingInformation.isDesktop) {
              return Row(
                children: [
                  WebNavWidget(),
                  Container(
                      height: MediaQuery.of(context).size.height,
                      width: 1,
                      color: boder),
                  Expanded(child: child),
                ],
              );
            } else if (sizingInformation.isTablet) {
              return Row(
                children: [
                  WebTabletNavWidget(),
                  Container(
                      height: MediaQuery.of(context).size.height,
                      width: 1,
                      color: boder),
                  Expanded(child: child),
                ],
              );
            } else {
              return child;
            }
          },
        ));
  }
}
