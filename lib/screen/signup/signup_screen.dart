import 'package:bodidatacms/common/bloc/bloc.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/common/validation.dart';
import 'package:bodidatacms/routes.dart';
import 'package:bodidatacms/screen/signup/cubit/signup_cubit.dart';
import 'package:bodidatacms/widgets/custom_form_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SignupScreen extends CubitWidget<SignupCubit, SignupState> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _passConfirmController = TextEditingController();

  static provider() {
    return BlocProvider(
      create: (_) => SignupCubit(),
      child: SignupScreen(),
    );
  }

  @override
  Widget builder(BuildContext context, SignupState state) {
    final size = MediaQuery.of(context).size;
    final deviceType = getDeviceType(size);
    return Scaffold(
      appBar: deviceType == DeviceScreenType.mobile ? _buildAppbar : null,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SafeArea(
          child: Container(
            height: size.height,
            width: size.width,
            color: Colors.black54,
            child: _buildBody(context, state, deviceType),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar = AppBar(
    title: Text(
      'sign_up'.tr,
      style: TextStyle(color: Colors.black),
    ),
    centerTitle: true,
    iconTheme: IconThemeData(color: Colors.grey),
    elevation: 1,
    automaticallyImplyLeading: true,
  );

  Widget _buildBody(BuildContext context, SignupState state, var deviceType) {
    return Center(
      child: Container(
        width: 500,
        color: colorWhite,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    width: 200,
                    height: 100,
                    child: Image.asset("assets/images/logo.png")),
                Text(
                  '${'signup_below'.tr} :',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
                SizedBox(height: 15),
                CustomTextInput(
                    titleText: 'username',
                    validator: Validation().validationName,
                    hintText: 'username',
                    controller: _nameController),
                SizedBox(height: 10),
                CustomTextInput(
                    titleText: 'email',
                    validator: Validation().validationEmail,
                    textInputType: TextInputType.emailAddress,
                    hintText: 'email',
                    controller: _emailController),
                SizedBox(height: 10),
                CustomTextInput(
                  titleText: 'password',
                  hintText: 'password',
                  validator: Validation().validationPassword,
                  controller: _passController,
                  obscureText: state.data.isPasswordObscure,
                  hasSuffixIcon: true,
                  onTapSuffixIcon: () {
                    context.read<SignupCubit>().isShowPassword();
                  },
                ),
                SizedBox(height: 10),
                CustomTextInput(
                  titleText: 'confirm_password',
                  hintText: 'confirm_password',
                  controller: _passConfirmController,
                  validator: (value) {
                    return Validation()
                        .validationPasswordConfirm(value, _passController.text);
                  },
                  obscureText: state.data.isPasswordObscureConfirm,
                  hasSuffixIcon: true,
                  onTapSuffixIcon: () {
                    context.read<SignupCubit>().isShowPasswordConfirm();
                  },
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.offAndToNamed(AppRoute.loginScreen);
                      },
                      child: Text(
                        'return_login'.tr,
                        style: TextStyle(
                            color: blueColor,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        if (!state.data.isLoading) if (_formKey.currentState!
                            .validate()) {
                          context.read<SignupCubit>().register(
                              email: _emailController.text,
                              password: _passController.text,
                              userName: _nameController.text);
                        }
                      },
                      child: SizedBox(
                        width: 50.0,
                        child: state.data.isLoading
                            ? SpinKitCircle(
                                color: colorWhite,
                                size: 24,
                              )
                            : Text(
                                'sign_up'.tr,
                                style: TextStyle(color: Colors.white),
                              ),
                      ),
                      color: Colors.blueGrey[700],
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
