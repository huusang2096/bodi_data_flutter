import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/screen/style/cubit/style_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AttachmentslWidget extends StatelessWidget {
  final int idStyle;
  final DateFormat dateFormat = DateFormat.yMMMMd('en_US');
  AttachmentslWidget({Key? key, required this.idStyle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final isLoadingUploadFile =
        context.watch<StyleCubit>().state.data.isLoadingUploadFile;
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 20),
        Container(height: 2, color: boder),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "attachments".tr,
              style: titleHeader,
            ),
            ElevatedButton(
              onPressed: () {
                if (!isLoadingUploadFile)
                  context.read<StyleCubit>().pickFile(idStyle);
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(indigoColor)),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    isLoadingUploadFile
                        ? SpinKitFadingCircle(
                            color: Colors.white,
                            size: 20,
                          )
                        : Image.asset(
                            'assets/images/upload.png',
                            width: 20.0,
                            height: 20.0,
                            color: Colors.white,
                          ),
                    SizedBox(width: 4),
                    Text(
                      'uploads'.tr,
                      style: textButton.copyWith(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Table(
          border: TableBorder.all(color: boder, width: 2),
          columnWidths: {
            0: FractionColumnWidth(.3),
            1: FractionColumnWidth(.2),
            2: FractionColumnWidth(.3),
            3: FractionColumnWidth(.2)
          },
          children: listItem(context),
        ),
      ]),
    );
  }

  List<TableRow> listItem(BuildContext context) {
    final data = context.watch<StyleCubit>().state.data;

    List<TableRow> listData = [];
    TableRow tableHeaders = TableRow(children: [
      buildTableHeader("file_name".tr),
      buildTableHeader("file_type".tr),
      buildTableHeader("last_updates".tr),
      buildTableHeader("filesize".tr)
    ]);
    listData.add(tableHeaders);

    data.listInformationFiles.forEach((element) {
      listData.add(TableRow(children: [
        buildItemTable(element.fileName ?? '', onTap: () {
          context.read<StyleCubit>().htmlOpenLink(element.fileUrl ?? '');
        }),
        buildItemTable(element.fileType ?? ''),
        buildItemTable(element.createdAt != null
            ? dateFormat
                .format(DateTime.tryParse(element.createdAt!) ?? DateTime.now())
            : ''),
        buildItemTable(element.fileSize ?? ''),
      ]));
    });
    return listData;
  }

  Widget buildItemTable(String text, {Function? onTap}) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) onTap();
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          text,
          style: title.copyWith(fontSize: 16),
        ),
      ),
    );
  }

  Padding buildTableHeader(
    String text,
  ) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        text,
        style: titleBold.copyWith(fontSize: 16),
      ),
    );
  }
}
