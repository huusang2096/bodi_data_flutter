import 'dart:convert';

import 'package:bodidatacms/common/prefs/base_prefs.dart';
import 'package:bodidatacms/model/audit/audit_session_profile.dart';
import 'package:bodidatacms/model/audit/audit_session_style.dart';
import 'package:bodidatacms/model/login/login_response.dart';
import 'package:bodidatacms/model/user/isRememberModal.dart';

class AppPref extends BasePrefs {
  String get langCode => getValueForKey(PrefKey.langCode) ?? 'en';

  static Future<AppPref> instance() async {
    final _appPref = AppPref();
    await _appPref.init();
    return _appPref;
  }

  String get token {
    return getValueForKey(PrefKey.token) ?? '';
  }

  Future<void> setToken(String? token) {
    return setValueForKey(PrefKey.token, token);
  }

  String? get userModel {
    final result = getValueForKey(PrefKey.userModel);
    if (result.isEmpty) {
      return null;
    }
    return result;
  }

  Future<void> setUserModel(LoginData? user) {
    return setValueForKey(
        PrefKey.userModel, user == null ? '' : jsonEncode(user.toJson()));
  }

  IsRememberModal get isRememberMe {
    if (getValueForKey(PrefKey.rememberMe) == null) {
      return IsRememberModal(email: '', password: '', isRemember: false);
    }
    return IsRememberModal.fromJson(
        jsonDecode(getValueForKey(PrefKey.rememberMe)));
  }

  Future<void> setRememberMe(IsRememberModal isRememberModal) {
    return setValueForKey(PrefKey.rememberMe, jsonEncode(isRememberModal));
  }

  List<String>? get brandKeysSearch {
    return (getValueForKey(PrefKey.brandKeys));
  }

  Future<void> setBrandKeysSearch(List<String>? brandKeysSearch) {
    return setValueForKey(PrefKey.brandKeys, brandKeysSearch);
  }

  List<StyleAudit> get stylesFilter {
    final result = getValueForKey(PrefKey.stylesFilter) ?? '';
    if (result.isEmpty) {
      return [];
    }
    return StyleAudit.decodeList(getValueForKey(PrefKey.stylesFilter));
  }

  Future<void> setStylesFilter(List<StyleAudit> listStyle) {
    if (listStyle.isEmpty) {
      return setValueForKey(PrefKey.stylesFilter, '');
    }
    return setValueForKey(
        PrefKey.stylesFilter, StyleAudit.encodeList(listStyle));
  }

  List<ProfileAudit> get profilesFilter {
    final result = getValueForKey(PrefKey.profilesFilter) ?? '';
    if (result.isEmpty) {
      return [];
    }
    return ProfileAudit.decodeList(getValueForKey(PrefKey.profilesFilter));
  }

  Future<void> setProfilesFilter(List<ProfileAudit> list) {
    if (list.isEmpty) {
      return setValueForKey(PrefKey.profilesFilter, '');
    }
    return setValueForKey(
        PrefKey.profilesFilter, ProfileAudit.encodeList(list));
  }

  Future<void> setMain(bool goToMain) {
    return setValueForKey(PrefKey.main, goToMain);
  }

  set langCode(String code) => setValueForKey(PrefKey.langCode, code);

  bool get mainCode => getValueForKey(PrefKey.main) ?? false;

  Future<void> logout() async {
    setToken('');
    setUserModel(null);
    setBrandKeysSearch([]);
    setStylesFilter([]);
    setProfilesFilter([]);
  }
}

class PrefKey {
  static const String token = 'TOKEN';
  static const String fcmToken = 'FCM_TOKEN';
  static const String userId = 'USER_ID';
  static const String userModel = 'USER_MODEL';
  static const String loginRequest = 'LOGIN_REQUEST';
  static const String userName = 'USER_NAME';
  static const String langCode = 'LANG_CODE';
  static const String main = 'MAIN_CODE';
  static const String bioLogin = "BIO_LOGIN";
  static const String rememberMe = "REMEMBER";
  static const String brandKeys = "BRAND_KEYS";
  static const String stylesFilter = "STYLES_FILTER";
  static const String profilesFilter = "PROFILES_FILTER";
}
