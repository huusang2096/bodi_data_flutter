import 'package:bodidatacms/common/bloc/bloc.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/screen/audit/audit_record/cubit/audit_record_cubit.dart';
import 'package:bodidatacms/screen/comments/messager_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class CommentsWidget extends StatelessWidget {
  const CommentsWidget({
    Key? key,
    required this.paddingDefault,
  }) : super(key: key);

  final double paddingDefault;

  @override
  Widget build(BuildContext context) {
    final bool showComment =
        context.watch<AuditRecordCubit>().state.data.showComment;
    if (!showComment) {
      return SizedBox.shrink();
    }
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Container(
        constraints: BoxConstraints(minWidth: 200, maxWidth: 600),
        decoration: BoxDecoration(
            // color: cellAudit,
            border: Border.all(color: borderGrey1, width: 2.0)),
        padding: EdgeInsets.symmetric(
            vertical: paddingDefault / 2, horizontal: paddingDefault),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: paddingDefault / 2),
              child: Text('comments'.tr,
                  style: header.copyWith(fontWeight: FontWeight.w500)),
            ),
            MessagerContentWidget()
          ],
        ),
      ),
    );
  }

  Padding commentWidget() {
    return Padding(
      padding: EdgeInsets.only(top: paddingDefault, left: paddingDefault / 3),
      child: Row(
        children: [
          Flexible(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.question_answer,
                  color: textblueColor,
                  size: 30,
                ),
                SizedBox(width: paddingDefault / 4),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(top: paddingDefault / 3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text.rich(TextSpan(children: [
                                TextSpan(
                                    text: 'Kelseys',
                                    style: body1.copyWith(color: nameComment)),
                                TextSpan(text: 'add_a_comment'.tr, style: body1)
                              ])),
                            ),
                            SizedBox(width: paddingDefault / 2),
                            Flexible(
                              child: Padding(
                                padding:
                                    EdgeInsets.only(right: paddingDefault / 2),
                                child: Text('10:25:21 AM Sep 2,2020',
                                    style: textCaption.copyWith(
                                        color: textgrey,
                                        fontWeight: FontWeight.normal)),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: paddingDefault / 3),
                        Text(
                            'ease is about 2 inchesease is about 2 inchesease is about 2 inchesease is about 2 inchesease is about 2 inches',
                            style: body1),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container inputCommentWidget() {
    return Container(
      constraints: BoxConstraints(minHeight: 80),
      padding: EdgeInsets.only(
          top: 0,
          left: paddingDefault / 2,
          right: paddingDefault / 2,
          bottom: paddingDefault / 4),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: borderGrey2, width: 1.5)),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'new comments',
          hintStyle: textCaption.copyWith(
              color: Color(0xffC4D0D9), fontWeight: FontWeight.normal),
          isDense: true,
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.multiline,
        maxLines: null,
      ),
    );
  }
}
