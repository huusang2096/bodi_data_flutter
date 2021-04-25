import 'package:bodidatacms/common/bloc/generic_base_cubit.dart';
import 'package:bodidatacms/common/prefs/app_prefs.dart';
import 'package:bodidatacms/locator.dart';
import 'package:bodidatacms/model/base_response.dart';
import 'package:bodidatacms/repositories/data_repository.dart';
import 'package:bodidatacms/widgets/snackbar_custom.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '../routes.dart';

enum TypeShowError { dialog, snackbar }

class BaseCubit<State> extends GenericBaseCubit<State> {
  BaseCubit(State state) : super(state);
  DataRepository get dataRepository => locator<DataRepository>();
  AppPref get appPref => locator<AppPref>();
  final Logger logger = Logger();

  @override
  handleAppError(
    error,
  ) async {
    if (error is String) {
      return showError(error);
    }

    if (error is DioError) {
      return parseDioError(error);
    }

    return showError('server_error');
  }

  parseDioError(DioError error) async {
    // Check status code
    final token = appPref.token;
    if (error.response?.statusCode == 401 && token.isNotEmpty) {
      await appPref.logout();
      dataRepository.setHeader();
      appPref.logout();
      Get.offAndToNamed(AppRoute.loginScreen);
      return;
    }

    var errorMessage = 'server_error';
    final response = error.response?.data ?? {"message": "server_error"};
    try {
      if (response is Map<String, dynamic>) {
        final errResponse = BaseResponse.fromJson(response);
        errorMessage = errResponse.message;
      } else if (response is String) {
        final errResponse = BaseResponse.fromRawJson(response);
        errorMessage = errResponse.message;
      } else if (error.error is TypeError) {
        final err = error.error as TypeError;
        errorMessage = err.toString();
      }
    } catch (e) {
      print(e);
    }

    return showError(errorMessage.tr);
  }

  showError(String error) {
    showSnackBarCustom(textMassage: error, typeSnackbar: TypeSnackbar.error);
  }
}
