import 'package:bodidatacms/common/bloc/bloc.dart';
import 'package:bodidatacms/common/resources.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/common/validation.dart';
import 'package:bodidatacms/model/comments/comment.dart';
import 'package:bodidatacms/screen/comments/cubit/comments_cubit.dart';
import 'package:bodidatacms/widgets/limit_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bodidatacms/common/extensions.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

class MessagerContentWidget extends StatefulWidget {
  @override
  _MessagerContentWidgetState createState() => _MessagerContentWidgetState();
}

class _MessagerContentWidgetState extends State<MessagerContentWidget> {
  final _cmtController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final _validations = Validation();

  @override
  void dispose() {
    context.read<CommentsCubit>().close();
    super.dispose();
  }

  Widget buildRowItem(BuildContext context, Comments item) {
    return Slidable(
      actionPane: SlidableStrechActionPane(),
      actionExtentRatio: 0.15,
      secondaryActions: [
        IconSlideAction(
          color: Color(0xFFB7475B),
          icon: Icons.delete_outlined,
          onTap: () => _showDialog(context, item.id!),
        ),
      ],
      child: Container(
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Images.iconMessager.loadImage(size: 40, color: textblueColor),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text.rich(TextSpan(children: [
                            TextSpan(
                              text: item.commentBy?.name ?? '',
                              style: body1.merge(
                                TextStyle(
                                  color: switchColor,
                                ),
                              ),
                            ),
                            TextSpan(
                              text: ' ',
                            ),
                            TextSpan(
                                text: item.subContent ?? 'added_the_comment'.tr,
                                style: body1)
                          ])),
                        ),
                        SizedBox(width: 4.0),
                        Flexible(
                            child: Text(item.createdAt ?? '',
                                style: body1.copyWith(
                                  color: Colors.grey,
                                )))
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      item.content ?? '',
                      style: body1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showDialog(BuildContext context, int id) {
    // ignore: close_sinks
    final cubit = context.read<CommentsCubit>();
    showDialog(
        context: context,
        builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AlertDialog(
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      cubit.deleteComment(commentId: id);
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFFB7475B)),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Text('delete'.tr, style: textButton),
                    ),
                  ),
                ],
                content: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: colorWhite,
                  ),
                  child: Text('are_you_want_delete'.tr),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CommentsCubit>().state;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            'add_comment'.tr,
            style: titleInput,
          ),
          SizedBox(height: 5),
          Stack(
            children: [
              Form(
                key: _formKey,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: _cmtController,
                  maxLines: 3,
                  validator: _validations.validationCommon,
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'new_comment'.tr,
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
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {
                        // cubit.addComment();
                        if (_formKey.currentState!.validate()) {
                          context
                              .read<CommentsCubit>()
                              .addComment(_cmtController.text.toString(), "");
                          _cmtController.clear();
                        }
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(indigoColor)),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'send'.tr,
                          overflow: TextOverflow.ellipsis,
                          style: textButton.merge(TextStyle(fontSize: 12)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          state.data.listComments.length > 0
              ? Container(
                  color: backgroundComment,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "time_line".tr,
                            style: titleHeader,
                          ),
                          Icon(Icons.refresh, color: indigoColor),
                        ],
                      ),
                      SizedBox(height: 20),
                      ListView.separated(
                          shrinkWrap: true,
                          primary: false,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            final item =
                                state.data.listComments.elementAt(index);
                            return buildRowItem(context, item);
                          },
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 10),
                          itemCount: state.data.listComments.length),
                    ],
                  ),
                )
              : SizedBox.shrink(),
          state.data.listComments.length > 0
              ? LimitPageWidget()
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
