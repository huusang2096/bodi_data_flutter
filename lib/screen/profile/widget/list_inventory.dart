import 'package:flutter/material.dart';

class ListInventory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView.separated(
        shrinkWrap: true,
        primary: false,
        physics: BouncingScrollPhysics(),
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 10.0,
          );
        },
        padding: EdgeInsets.only(top: 10.0),
        itemCount: 10,
        itemBuilder: (context, index) {
          return buildItemINventory();
        },
      ),
    );
  }

  Container buildItemINventory() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFC5CED8),
          style: BorderStyle.solid,
          width: 2.0,
        ),
        color: Colors.transparent,
      ),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Superior",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                    )),
                Text("Women full Elastic Pant With Drawsting ",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF5587D5),
                    )),
                Text("ENT 5155",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.black,
                    )),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.message,
                        color: Color(0xFF7C8794),
                      ),
                      SizedBox(width: 4),
                      Text("11 Size",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.black,
                          )),
                    ],
                  ),
                  SizedBox(width: 4),
                  Row(
                    children: [
                      Icon(
                        Icons.message,
                        color: Color(0xFF7C8794),
                      ),
                      SizedBox(width: 4),
                      Text("9 stream",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.black,
                          )),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.message,
                    color: Color(0xFF7C8794),
                  ),
                  SizedBox(width: 4),
                  Text("13 audit records",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.message,
                    color: Color(0xFF7C8794),
                  ),
                  SizedBox(width: 4),
                  Text("Unifrom Pants",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.black,
                      )),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
