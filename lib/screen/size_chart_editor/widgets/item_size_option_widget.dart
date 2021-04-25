import 'package:bodidatacms/common/resources.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/common/validation.dart';
import 'package:bodidatacms/model/inventory/measurement.dart';
import 'package:bodidatacms/model/inventory/size_option.dart';
import 'package:bodidatacms/screen/size_chart_editor/cubit/size_chart_editor_cubit.dart';
import 'package:bodidatacms/screen/size_chart_editor/widgets/sce_text_button_widget.dart';
import 'package:bodidatacms/widgets/custom_form_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:bodidatacms/common/extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ItemSizeOptionWidget extends StatelessWidget {
  SizeOption sizeOption;
  int position;
  ItemSizeOptionWidget({required this.sizeOption, required this.position});

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);

    Widget buildItemMeasurement(Measurement measurement, int measurementInxex) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: CustomTextInput(
                      titleText: 'Measurement',
                      hintText: 'measurement',
                      onAddData: (value) {
                        measurement.title = value;
                      },
                      controller: new TextEditingController(
                          text: measurement.title.toString()),
                      spaceTextAndFormField: 0,
                    ),
                  ),
                  SizedBox(width: 2),
                  Flexible(
                    flex: 1,
                    child: CustomTextInput(
                      titleText: 'description',
                      hintText: 'description',
                      controller: new TextEditingController(text: ""),
                      spaceTextAndFormField: 0,
                    ),
                  ),
                  SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      context
                          .read<SizeChartEditorCubit>()
                          .removeMeasurement(position, measurementInxex);
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 16),
                      child: Images.iconForbidden.loadImage(size: 20),
                    ),
                  ),
                ],
              ),
            ),
            deviceType == DeviceScreenType.desktop
                ? Expanded(
                    flex: 1,
                    child: SizedBox.shrink(),
                  )
                : SizedBox.shrink()
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          sizeOption.name ?? "",
          style: titleHeader,
        ),
        SizedBox(height: 10),
        ListView.builder(
          shrinkWrap: true,
          primary: false,
          physics: BouncingScrollPhysics(),
          itemCount: sizeOption.measurements!.length,
          itemBuilder: (context, index) {
            Measurement measurement = sizeOption.measurements!.elementAt(index);
            return buildItemMeasurement(measurement, index);
          },
        ),
        SizedBox(height: 10),
        CustomTextButtonAddMeasure(
          titleText: 'add_measurement',
          onTap: () {
            showDialogAddOption(context, position);
          },
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Table(
            defaultColumnWidth: IntrinsicColumnWidth(),
            border: TableBorder.all(color: boder, width: 2),
            children: listItem(context),
          ),
        ),
        SizedBox(height: 40),
      ],
    );
  }

  List<TableRow> listItem(BuildContext context) {
    List<TableRow> listData = [];

    // Header.
    listData.add(TableRow(children: buildTableHeader(sizeOption)));

    sizeOption.measurements!.forEach((measurements) {
      listData.add(TableRow(children: buildItemTable(measurements)));
    });
    return listData;
  }

  List<Widget> buildItemTable(Measurement measurement) {
    List<Widget> children = [];
    children.add(buildText(measurement.title ?? "", title));
    for (int i = 0; i < measurement.contents.length; i++) {
      children.add(buildInputText(measurement, i, title));
    }
    return children;
  }

  List<Widget> buildTableHeader(SizeOption sizeOption) {
    List<Widget> children = [];
    children.add(buildText(sizeOption.name ?? "", titleHeader));
    sizeOption.contents!.forEach((content) {
      children.add(buildText(content, titleHeader));
    });
    return children;
  }

  Padding buildText(String text, TextStyle style) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Text(
        text,
        style: style,
      ),
    );
  }

  Padding buildInputText(
      Measurement measurement, int position, TextStyle style) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: TextFormField(
        textAlign: TextAlign.center,
        controller:
            new TextEditingController(text: measurement.contents[position]),
        decoration: InputDecoration(
          border: InputBorder.none,
          isDense: true,
        ),
        onChanged: (value) {
          measurement.contents[position] = value;
        },
        style: style,
      ),
    );
  }

  showDialogAddOption(BuildContext context, int position) {
    final _formKey = GlobalKey<FormState>();
    TextEditingController nameController = new TextEditingController();
    // ignore: close_sinks
    final cubit = context.read<SizeChartEditorCubit>();
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
                                    cubit.addMeasurement(
                                        nameController.text.toString(),
                                        position);
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
}
