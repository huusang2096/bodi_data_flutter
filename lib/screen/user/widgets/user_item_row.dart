import 'package:bodidatacms/common/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class UserItemRow extends StatelessWidget {
  final String username;
  final int groups;
  final Function() onClickEdit;
  final Function() onClickReset;
  final Function() onClickDeactivate;
  final bool isRow;
  final DeviceScreenType deviceScreenType;
  UserItemRow(
      {required this.username,
      required this.deviceScreenType,
      required this.groups,
      required this.onClickEdit,
      required this.onClickReset,
      required this.onClickDeactivate,
      required this.isRow});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.all(10),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
      child: isRow ? buildRow() : buildColumn(),
    );
  }

// mobile
  Column buildColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: Text(username, style: textItem),
        ),
        SizedBox(
          height: 10,
        ),
        buildInGroup(),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [builResetPassword(marginLeft: 0), buildDeactivate()],
          ),
        )
      ],
    );
  }

//not mobile
  Widget buildRow() {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(right: 5.0),
              child: Text(
                username,
                style: textItem,
              ),
            ),
          ),
          Expanded(
            child: buildInGroup(),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topRight,
              child: deviceScreenType == DeviceScreenType.tablet
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        builResetPassword(),
                        SizedBox(height: 4.0),
                        buildDeactivate()
                      ],
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [builResetPassword(), buildDeactivate()],
                    ),
            ),
          )
        ],
      ),
    );
  }

  Container buildInGroup() {
    return Container(
      alignment: Alignment.topLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('in $groups groups', style: textItem),
          InkWell(
            onTap: onClickEdit,
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.blue),
                children: [
                  WidgetSpan(
                    child: Container(
                      margin: EdgeInsets.only(left: 5, right: 5),
                      child: Icon(
                        Icons.people,
                        size: 16,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  WidgetSpan(
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: lineBLue, width: 1))),
                        child: Text("edit",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue,
                            ))),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  RichText buildDeactivate() {
    return RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.red),
        children: [
          WidgetSpan(
            child: Container(
              child: Icon(Icons.delete, size: 16, color: Colors.red),
              margin: EdgeInsets.only(left: 5, right: 5),
            ),
          ),
          WidgetSpan(
            child: Container(
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: lineRed, width: 1))),
                child: Text("Deactivate",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.red,
                    ))),
          )
        ],
      ),
    );
  }

  RichText builResetPassword({double marginLeft = 5}) {
    return RichText(
      text: TextSpan(
        children: [
          WidgetSpan(
            child: Container(
              child: Icon(Icons.refresh, size: 16, color: Colors.indigo),
              margin: EdgeInsets.only(left: marginLeft, right: 5),
            ),
          ),
          WidgetSpan(
            child: Container(
              decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: lineindigo, width: 1))),
              child: Text(
                "Reset Password",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.indigo,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          )
        ],
      ),
    );
  }
}
