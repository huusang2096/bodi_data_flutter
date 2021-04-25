import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/profile/clothing_preferency.dart';
import 'package:bodidatacms/model/profile/profile_request.dart';
import 'package:bodidatacms/screen/profile/profile_details/cubit/profile_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClothingWidget extends StatefulWidget {
  ClothingWidget({Key? key}) : super(key: key);

  @override
  _ClothingWidgetState createState() => _ClothingWidgetState();
}

class _ClothingWidgetState extends State<ClothingWidget> {
  late ProfileRequest profileRequest;

  List<ClothingPreferency> _radioValueGender = [];

  ClothingPreferency? genderModel;

  @override
  Widget build(BuildContext context) {
    profileRequest =
        context.watch<ProfileDetailsCubit>().state.data.profileRequest;

    _radioValueGender =
        context.watch<ProfileDetailsCubit>().state.data.listGenders;
    if (_radioValueGender.length > 0) {
      genderModel = _radioValueGender.firstWhere(
          (element) => element.id == profileRequest.clothingPreferencyId);
    }

    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index) {
        ClothingPreferency genderModelData = _radioValueGender.elementAt(index);
        return RadioListTile<ClothingPreferency>(
          contentPadding: EdgeInsets.all(0),
          selected: genderModelData.id == profileRequest.clothingPreferencyId,
          title: Text(genderModelData.name!, style: titleInput),
          value: genderModelData,
          groupValue: genderModel,
          activeColor: indigoColor,
          onChanged: (ClothingPreferency? value) {
            setState(() {
              genderModel = value;
              profileRequest.clothingPreferencyId = value!.id;
            });
          },
        );
      },
      itemCount: _radioValueGender.length,
    );
  }
}
