import 'package:bodidatacms/common/config.dart';
import 'package:bodidatacms/common/prefs/app_prefs.dart';
import 'package:bodidatacms/generated/locales.g.dart';
import 'package:bodidatacms/locator.dart';
import 'package:bodidatacms/screen/template/layout_template.dart';
import 'package:bodidatacms/screen/template/templateModel.dart';
import 'package:bodidatacms/widgets/layout404.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:provider/provider.dart';

import 'routes.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String? token = locator<AppPref>().token;

    return ChangeNotifierProvider<TemplateModel>(
        create: (context) => TemplateModel(),
        child: GetMaterialApp(
            translationsKeys: AppTranslation.translations,
            locale: supportedLocales.firstWhere(
                (locate) => locate.languageCode == locator<AppPref>().langCode),
            supportedLocales: supportedLocales,
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            builder: (context, childUI) {
              return Consumer<TemplateModel>(
                  builder: (context, mymodel, child) {
                final String? token = locator<AppPref>().token;
                return (token != null && token.isNotEmpty)
                    ? LayoutTemplate(
                        child: childUI!,
                      )
                    : childUI!;
              });
            },
            unknownRoute: GetPage(
                name: 'layout404',
                transition: Transition.noTransition,
                page: () {
                  return Layout404();
                }),
            theme: _buildThemeData(context),
            title: "Bodidata",
            debugShowCheckedModeBanner: false,
            initialRoute: (token != null && token.isNotEmpty)
                ? AppRoute.profileScreen
                : AppRoute.loginScreen,
            getPages: AppRoute.generateRoute()));
  }

  ThemeData _buildThemeData(BuildContext context) {
    return ThemeData(
        appBarTheme: AppBarTheme(
            color: Colors.white, iconTheme: IconThemeData(color: Colors.black)),
        primaryColor: Colors.black);
  }
}
