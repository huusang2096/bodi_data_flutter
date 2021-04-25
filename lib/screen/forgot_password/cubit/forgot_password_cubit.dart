import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bodidatacms/common/base_cubit.dart';

part 'forgot_password_state.dart';
part 'forgot_password_cubit.freezed.dart';

class ForgotPasswordCubit extends BaseCubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(Initial(DataForgotPassWord()));
}
