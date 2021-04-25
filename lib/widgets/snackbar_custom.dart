import 'package:another_flushbar/flushbar.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum TypeSnackbar { notification, error, warning, done }
void showSnackBarCustom(
    {required String textMassage,
    String? titleMessage,
    required TypeSnackbar typeSnackbar}) {
  Flushbar(
    title: '',
    titleColor: Colors.white,
    padding: EdgeInsets.all(10.0),
    borderRadius: BorderRadius.circular(10),
    message: '',
    maxWidth: 450,
    margin: EdgeInsets.only(left: Get.width / 2, top: 20.0, right: 20.0),
    flushbarPosition: FlushbarPosition.TOP,
    flushbarStyle: FlushbarStyle.FLOATING,
    backgroundColor: Color(0xffE7E9EC).withOpacity(0.90),
    isDismissible: false,
    duration: Duration(seconds: 3),
    icon: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: getIconType(typeSnackbar)),
    mainButton: IconButton(
      onPressed: () {
        Get.back();
      },
      icon: Icon(
        Icons.close,
        color: Colors.redAccent,
        size: 28,
      ),
    ),
    titleText: Text(
      titleMessage ?? getMessageDefault(typeSnackbar),
      style: titleHeader,
    ),
    messageText: Text(textMassage, style: title),
  ).show(Get.overlayContext ?? Get.context!);
}

getMessageDefault(TypeSnackbar typeSnackbar) {
  switch (typeSnackbar) {
    case TypeSnackbar.warning:
      return 'warning'.tr;
    case TypeSnackbar.error:
      return 'error'.tr;
    case TypeSnackbar.notification:
      return 'notification'.tr;
    case TypeSnackbar.done:
      return 'success'.tr;

    default:
      return '';
  }
}

getIconType(TypeSnackbar typeSnackbar) {
  switch (typeSnackbar) {
    case TypeSnackbar.warning:
      return Icon(
        Icons.warning,
        size: 28.0,
        color: Colors.yellow,
      );
    case TypeSnackbar.error:
      return Icon(
        Icons.error,
        size: 28.0,
        color: Colors.red,
      );
    case TypeSnackbar.notification:
      return Icon(
        Icons.notifications,
        size: 28.0,
        color: Colors.blue,
      );
    case TypeSnackbar.done:
      return Icon(
        Icons.done,
        size: 28.0,
        color: Colors.green,
      );

    default:
      Icon(Icons.notifications, size: 28.0, color: Colors.blue);
  }
}
