import 'package:auto_size_text/auto_size_text.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/common/validation.dart';
import 'package:bodidatacms/model/inventory/size_option.dart';
import 'package:bodidatacms/screen/style/cubit/style_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class ListOptionsWidget extends StatelessWidget {
  List<SizeOption> listSizeOption = [];
  int styleId = -1;

  @override
  Widget build(BuildContext context) {
    listSizeOption = context.watch<StyleCubit>().state.data.listSizeOption;
    styleId = context.watch<StyleCubit>().state.data.styleId;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Container(height: 2, color: boder),
          SizedBox(height: 20),
          Text(
            "Sizing Option",
            style: titleHeader,
          ),
          SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            primary: false,
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(vertical: 10),
            itemCount: listSizeOption.length,
            itemBuilder: (context, index) {
              SizeOption sizeOption = listSizeOption.elementAt(index);
              return itemOptions(sizeOption, context, index);
            },
          ),
          ElevatedButton(
            onPressed: () {
              context.read<StyleCubit>().openSizeChart();
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(indigoColor)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'open_size_chart'.tr,
                overflow: TextOverflow.ellipsis,
                style: textButton,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

showDialogAddOption(BuildContext context, int position) {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = new TextEditingController();
  // ignore: close_sinks
  final cubit = context.read<StyleCubit>();
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return Builder(
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
                          'Options'.tr,
                          style: titleDialog,
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: nameController,
                          validator: Validation().validationCommon,
                          decoration: InputDecoration(
                              isDense: true,
                              hintText: 'name'.tr,
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
                                  cubit.addOptions(
                                      nameController.text, position);
                                  Navigator.of(context).pop();
                                }
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(indigoColor)),
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
                                        'add'.tr,
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
        );
      });
}

Widget itemOptions(SizeOption sizeOption, BuildContext context, int index) {
  Widget buildAdd() {
    return InkWell(
      onTap: () {
        showDialogAddOption(context, index);
      },
      child: Container(
        decoration: BoxDecoration(
            color: backgroundAdd,
            border: Border.all(
              color: boderAdd,
              style: BorderStyle.solid,
              width: 2.0,
            )),
        width: 40,
        height: 40,
        child: Icon(Icons.add),
      ),
    );
  }

  return Padding(
    padding: EdgeInsets.symmetric(vertical: 4),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Option Name",
          style: titleInput,
        ),
        Row(
          children: [
            Flexible(
                flex: 3,
                child: _customFormInput(
                    hintText: 'Option Name',
                    addData: (value) {
                      sizeOption.name = value;
                    },
                    controller:
                        new TextEditingController(text: sizeOption.name))),
            SizedBox(width: 10),
            Flexible(
              flex: 7,
              child: sizeOption.contents != null
                  ? Row(
                      children: [
                        Expanded(
                            child: ListDataOptions(data: sizeOption.contents!)),
                        buildAdd(),
                      ],
                    )
                  : buildAdd(),
            )
          ],
        ),
      ],
    ),
  );
}

Widget _customFormInput({
  required String hintText,
  required TextEditingController controller,
  bool? obscureText,
  bool? hasSuffixIcon,
  Function()? onTapSuffixIcon,
  required Function(String) addData,
  int? maxLines,
}) {
  return TextFormField(
      keyboardType: TextInputType.text,
      controller: controller,
      obscureText: obscureText ?? false,
      maxLines: maxLines ?? 1,
      onChanged: (value) {
        if (value.isNotEmpty) {
          addData(value);
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
      style: title);
}

class ListDataOptions extends StatelessWidget {
  const ListDataOptions({
    Key? key,
    required this.data,
  }) : super(key: key);

  final List<String> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.builder(
        itemCount: data.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            decoration: buildBoxDecoration(index),
            width: 40,
            height: 40,
            child: Center(
                child: AutoSizeText(
              data.elementAt(index),
              style: title,
            )),
          );
        },
      ),
    );
  }

  BoxDecoration buildBoxDecoration(int index) {
    return BoxDecoration(
      color: Colors.transparent,
      border: Border(
          top: BorderSide(color: boder, width: 2),
          bottom: BorderSide(color: boder, width: 2),
          left:
              index == 0 ? BorderSide(color: boder, width: 2) : BorderSide.none,
          right: BorderSide(color: boder, width: 2)),
    );
  }
}
