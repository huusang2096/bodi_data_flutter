part of 'forgot_password_cubit.dart';

@freezed
class ForgotPasswordStateData with _$ForgotPasswordStateData {
  const factory ForgotPasswordStateData({@Default(false) bool isLoading}) =
      DataForgotPassWord;
}

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState.init(DataForgotPassWord data) = Initial;
  const factory ForgotPasswordState.loaded(DataForgotPassWord data) = Loaded;
  const factory ForgotPasswordState.loading(DataForgotPassWord data) = Loading;
  const factory ForgotPasswordState.error(DataForgotPassWord data) = Error;
}
