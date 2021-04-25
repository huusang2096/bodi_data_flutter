import 'dart:html';

import 'package:bodidatacms/common/bloc/bloc.dart';
import 'package:bodidatacms/common/prefs/app_prefs.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/common/validation.dart';
import 'package:bodidatacms/routes.dart';
import 'package:bodidatacms/screen/login/cubit/login_cubit.dart';
import 'package:bodidatacms/screen/template/templateModel.dart';
import 'package:bodidatacms/widgets/custom_appbar.dart';
import 'package:bodidatacms/widgets/custom_form_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../locator.dart';

class LoginScreen extends CubitWidget<LoginCubit, LoginState> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FocusNode focus = FocusNode();
  final FocusNode focusPassword = FocusNode();
  static BlocProvider<LoginCubit> provider() {
    return BlocProvider(
      create: (_) => LoginCubit(),
      child: LoginScreen(),
    );
  }

  @override
  void afterFirstLayout(BuildContext context) {
    locator<AppPref>().setMain(false);

    context.read<LoginCubit>().checkRememberMe(
        idController: _idController, passController: _passController);
  }

  @override
  void listener(BuildContext context, LoginState state) {
    if (state is LoginSuccess) {
      Provider.of<TemplateModel>(context, listen: false).changeTemple();
      Get.offAndToNamed(AppRoute.searchScreen);
    }
    super.listener(context, state);
  }

  @override
  Widget builder(BuildContext context, LoginState state) {
    document.addEventListener('keydown', (dynamic event) {
      if (event.code == 'Tab') {
        event.preventDefault();
      }
    });
    final size = MediaQuery.of(context).size;
    final deviceType = getDeviceType(size);
    return Scaffold(
      appBar: deviceType != DeviceScreenType.mobile
          ? null
          : CustomAppbar(
              title: 'login',
            ),
      body: GestureDetector(
        onTap: () {
          focus.unfocus();
          focusPassword.unfocus();
          context.read<LoginCubit>().isCallChangeLanguages(isChange: false);
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

  Widget _buildBody(BuildContext context, LoginState state, var deviceType) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: 500,
        color: colorWhite,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                    width: 180,
                    height: 80,
                    child: Image.asset("assets/images/logo.png")),
                SizedBox(height: 5),
                Text(
                  'signin_below'.tr,
                  style: titleBold,
                ),
                SizedBox(height: 10),
                CustomTextInput(
                  titleText: 'email',
                  focus: focus,
                  hintText: 'email',
                  textInputType: TextInputType.emailAddress,
                  controller: _idController,
                  spaceTextAndFormField: 10,
                  onFieldSubmitted: () {
                    context
                        .read<LoginCubit>()
                        .isCallChangeLanguages(isChange: false);
                    if (!state.data.isLoading) if (_formKey.currentState!
                        .validate()) {
                      context.read<LoginCubit>().login(
                          email: _idController.text,
                          passWord: _passController.text);
                    }
                  },
                  validator: Validation().validationEmail,
                  hasSuffixIcon: false,
                ),
                SizedBox(height: 5),
                CustomTextInput(
                  titleText: 'password',
                  focus: focusPassword,
                  hintText: 'password',
                  validator: Validation().validationPassword,
                  controller: _passController,
                  spaceTextAndFormField: 10,
                  obscureText: state.data.isPasswordObscure,
                  onFieldSubmitted: () {
                    context
                        .read<LoginCubit>()
                        .isCallChangeLanguages(isChange: false);
                    if (!state.data.isLoading) if (_formKey.currentState!
                        .validate()) {
                      print('why');
                      context.read<LoginCubit>().login(
                          email: _idController.text,
                          passWord: _passController.text);
                    }
                  },
                  hasSuffixIcon: true,
                  onTapSuffixIcon: () {
                    context.read<LoginCubit>().isShowPassword();
                  },
                ),
                state.data.errorText != null
                    ? Container(
                        padding: EdgeInsets.only(top: 6.0),
                        child: Text(state.data.errorText!,
                            style: TextStyle(color: textRed)))
                    : SizedBox.shrink(),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<LoginCubit>().isRememberMe();
                          },
                          child: Stack(
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(
                                        color: state.data.isRememberMe
                                            ? Colors.blue
                                            : Colors.grey)),
                              ),
                              state.data.isRememberMe
                                  ? Positioned(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Icon(
                                          Icons.check,
                                          color: Colors.blue,
                                          size: 20,
                                        ),
                                      ),
                                    )
                                  : SizedBox.shrink(),
                            ],
                          ),
                        ),
                        SizedBox(width: 5),
                        Text('remember_me'.tr, style: TextStyle(fontSize: 14)),
                      ],
                    ),
                    MaterialButton(
                      onPressed: () {
                        context
                            .read<LoginCubit>()
                            .isCallChangeLanguages(isChange: false);
                        if (!state.data.isLoading) if (_formKey.currentState!
                            .validate()) {
                          context.read<LoginCubit>().login(
                              email: _idController.text,
                              passWord: _passController.text);
                        }
                      },
                      child: Container(
                        width: 70.0,
                        alignment: Alignment.center,
                        child: state.data.isLoading
                            ? SpinKitCircle(
                                color: colorWhite,
                                size: 24,
                              )
                            : Text(
                                'login'.tr.toUpperCase(),
                                style: TextStyle(color: Colors.white),
                              ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                      color: Colors.blueGrey[700],
                    )
                  ],
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoute.signupScreen);
                  },
                  child: Text(
                    '${'sign_up'.tr.toUpperCase()}?',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoute.forgotPasswordScreen);
                  },
                  child: Text(
                    '${'forgot_pass'.tr}?',
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                  ),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose(BuildContext context) {
    focus.dispose();
    focusPassword.dispose();
    _idController.dispose();
    _passController.dispose();
    super.dispose(context);
  }
}
