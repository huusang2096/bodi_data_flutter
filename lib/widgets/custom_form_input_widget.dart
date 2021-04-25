import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:bodidatacms/common/style.dart';

//Custom textformfield on page sign up & log in
class CustomTextInput extends StatelessWidget {
  final String titleText;
  final String hintText;
  final String? errorText;
  final TextEditingController controller;
  final bool? obscureText;
  final bool? hasSuffixIcon;
  final Function()? onTapSuffixIcon;
  final bool? isFontWeightTitle;
  final int? maxLines;
  final double? spaceTextAndFormField;
  final bool? isRow;
  final double? fontSizeInput;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
  final Function? onFieldSubmitted;
  final Function(String)? onAddData;
  final List<TextInputFormatter>? formatters;
  final FocusNode? focus;
  CustomTextInput(
      {this.focus,
      required this.titleText,
      required this.hintText,
      this.errorText,
      required this.controller,
      this.obscureText,
      this.hasSuffixIcon,
      this.onTapSuffixIcon,
      this.isFontWeightTitle,
      this.maxLines,
      this.spaceTextAndFormField,
      this.isRow = false,
      this.fontSizeInput,
      this.textInputType,
      this.validator,
      this.onFieldSubmitted,
      this.onAddData,
      this.formatters});

  @override
  Widget build(BuildContext context) {
    if (isRow!) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              titleText.tr,
              style: titleInput,
            ),
          ),
          SizedBox(width: spaceTextAndFormField ?? 5),
          Expanded(
            flex: 2,
            child: TextFormField(
                keyboardType: textInputType ?? TextInputType.text,
                controller: controller,
                focusNode: focus,
                obscureText: obscureText ?? false,
                onChanged: (value) {
                  if (onAddData != null) onAddData!(value);
                },
                onFieldSubmitted: (value) {
                  if (onFieldSubmitted != null) onFieldSubmitted!();
                },
                maxLines: maxLines ?? 1,
                validator: validator,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: hintText.tr,
                  errorText: errorText ?? null,
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
                style: title.merge(TextStyle(fontSize: fontSizeInput ?? null))),
          ),
        ],
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          titleText.tr,
          style: titleInput,
        ),
        SizedBox(height: spaceTextAndFormField ?? 5),
        TextFormField(
            keyboardType: TextInputType.text,
            controller: controller,
            focusNode: focus,
            obscureText: obscureText ?? false,
            maxLines: maxLines ?? 1,
            validator: validator,
            onChanged: (value) {
              if (onAddData != null) onAddData!(value);
            },
            inputFormatters: formatters ?? [],
            onFieldSubmitted: (value) {
              if (onFieldSubmitted != null) onFieldSubmitted!();
            },
            decoration: InputDecoration(
              isDense: true,
              hintText: hintText.tr,
              hintStyle: title.copyWith(color: Colors.grey),
              errorText: errorText ?? null,
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
            style: title.merge(TextStyle(fontSize: fontSizeInput ?? null))),
      ],
    );
  }
}
