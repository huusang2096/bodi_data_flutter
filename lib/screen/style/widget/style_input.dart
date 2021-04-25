import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/inventory/category.dart';
import 'package:bodidatacms/model/inventory/style_request.dart';
import 'package:bodidatacms/model/profile/clothing_preferency.dart';
import 'package:bodidatacms/screen/style/cubit/style_cubit.dart';
import 'package:bodidatacms/screen/style/widget/attachment.dart';
import 'package:bodidatacms/screen/style/widget/grament_detail.dart';
import 'package:bodidatacms/screen/style/widget/list_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StypeInputWidget extends StatelessWidget {
  List<ClothingPreferency> listGenders = [];
  List<Category> listCategories = [];
  StyleRequest request = new StyleRequest();
  ClothingPreferency? clothingPreferencySelect;
  Category? categorySelect;
  int styleID = -1;

  @override
  Widget build(BuildContext context) {
    listGenders = context.watch<StyleCubit>().state.data.listGenders;
    listCategories = context.watch<StyleCubit>().state.data.listCategories;
    request = context.watch<StyleCubit>().state.data.styleRequest;
    clothingPreferencySelect =
        context.watch<StyleCubit>().state.data.clothingPreferencySelect;
    categorySelect = context.watch<StyleCubit>().state.data.categorySelect;
    styleID = context.watch<StyleCubit>().state.data.styleId;
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(height: 20),
        _customFormInput(
            titleText: 'style_name',
            hintText: 'input_style_name',
            onChange: (value) => request.styleName = value,
            listInputFormatters: [],
            controller: new TextEditingController(text: request.styleName)),
        SizedBox(height: 50),
        Row(
          children: [
            Flexible(
                flex: 6,
                child: _customFormInput(
                    titleText: 'brand',
                    hintText: 'brand',
                    listInputFormatters: [],
                    onChange: (value) => request.brand = value,
                    controller:
                        new TextEditingController(text: request.brand))),
            SizedBox(width: 4),
            Flexible(
                flex: 2,
                child: _customFormInput(
                    titleText: 'season',
                    hintText: 'season',
                    listInputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),
                    ],
                    onChange: (value) => request.season = value,
                    controller:
                        new TextEditingController(text: request.season))),
            SizedBox(width: 4),
            Flexible(
              flex: 2,
              child: _customFormInput(
                  titleText: 'year',
                  hintText: 'year',
                  listInputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9.,]+')),
                  ],
                  onChange: (value) => request.year = int.parse(value),
                  controller: new TextEditingController(
                      text:
                          request.year != null ? request.year.toString() : "")),
            ),
          ],
        ),
        SizedBox(height: 50),
        Row(
          children: [
            Flexible(
                flex: 3,
                child: _customFormInput(
                    titleText: 'model_code',
                    hintText: 'model_code',
                    listInputFormatters: [],
                    onChange: (value) => request.modelCode = value,
                    controller:
                        new TextEditingController(text: request.modelCode))),
            SizedBox(width: 4),
            Flexible(
              flex: 4,
              child: _buildCategory(
                titleText: 'category_style',
              ),
            ),
            SizedBox(width: 4),
            Flexible(
              flex: 3,
              child: _buildGender(titleText: 'style_name'),
            ),
          ],
        ),
        ListOptionsWidget(),
        GramentDetailWidget(),
        if (styleID != -1)
          AttachmentslWidget(
            idStyle: styleID,
          ),
      ]),
    );
  }

  Widget _buildCategory({
    required String titleText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText.tr,
          style: titleInput,
        ),
        SizedBox(height: 5),
        DropdownButtonFormField<Category>(
          decoration: getInputdecotion(),
          style: title,
          value: categorySelect,
          onChanged: (value) {
            request.categoryId = value!.id;
          },
          items: listCategories.map((e) {
            return DropdownMenuItem<Category>(
              child: Text(e.name!, style: title),
              value: e,
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildGender({
    required String titleText,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText.tr,
          style: titleInput,
        ),
        SizedBox(height: 5),
        DropdownButtonFormField<ClothingPreferency>(
          decoration: getInputdecotion(),
          style: title,
          value: clothingPreferencySelect,
          onChanged: (value) {
            request.genderId = value!.id;
          },
          items: listGenders.map((e) {
            return DropdownMenuItem<ClothingPreferency>(
              child: Text(e.name!, style: title),
              value: e,
            );
          }).toList(),
        ),
      ],
    );
  }

  InputDecoration getInputdecotion() {
    return InputDecoration(
      isDense: true,
      hintStyle: title.copyWith(color: Colors.grey),
      contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
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
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText.tr,
          style: titleInput,
        ),
        SizedBox(height: 5),
        TextFormField(
            keyboardType: TextInputType.text,
            controller: controller,
            obscureText: obscureText ?? false,
            maxLines: maxLines ?? 1,
            inputFormatters: listInputFormatters,
            onChanged: (value) {
              if (value.isNotEmpty) {
                onChange(value);
              }
            },
            decoration: InputDecoration(
              isDense: true,
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
              suffixIcon: hasSuffixIcon ?? false
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
    );
  }
}
