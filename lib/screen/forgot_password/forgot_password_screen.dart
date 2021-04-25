import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/common/validation.dart';
import 'package:bodidatacms/routes.dart';
import 'package:bodidatacms/screen/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:bodidatacms/widgets/custom_appbar.dart';
import 'package:bodidatacms/widgets/custom_form_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static BlocProvider<ForgotPasswordCubit> provider() {
    return BlocProvider(
        create: (context) => ForgotPasswordCubit(),
        child: ForgotPasswordScreen());
  }

  final TextEditingController _idController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final deviceScreenType = getDeviceType(MediaQuery.of(context).size);
    return Scaffold(
      appBar: deviceScreenType != DeviceScreenType.mobile
          ? null
          : CustomAppbar(
              title: 'forgot_password'.tr,
            ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            // color: deviceScreenType != DeviceScreenType.mobile
            //     ? Colors.black54
            //     : Colors.transparent,
            color: Colors.black54,
            child: _buildBody(context, deviceScreenType),
          ),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, DeviceScreenType deviceScreenType) {
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
              children: [
                SizedBox(
                    width: 200,
                    height: 100,
                    child: Image.asset("assets/images/logo.png")),
                Text('input_and_send_email_verification'.tr,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1)),
                SizedBox(height: 15),
                CustomTextInput(
                  titleText: 'email',
                  hintText: 'email',
                  textInputType: TextInputType.emailAddress,
                  controller: _idController,
                  spaceTextAndFormField: 10,
                  validator: Validation().validationEmail,
                  hasSuffixIcon: false,
                ),
                SizedBox(height: 10),
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
                      onPressed: () {},
                      child: Container(
                        width: 130.0,
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        alignment: Alignment.center,
                        child: context
                                .watch<ForgotPasswordCubit>()
                                .state
                                .data
                                .isLoading
                            ? SpinKitCircle(
                                color: colorWhite,
                                size: 24,
                              )
                            : Text(
                                'send'.tr.toUpperCase(),
                                style: TextStyle(color: Colors.white),
                              ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                      color: Colors.blueGrey[700],
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
