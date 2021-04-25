import 'package:bodidatacms/common/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDialogBox extends StatelessWidget {
  final String text;
  final String titleText;

  CustomDialogBox({
    Key? key,
    required this.text,
    this.titleText = 'Error',
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), side: borderSide()),
      elevation: 1.0,
      backgroundColor: Color(0xffEDEDED),
      child: dialogContent(context),
    );
  }

  Container dialogContent(BuildContext context) {
    return Container(
      width: 450,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: borderSide()),
            ),
            child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffE5E5E5),
                      Color(0xffBDBDBD),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                ),
                height: 30.0),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child:
                            Icon(Icons.report, color: Colors.red, size: 80.0)),
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(titleText,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: titleHeader),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 8.0),
                            child: Text(text, style: title),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    elevatedButton(() {
                      Get.back(result: true);
                    }, 'yes', Color(0xffB2DDF8)),
                    SizedBox(width: 20.0),
                    elevatedButton(() {
                      Get.back(result: false);
                    }, 'no', Colors.redAccent),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  ElevatedButton elevatedButton(
      Function onTap, String titleButton, Color hover) {
    return ElevatedButton(
      child:
          Text(titleButton, style: title.copyWith(fontWeight: FontWeight.w600)),
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(hover),
        side: MaterialStateProperty.all(borderSide()),
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      onPressed: () => onTap(),
    );
  }

  BorderSide borderSide() => BorderSide(color: styleOptionColor, width: 1);
}
