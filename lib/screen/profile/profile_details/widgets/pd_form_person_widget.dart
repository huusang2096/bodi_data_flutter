import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/profile/profile_request.dart';
import 'package:bodidatacms/screen/profile/profile_details/cubit/profile_details_cubit.dart';
import 'package:bodidatacms/screen/profile/profile_details/widgets/clothing_widget.dart';
import 'package:bodidatacms/widgets/custom_form_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormPerson extends StatefulWidget {
  @override
  _FormPersonState createState() => _FormPersonState();
}

class _FormPersonState extends State<FormPerson> {
  final GlobalKey<FormState> formKey = GlobalKey();

  final TextEditingController cmtController = TextEditingController();

  late ProfileRequest profileRequest;

  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ProfileDetailsCubit>().state.data;
    profileRequest = state.profileRequest;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextInput(
              titleText: 'name',
              hintText: 'name',
              controller:
                  new TextEditingController(text: profileRequest.name ?? ""),
              onAddData: (value) {
                profileRequest.name = value;
              },
              fontSizeInput: 16),
          SizedBox(height: 15),
          Text(
            'clothing_preference'.tr,
            style: titleInput,
          ),
          ClothingWidget(),
          SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: CustomTextInput(
                  titleText: 'year_of_birth',
                  hintText: 'year_of_birth',
                  controller: new TextEditingController(
                      text: profileRequest.yearOfBirth != null
                          ? profileRequest.yearOfBirth.toString()
                          : ""),
                  textInputType: TextInputType.number,
                  formatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),
                  ],
                  onAddData: (value) {
                    profileRequest.yearOfBirth = int.parse(value);
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(),
              ),
            ],
          ),
          SizedBox(height: 15),
          CustomTextInput(
            titleText: 'hashtags',
            hintText: 'hashtags',
            controller:
                new TextEditingController(text: profileRequest.hashtags ?? ""),
            maxLines: 4,
            onAddData: (value) {
              profileRequest.hashtags = value;
            },
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }

  @override
  void dispose() {
    cmtController.dispose();
    super.dispose();
  }
}
