import 'package:bodidatacms/common/hard_code.dart';
import 'package:bodidatacms/screen/audit/audit_detail/audit_detail_screen.dart';
import 'package:bodidatacms/screen/audit/audit_record/audit_record_screen.dart';
import 'package:bodidatacms/screen/audit/audit_screen.dart';
import 'package:bodidatacms/screen/forgot_password/forgot_password_screen.dart';
import 'package:bodidatacms/screen/inventory/inventory_screen.dart';
import 'package:bodidatacms/screen/login/login.dart';
import 'package:bodidatacms/screen/profile/profile_details/profile_details_screen.dart';
import 'package:bodidatacms/screen/profile/profile_screen.dart';
import 'package:bodidatacms/screen/signup/signup_screen.dart';
import 'package:bodidatacms/screen/size_chart_editor/size_chart_editor_screen.dart';
import 'package:bodidatacms/screen/style/style_screen.dart';
import 'package:bodidatacms/screen/user/search_user_screen.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

class AppRoute {
  static const String loginScreen = '/login';
  static const String signupScreen = '/signup';
  static const String forgotPasswordScreen = '/forgot';
  static const String searchScreen = '/search';
  static const String inventoryScreen = '/inventory';
  static const String profileScreen = '/profile';
  static const String auditScreen = '/audit';
  static const String profileDetailsID = profileScreen + '/profile-details/:id';
  static const String profileDetails = profileScreen + '/profile-details';
  static const String styleScreenID =
      inventoryScreen + '/stype-speccifications/:id';
  static const String styleScreen = inventoryScreen + '/stype-speccifications';
  static const String sizeChartScreen = inventoryScreen + '/size-chart';
  static const String sizeChartScreenID = inventoryScreen + '/size-chart/:id';
  static const String auditDetails = auditScreen + '/audit-details';
  static const String auditDetailsId = auditScreen + '/audit-details/:id';
  static const String auditRecordDetails =
      '/audit/audit-detail' + '/audit-record';
  static const String auditRecordDetailsId = auditDetails +
      '/audit-record/profile=:${KeyId.profileKey}&style=:${KeyId.styleKey}&session=:${KeyId.sessionKey}';

  static const String url_profileDetails =
      profileScreen + '/profile-details/%s';

  static const String url_styleDetails =
      inventoryScreen + '/stype-speccifications/%s';

  static const String url_auditDetails = auditScreen + '/audit-details/%s';

  static const String url_auditRecordDetailsId =
      auditDetails + '/audit-record/%s&%s&%s';
  static List<GetPage> generateRoute() {
    List<GetPage> pages = [
      GetPage(
        name: loginScreen,
        transition: Transition.noTransition,
        page: () => LoginScreen.provider(),
      ),
      GetPage(
        name: forgotPasswordScreen,
        transition: Transition.noTransition,
        page: () => ForgotPasswordScreen.provider(),
      ),
      GetPage(
        name: searchScreen,
        transition: Transition.noTransition,
        page: () => SearchUserScreen.provider(),
      ),
      GetPage(
        name: inventoryScreen,
        transition: Transition.noTransition,
        page: () => InventoryScreen.provider(),
      ),
      GetPage(
        name: profileScreen,
        transition: Transition.noTransition,
        page: () => ProfileScreen.provider(),
      ),
      GetPage(
        name: auditScreen,
        transition: Transition.noTransition,
        page: () => AuditScreen.provider(),
      ),
      GetPage(
        name: profileDetailsID,
        transition: Transition.noTransition,
        page: () => ProfileDetailsScreen.provider(),
      ),
      GetPage(
        name: profileDetails,
        transition: Transition.noTransition,
        page: () => ProfileDetailsScreen.provider(),
      ),
      GetPage(
        name: styleScreen,
        transition: Transition.noTransition,
        page: () => StyleScreen.provider(),
      ),
      GetPage(
        name: styleScreenID,
        transition: Transition.noTransition,
        page: () => StyleScreen.provider(),
      ),
      GetPage(
        name: sizeChartScreenID,
        transition: Transition.noTransition,
        page: () => SizeChartEditorScreen.provider(),
      ),
      GetPage(
        name: sizeChartScreen,
        transition: Transition.noTransition,
        page: () => SizeChartEditorScreen.provider(),
      ),
      GetPage(
        name: auditDetails,
        transition: Transition.noTransition,
        page: () => AuditDetailScreen.provider(),
      ),
      GetPage(
        name: auditDetailsId,
        transition: Transition.noTransition,
        page: () => AuditDetailScreen.provider(),
      ),
      GetPage(
        name: auditRecordDetails,
        transition: Transition.noTransition,
        page: () => AuditRecordScreen.provider(),
      ),
      GetPage(
        name: auditRecordDetailsId,
        transition: Transition.noTransition,
        page: () => AuditRecordScreen.provider(),
      ),
      GetPage(
        name: signupScreen,
        transition: Transition.noTransition,
        page: () => SignupScreen.provider(),
      ),
    ];
    return pages;
  }
}
