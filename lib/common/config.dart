import 'package:bodidatacms/model/inventory_permission/permission_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const kAppName = 'Bodidata CMS';
const String GOOGLE_BASE_URL = "https://maps.googleapis.com/maps/api/";
const String BASE_URL = "https://api.bodidata.di4l.vn/";
const String language = 'vi';
const String region = 'VN';
const String locale = 'vi_VN';
const String kCurrency = "đ";
const String kSupportNumber = '190';
final dateFormatter = new DateFormat('yyyy-MM-dd');
final dateVNFormatter = new DateFormat('dd-MM-yyyy');
final hourFormatter = new DateFormat('h:mm a');
final fullDateFormatter = new DateFormat.yMMMMEEEEd('vi_VN');
final dayFormatter = new DateFormat('dd/MM');
final actionDateFormatter = new DateFormat('yyyy-MM-dd HH:mm:ss');
final currencyFormatter = NumberFormat.currency(locale: 'vi_VN', symbol: '');
final currencyformatterSymbol =
    new NumberFormat.simpleCurrency(locale: 'vi_VN');
final hourHMFormatter = DateFormat.Hm(locale);
final listLimits = ["1", "5", "10", "15", "20", "all"];
final listFabricWeights = ["Light", "Cotton", "Spandex"];
String selectFabricWeights = "Light";
const supportedLocales = [
  Locale('en'),
  Locale('vi'),
];

List<Permission> listPermissionDefault = [
  Permission(id: 1, name: 'read_only', isEnabled: false),
  Permission(id: 2, name: 'add_comment', isEnabled: false),
  Permission(id: 3, name: 'update', isEnabled: false),
  Permission(id: 4, name: 'remove', isEnabled: false),
];
