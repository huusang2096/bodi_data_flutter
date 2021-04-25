part of 'signup_cubit.dart';

@freezed
class SignupData with _$SignupData {
  const factory SignupData({
    @Default(true) bool isPasswordObscure,
    @Default(true) bool isPasswordObscureConfirm,
    @Default(false) bool isLoading,
    String? errorText,
  }) = DataSignup;
}

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial(DataSignup data) = Initial;
  const factory SignupState.loading(DataSignup data) = Loading;
  const factory SignupState.loaded(DataSignup data) = Loaded;
  const factory SignupState.isShowPassword(DataSignup data) = ShowPassword;
  const factory SignupState.isShowPasswordConfirm(DataSignup data) =
      ShowPasswordConfirm;
  const factory SignupState.signupSuccess(DataSignup data) = SignupSuccess;
  const factory SignupState.error(DataSignup data) = SignUpError;
}
