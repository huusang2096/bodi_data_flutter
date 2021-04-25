import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/profile/hip_shape.dart';
import 'package:bodidatacms/model/profile/profile_request.dart';
import 'package:bodidatacms/screen/profile/profile_details/cubit/profile_details_cubit.dart';
import 'package:bodidatacms/screen/profile/profile_details/widgets/highhip_widget.dart';
import 'package:bodidatacms/screen/profile/profile_details/widgets/measurements_widget.dart';
import 'package:bodidatacms/screen/profile/profile_details/widgets/pd_row_item_measure_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormMeasureWidget extends StatelessWidget {
  final DeviceScreenType deviceScreenType;

  FormMeasureWidget({Key? key, required this.deviceScreenType})
      : super(key: key);

  late ProfileRequest profileRequest;

  List<HipShape> _listHipeShape = [];

  HipShape? _hipShape;

  @override
  Widget build(BuildContext context) {
    profileRequest =
        context.watch<ProfileDetailsCubit>().state.data.profileRequest;

    _listHipeShape =
        context.watch<ProfileDetailsCubit>().state.data.listHipShapes;

    _hipShape = context.watch<ProfileDetailsCubit>().state.data.hipShape;

    Widget _buildCustomRowItemHipShape(
        {required String titleText,
        required String hintText,
        required BuildContext context,
        required Function(HipShape) onSelect,
        required DeviceScreenType deviceScreenType}) {
      bool isDesktop = deviceScreenType == DeviceScreenType.desktop;
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              titleText.tr,
              style: titleInput,
              textAlign: isDesktop ? TextAlign.end : TextAlign.start,
            ),
          ),
          SizedBox(width: 5),
          Expanded(
            flex: 2,
            child: DropdownButtonFormField<HipShape>(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                hintText: hintText.tr,
                hintStyle: title.copyWith(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    width: 2.0,
                    color: Colors.transparent,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    width: 2.0,
                    color: boder,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    width: 2.0,
                    color: Colors.red,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    width: 2.0,
                    color: boder,
                  ),
                ),
              ),
              style: title,
              value: _hipShape,
              onChanged: (value) {
                profileRequest.hipshapeId = value!.id;
              },
              items: _listHipeShape.map((e) {
                return DropdownMenuItem<HipShape>(
                  child: Text(e.name!),
                  value: e,
                );
              }).toList(),
            ),
          ),
          SizedBox(width: 5),
          isDesktop
              ? Expanded(
                  flex: 2,
                  child: SizedBox(),
                )
              : SizedBox.shrink(),
        ],
      );
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MessagerContentWidget(),
          SizedBox(height: 20),
          RowItemMeasureWidget(
            titleText: 'weight',
            hintText: 'weight',
            controller: new TextEditingController(
                text: profileRequest.weight != null
                    ? profileRequest.weight.toString()
                    : ""),
            deviceScreenType: deviceScreenType,
            addData: (data) {
              profileRequest.weight = int.tryParse(data ?? '');
            },
          ),
          SizedBox(height: 5),
          RowItemMeasureWidget(
            titleText: 'height',
            hintText: 'height',
            controller: new TextEditingController(
                text: profileRequest.height != null
                    ? profileRequest.height.toString()
                    : ""),
            deviceScreenType: deviceScreenType,
            addData: (data) {
              profileRequest.height = int.tryParse(data ?? '');
            },
          ),
          SizedBox(height: 5),
          RowItemMeasureWidget(
            titleText: 'neck',
            hintText: 'neck',
            controller: new TextEditingController(
                text: profileRequest.neck != null
                    ? profileRequest.neck.toString()
                    : ""),
            deviceScreenType: deviceScreenType,
            addData: (data) {
              profileRequest.neck = int.tryParse(data ?? '');
            },
          ),
          SizedBox(height: 5),
          RowItemMeasureWidget(
            titleText: 'chest',
            hintText: 'chest',
            controller: new TextEditingController(
                text: profileRequest.chest != null
                    ? profileRequest.chest.toString()
                    : ""),
            deviceScreenType: deviceScreenType,
            addData: (data) {
              profileRequest.chest = int.tryParse(data!);
            },
          ),
          SizedBox(height: 5),
          RowItemMeasureWidget(
            titleText: 'natural_waist',
            hintText: 'natural_waist',
            controller: new TextEditingController(
                text: profileRequest.naturalWaist != null
                    ? profileRequest.naturalWaist.toString()
                    : ""),
            deviceScreenType: deviceScreenType,
            addData: (data) {
              profileRequest.naturalWaist = int.tryParse(data ?? '');
            },
          ),
          SizedBox(height: 5),
          RowItemMeasureWidget(
            titleText: 'waist',
            hintText: 'waist',
            controller: new TextEditingController(
                text: profileRequest.waist != null
                    ? profileRequest.waist.toString()
                    : ""),
            deviceScreenType: deviceScreenType,
            addData: (data) {
              profileRequest.waist = int.tryParse(data ?? '');
            },
          ),
          SizedBox(height: 5),
          RowItemMeasureWidget(
            titleText: 'seat',
            hintText: 'seat',
            controller: new TextEditingController(
                text: profileRequest.seat != null
                    ? profileRequest.seat.toString()
                    : ""),
            deviceScreenType: deviceScreenType,
            addData: (data) {
              profileRequest.seat = int.tryParse(data ?? '');
            },
          ),
          SizedBox(height: 5),
          HightHipWidget(),
          SizedBox(height: 5),
          RowItemMeasureWidget(
            titleText: 'inseam',
            hintText: 'inseam',
            controller: new TextEditingController(
                text: profileRequest.inseam != null
                    ? profileRequest.inseam.toString()
                    : ""),
            deviceScreenType: deviceScreenType,
            addData: (data) {
              profileRequest.inseam = int.tryParse(data ?? '');
            },
          ),
          SizedBox(height: 5),
          RowItemMeasureWidget(
            titleText: 'center_back',
            hintText: 'center_back',
            controller: new TextEditingController(
                text: profileRequest.centerBack != null
                    ? profileRequest.centerBack.toString()
                    : ""),
            deviceScreenType: deviceScreenType,
            addData: (data) {
              profileRequest.centerBack = int.tryParse(data ?? '');
            },
          ),
          SizedBox(height: 5),
          RowItemMeasureWidget(
            titleText: 'shoulder',
            hintText: 'shoulder',
            controller: new TextEditingController(
                text: profileRequest.shoulder != null
                    ? profileRequest.shoulder.toString()
                    : ""),
            deviceScreenType: deviceScreenType,
            addData: (data) {
              profileRequest.shoulder = int.tryParse(data ?? '');
            },
          ),
          SizedBox(height: 5),
          RowItemMeasureWidget(
            titleText: 'arm_length',
            hintText: 'arm_length',
            controller: new TextEditingController(
                text: profileRequest.armLength != null
                    ? profileRequest.armLength.toString()
                    : ""),
            deviceScreenType: deviceScreenType,
            addData: (data) {
              profileRequest.armLength = int.tryParse(data ?? '');
            },
          ),
          SizedBox(height: 5),
          RowItemMeasureWidget(
            titleText: 'sleeve_length',
            hintText: 'sleeve_length',
            controller: new TextEditingController(
                text: profileRequest.sleeveLength != null
                    ? profileRequest.sleeveLength.toString()
                    : ""),
            deviceScreenType: deviceScreenType,
            addData: (data) {
              profileRequest.sleeveLength = int.tryParse(data ?? '');
            },
          ),
          SizedBox(height: 5),
          RowItemMeasureWidget(
            titleText: 'shirt_length',
            hintText: 'shirt_length',
            controller: new TextEditingController(
                text: profileRequest.shirtLength != null
                    ? profileRequest.shirtLength.toString()
                    : ""),
            deviceScreenType: deviceScreenType,
            addData: (data) {
              profileRequest.shirtLength = int.tryParse(data ?? '');
            },
          ),
          SizedBox(height: 5),
          RowItemMeasureWidget(
            titleText: 'bicep',
            hintText: 'bicep',
            controller: new TextEditingController(
                text: profileRequest.bicep != null
                    ? profileRequest.bicep.toString()
                    : ""),
            deviceScreenType: deviceScreenType,
            addData: (data) {
              profileRequest.bicep = int.tryParse(data ?? '');
            },
          ),
          SizedBox(height: 5),
          RowItemMeasureWidget(
            titleText: 'outseam',
            hintText: 'outseam',
            controller: new TextEditingController(
                text: profileRequest.outseam != null
                    ? profileRequest.outseam.toString()
                    : ""),
            deviceScreenType: deviceScreenType,
            addData: (data) {
              profileRequest.outseam = int.tryParse(data ?? '');
            },
          ),
          SizedBox(height: 5),
          _buildCustomRowItemHipShape(
              titleText: 'hip_shape',
              hintText: 'hip_shape',
              context: context,
              deviceScreenType: deviceScreenType,
              onSelect: (value) {
                profileRequest.hipshapeId = value.id!;
              }),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
