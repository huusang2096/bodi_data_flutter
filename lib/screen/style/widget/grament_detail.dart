import 'package:bodidatacms/common/config.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/inventory/style_request.dart';
import 'package:bodidatacms/screen/style/cubit/style_cubit.dart';

import 'package:bodidatacms/widgets/custom_form_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GramentDetailWidget extends StatelessWidget {
  List<String> fabrics = listFabricWeights;
  String _selectFabrics = selectFabricWeights;

  late GarmentDetails garmentDetails;

  @override
  Widget build(BuildContext context) {
    garmentDetails = context.watch<StyleCubit>().state.data.garmentDetails;

    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 20),
        Container(height: 2, color: boder),
        SizedBox(height: 20),
        Text(
          'garment_details'.tr,
          style: titleHeader,
        ),
        SizedBox(height: 10),
        Text(
          'fabric_weight_and_content'.tr,
          style: title,
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Flexible(
                flex: 6,
                child: _buildCustomRowItemHipShape(
                    titleText: 'Fabric Weight',
                    data: fabrics,
                    onSelect: (value) {
                      garmentDetails.fabricWeight!.name = value;
                    },
                    select: _selectFabrics),
              ),
              SizedBox(width: 4),
              Flexible(
                flex: 2,
                child: _customFormInput(
                    titleText: '',
                    showUnitWidget: true,
                    hintText: 'gsm',
                    onChange: (value) =>
                        garmentDetails.fabricWeight!.gsm = int.parse(value),
                    listInputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),
                    ],
                    controller: new TextEditingController(
                        text: garmentDetails.fabricWeight != null
                            ? garmentDetails.fabricWeight!.gsm.toString()
                            : "")),
              ),
              SizedBox(width: 4),
              Flexible(
                flex: 2,
                child: Container(),
              ),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          primary: false,
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(top: 10.0, left: 10),
          itemCount: garmentDetails.contents!.length,
          itemBuilder: (context, index) {
            return buildRowContent(garmentDetails.contents!.elementAt(index));
          },
        ),
        SizedBox(height: 10),
        CustomTextInput(
          titleText: 'Patterning',
          hintText: '',
          onAddData: (value) {
            if (value.isNotEmpty) {
              garmentDetails.patterning!.content = value;
            }
          },
          controller: new TextEditingController(
              text: garmentDetails.patterning!.content),
          maxLines: 4,
        ),
        Container(
          height: 2,
          color: boder,
          margin: EdgeInsets.symmetric(vertical: 20),
        ),
        CustomTextInput(
          titleText: 'Fit Funciton and Appearance',
          hintText: '',
          onAddData: (value) {
            if (value.isNotEmpty) {
              garmentDetails.fixFunctionAndAppearance!.content = value;
            }
          },
          controller: new TextEditingController(
              text: garmentDetails.fixFunctionAndAppearance!.content),
          maxLines: 4,
        ),
      ]),
    );
  }

  Row buildRowContent(Content content) {
    return Row(
      children: [
        Flexible(
          flex: 6,
          child: _customFormInput(
              titleText: content.title!.toString(),
              hintText: '',
              listInputFormatters: [],
              onChange: (value) => content.content = value,
              controller:
                  new TextEditingController(text: content.content!.toString())),
        ),
        SizedBox(width: 4),
        Flexible(
          flex: 2,
          child: _customFormInput(
              titleText: 'Percentage',
              hintText: '%',
              showUnitWidget: true,
              listInputFormatters: [],
              onChange: (value) => content.percentage = value,
              controller: new TextEditingController(
                  text: content.percentage!.toString())),
        ),
        SizedBox(width: 4),
        Flexible(
          flex: 2,
          child: Container(),
        ),
      ],
    );
  }

  Widget _buildCustomRowItemHipShape({
    required String titleText,
    required List<String> data,
    required Function(String) onSelect,
    String? select,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText.tr,
          style: titleInput,
        ),
        SizedBox(height: 5),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
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
          value: select ?? '',
          onChanged: (value) {
            if (value!.isNotEmpty) {
              onSelect(value);
            }
          },
          items: data.map((e) {
            return DropdownMenuItem<String>(
              child: Text(e.tr),
              value: e.tr,
            );
          }).toList(),
        )
      ],
    );
  }

  Widget _customFormInput({
    required String titleText,
    required String hintText,
    required TextEditingController controller,
    bool? obscureText,
    bool? hasSuffixIcon,
    Function()? onTapSuffixIcon,
    required Function(String) onChange,
    required List<TextInputFormatter> listInputFormatters,
    int? maxLines,
    bool showUnitWidget = false,
  }) {
    final widgetText = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [Text(hintText.tr, style: title.copyWith(color: Colors.grey))],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText.tr,
          style: titleInput,
        ),
        SizedBox(height: 5),
        Stack(
          alignment: Alignment.centerRight,
          children: [
            TextFormField(
                keyboardType: TextInputType.text,
                controller: controller,
                obscureText: obscureText ?? false,
                maxLines: maxLines ?? 1,
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    onChange(value);
                  }
                },
                inputFormatters: listInputFormatters,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: '',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
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
                  suffixIcon: showUnitWidget
                      ? widgetText
                      : hasSuffixIcon ?? false
                          ? IconButton(
                              onPressed: onTapSuffixIcon ?? () {},
                              color: Colors.grey,
                              icon: Icon(obscureText ?? false
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            )
                          : null,
                ),
                style: title),
          ],
        ),
      ],
    );
  }
}
