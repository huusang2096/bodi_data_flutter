import 'package:bodidatacms/common/base_cubit.dart';
import 'package:bodidatacms/model/login/login_request.dart';
import 'package:bodidatacms/model/login/login_response.dart';
import 'package:bodidatacms/model/user/isRememberModal.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends BaseCubit<LoginState> {
  LoginCubit() : super(Initial(DataLogin()));

  void login({required String email, required String passWord}) async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true, errorText: null)));
      final LoginRequest loginRequest =
          LoginRequest(username: email, password: passWord);
      final LoginResponse responseLogin =
          await dataRepository.login(loginRequest);
      emit(Loading(state.data.copyWith(isLoading: false)));

      if (state.data.isRememberMe) {
        print('token: ' + responseLogin.data!.token!);
        appPref.setToken(responseLogin.data!.token);
        appPref.setRememberMe(IsRememberModal(
            email: email,
            password: passWord,
            isRemember: state.data.isRememberMe));
      } else {
        appPref.setRememberMe(IsRememberModal(
            email: '', password: '', isRemember: state.data.isRememberMe));
      }
      appPref.setToken(responseLogin.data!.token);
      await dataRepository.setHeader();
      appPref.setUserModel(responseLogin.data!);
      emit(LoginSuccess(state.data));
    } catch (e) {
      emit(Loading(state.data.copyWith(isLoading: false)));
      handleAppError(e);
    }
  }

  void isCallChangeLanguages({bool? isChange}) {
    emit(CallChangeLanguages(state.data.copyWith(
        isCallChangeLanguages: isChange ?? !state.data.isCallChangeLanguages)));
  }

  void isRememberMe() {
    emit(RememberMe(
        state.data.copyWith(isRememberMe: !state.data.isRememberMe)));
  }

  void onSelectLocale(Locale locale) async {
    try {
      emit(Loading(state.data.copyWith(isLoading: true)));
      appPref.langCode = locale.languageCode;
      Get.updateLocale(locale);
      // dataRepository.loadAuthHeader();
      emit(state);
    } catch (e) {
      handleAppError(e);
    }
    emit(Loading(
        state.data.copyWith(isLoading: false, isCallChangeLanguages: false)));
  }

  void isShowPassword() {
    emit(ShowPassword(
        state.data.copyWith(isPasswordObscure: !state.data.isPasswordObscure)));
  }

  void checkRememberMe(
      {required TextEditingController idController,
      required TextEditingController passController}) {
    final IsRememberModal isRememberModal = appPref.isRememberMe;
    if (isRememberModal.isRemember) {
      idController.text = isRememberModal.email;
      passController.text = isRememberModal.password;
      emit(Loaded(
          state.data.copyWith(isRememberMe: isRememberModal.isRemember)));
    }
  }
}
