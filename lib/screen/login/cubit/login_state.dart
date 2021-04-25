part of 'login_cubit.dart';

@freezed
class LoginData with _$LoginData {
  const factory LoginData({
    @Default(true) bool isPasswordObscure,
    @Default(false) bool isLoading,
    @Default(false) bool isExistLogin,
    @Default(false) bool isCallChangeLanguages,
    @Default(false) bool isRememberMe,
    String? errorText,
  }) = DataLogin;
}

// Union
@freezed
class LoginState with _$LoginState {
  const factory LoginState.init(DataLogin data) = Initial;
  const factory LoginState.loaded(DataLogin data) = Loaded;
  const factory LoginState.loading(DataLogin data) = Loading;
  const factory LoginState.loginSuccess(DataLogin data) = LoginSuccess;
  const factory LoginState.isCallChangeLanguages(DataLogin data) =
      CallChangeLanguages;
  const factory LoginState.isRememberMe(DataLogin data) = RememberMe;
  const factory LoginState.isShowPassword(DataLogin data) = ShowPassword;
}
