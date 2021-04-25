import 'package:bodidatacms/app.dart';
import 'package:bodidatacms/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  setUrlStrategy(PathUrlStrategy());
  runApp(Application());
}
