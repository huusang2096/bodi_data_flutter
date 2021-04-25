import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/common/validation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bodidatacms/screen/user/cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddGroupWidget extends HookWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final nameGroupController = useTextEditingController();
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        buildButton(nameGroupController),
      ],
    );
  }

  Builder buildButton(TextEditingController nameGroupController) {
    return Builder(builder: (context) {
      final isLoading = context.watch<UserCubit>().state.data.isLoading;
      return ElevatedButton(
        onPressed: () {
          if (!isLoading) showDialogCreateGroup(context, nameGroupController);
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(indigoColor)),
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Icon(
                  Icons.add_circle,
                  size: 20,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text(
                  'create_new_group'.tr,
                  style: textButton,
                ),
              ],
            )),
      );
    });
  }

  showDialogCreateGroup(
      BuildContext context, TextEditingController nameGroupController) {
    // ignore: close_sinks
    final cubit = BlocProvider.of<UserCubit>(context);
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (_) {
          return BlocProvider.value(
            value: cubit,
            child: Builder(
              builder: (context) => Dialog(
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      // height: 250,
                      width: 400.0,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              'create_new_group'.tr,
                              style: titleDialog,
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              controller: nameGroupController,
                              validator: Validation().validationCommon,
                              decoration: InputDecoration(
                                  isDense: true,
                                  hintText: 'name_group'.tr,
                                  hintStyle: textGreyBold,
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: textButtonRed, width: 2)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: boder, width: 2)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: boder, width: 2)),
                                  errorBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: boder, width: 2))),
                            ),
                            SizedBox(height: 20.0),
                            Container(
                              width: 400.0,
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: 100.0,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      context.read<UserCubit>().createNewGroup(
                                          nameGroupController.text);
                                    }
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              indigoColor)),
                                  child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      child: context
                                              .watch<UserCubit>()
                                              .state
                                              .data
                                              .isLoadingButtonCreate
                                          ? SpinKitCircle(
                                              color: colorWhite,
                                              size: 24,
                                            )
                                          : Row(
                                              children: [
                                                Icon(
                                                  Icons.add_circle,
                                                  size: 20,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(width: 10),
                                                Text(
                                                  'create'.tr,
                                                  style: textButton,
                                                ),
                                              ],
                                            )),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0.0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Align(
                          alignment: Alignment.topRight,
                          child: CircleAvatar(
                            radius: 14.0,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.close, color: Colors.red),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
