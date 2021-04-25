import 'package:auto_size_text/auto_size_text.dart';
import 'package:bodidatacms/common/resources.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:bodidatacms/common/extensions.dart';

class ListCommnentWidget extends StatelessWidget {
  final TextEditingController _textEditingController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          _customFormInput(
              titleText: 'Add Comment',
              hintText: 'Add Comment',
              controller: _textEditingController,
              maxLines: 3),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(20),
            color: backgroundComment,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Time line",
                      style: title,
                    ),
                    Icon(Icons.refresh, color: textRed),
                  ],
                ),
                SizedBox(height: 20),
                ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(height: 20),
                  shrinkWrap: true,
                  primary: false,
                  physics: BouncingScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return index == 2
                        ? _buildFile(context)
                        : _buildMessager(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFile(BuildContext context) {
    //when we have data rewrite this widget
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Images.iconMessager.loadImage(size: 40, color: Colors.blue),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            AutoSizeText(
                              'Alice',
                              style: body1.merge(
                                TextStyle(
                                  color: Color.fromRGBO(67, 141, 128, 1),
                                ),
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(width: 2),
                            Text(
                              'added_the_comment'.tr,
                              style: body1,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '10:25:21AM Sep 1,2020',
                        style: body1.merge(
                          TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 100,
                    color: backgroundComment,
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'A.pdf',
                          style: body1.copyWith(color: blueColor),
                        ),
                        Text(
                          '870kb',
                          style: body1.copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildMessager(BuildContext context) {
    //when we have data rewrite this widget
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Images.iconMessager.loadImage(size: 40, color: Colors.blue),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            AutoSizeText(
                              'Alice',
                              style: body1.merge(
                                TextStyle(
                                  color: Color.fromRGBO(67, 141, 128, 1),
                                ),
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(width: 2),
                            Text(
                              'added_the_comment'.tr,
                              style: body1,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '10:25:21AM Sep 1,2020',
                        style: body1.merge(
                          TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Quidam alii sunt, et non est in nostra poteslate .Quae ominia in nostra sententia,Quidam alii sunt, et non est in nostra poteslate .Quae ominia in nostra sententia. Non sunt in nostra potestate corpore bona fama',
                    style: body1,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _customFormInput({
    required String titleText,
    required String hintText,
    required TextEditingController controller,
    int? maxLines,
  }) {
    return Stack(
      children: [
        Column(
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
                maxLines: maxLines ?? 1,
                decoration: InputDecoration(
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
                style: title),
          ],
        ),
      ],
    );
  }
}
