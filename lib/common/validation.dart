import 'package:get/get.dart';

class Validation {
  String? validationPasswordConfirm(String? value, String? value1) {
    if (value != null && value.isEmpty) {
      return 'this_field_is_required'.tr;
    }
    if (value != value1) {
      return 'password_confirm_not_match'.tr;
    }

    return null;
  }

  String? validationCommon(String? value) {
    if (value != null && value.isEmpty) {
      return 'this_field_is_required'.tr;
    }
    return null;
  }

  String? validationName(String? value) {
    if (value != null && value.isEmpty) {
      return 'this_field_is_required'.tr;
    }
    if (value!.length < 6) {
      return 'must_be_more_than__characters'.tr;
    }
    return null;
  }

  String? validationPassword(String? value) {
    if (value != null && value.isEmpty) {
      return 'this_field_is_required'.tr;
    }
    if (value!.length < 6) {
      return 'must_be_more_than__characters'.tr;
    }
    return null;
  }

  String? validationNumber(String? value) {
    if (value != null && value.isEmpty) {
      return 'this_field_is_required'.tr;
    }
    final n = num.tryParse(value!);
    if (n == null) {
      return '"$value" is not a valid number';
    }
    return null;
  }

  String? validationEmail(String? value) {
    if (value != null && value.isEmpty) {
      return 'this_field_is_required'.tr;
    }
    final pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    var regex = RegExp(pattern);
    if (!regex.hasMatch(value!)) {
      return 'enter_valid_email'.tr;
    } else {
      return null;
    }
  }
}
