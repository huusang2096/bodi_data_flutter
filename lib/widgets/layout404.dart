import 'dart:async';

import 'package:bodidatacms/common/prefs/app_prefs.dart';
import 'package:bodidatacms/locator.dart';
import 'package:bodidatacms/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Layout404 extends StatefulWidget {
  @override
  _Layout404State createState() => _Layout404State();
}

class _Layout404State extends State<Layout404> {
  TextStyle textStyle = GoogleFonts.openSans(
      fontSize: 18.0, color: Colors.redAccent, fontWeight: FontWeight.normal);
  String? token;
  late Timer timer;
  int endTime = 5;
  @override
  void initState() {
    token = locator<AppPref>().token;
    timer = Timer.periodic(Duration(seconds: 1), (e) {
      if (endTime == 1) {
        timer.cancel();
        pushScreenOnTap(token);
      }
      setState(() {
        endTime--;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    'this_link_does_not_exist_please_turn_to_the_homepage_thank_you'
                            .tr +
                        ' ',
                    style: GoogleFonts.openSans(
                        fontSize: 18.0, fontWeight: FontWeight.normal)),
                MouseRegion(
                  onExit: (details) {
                    setState(() {
                      textStyle =
                          textStyle.copyWith(decoration: TextDecoration.none);
                    });
                  },
                  onHover: (details) {
                    setState(() {
                      textStyle = textStyle.copyWith(
                          decoration: TextDecoration.underline);
                    });
                  },
                  child: GestureDetector(
                      onTap: () => pushScreenOnTap(token),
                      child:
                          Text('homepage'.tr + '($endTime)', style: textStyle)),
                ),
                Text('. ' + 'thanks'.tr,
                    style: GoogleFonts.openSans(
                        fontSize: 18.0, fontWeight: FontWeight.normal)),
              ],
            ),
            Text(
              'error'.tr + ': 404',
              style: GoogleFonts.openSans(
                  fontSize: 35.0, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }

  void pushScreenOnTap(String? tokenString) {
    if (tokenString != null && tokenString.isNotEmpty) {
      Get.offAndToNamed(AppRoute.profileScreen);
    } else {
      Get.offAndToNamed(AppRoute.loginScreen);
    }
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
