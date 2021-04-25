import 'package:bodidatacms/common/base_cubit.dart';
import 'package:bodidatacms/model/register/register_request.dart';
import 'package:bodidatacms/routes.dart';
import 'package:bodidatacms/widgets/snackbar_custom.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

class SignupCubit extends BaseCubit<SignupState> {
  SignupCubit() : super(Initial(DataSignup()));

  void isShowPassword() {
    emit(ShowPassword(
        state.data.copyWith(isPasswordObscure: !state.data.isPasswordObscure)));
  }

  void isShowPasswordConfirm() {
    emit(ShowPassword(state.data.copyWith(
        isPasswordObscureConfirm: !state.data.isPasswordObscureConfirm)));
  }

  void register(
      {required String userName,
      required String email,
      required String password}) async {
    emit(Loaded(state.data.copyWith(isLoading: true)));
    try {
      final registerRequest =
          RegisterRequest(name: userName, password: password, username: email);
      final registerResponse = await dataRepository.register(registerRequest);
      emit(Loaded(state.data.copyWith(isLoading: false)));

      if (registerResponse.success!) {
        navigator!
            .pushNamedAndRemoveUntil(AppRoute.loginScreen, (route) => false);
        emit(SignupSuccess(state.data.copyWith(isLoading: false)));
        showSnackBarCustom(
            textMassage: 'sign_up_success'.tr, typeSnackbar: TypeSnackbar.done);
      } else {
        showSnackBarCustom(
            textMassage: registerResponse.message ?? '',
            typeSnackbar: TypeSnackbar.error);
      }
    } catch (e) {
      emit(Loaded(state.data.copyWith(isLoading: false)));
      handleAppError(e);
    }
  }
}
