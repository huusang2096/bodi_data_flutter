import 'package:bodidatacms/common/config.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/screen/comments/cubit/comments_cubit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LimitPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final cubit = context.read<CommentsCubit>();
    final limit = cubit.state.data.limit;
    final page = cubit.state.data.page;
    final listPages = cubit.state.data.listPages;
    Widget buildItem(String number) {
      return InkWell(
        onTap: () => cubit.changePage(number),
        child: Container(
          margin: EdgeInsets.only(left: 10),
          width: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: page == number ? indigoColor : Colors.white,
            border: Border.all(
              color: boder,
              style: BorderStyle.solid,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          padding: EdgeInsets.all(4),
          child: Text(number,
              style: body1.copyWith(
                  color: page == number ? Colors.white : Colors.black)),
        ),
      );
    }

    return Container(
      height: 40,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100,
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                isDense: true,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 12, horizontal: 10),
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
              value: limit,
              onSaved: (input) {},
              onChanged: (value) {
                cubit.changeLimit(value!);
              },
              items: listLimits.map((e) {
                return DropdownMenuItem<String>(
                  child: Text(e.tr),
                  value: e,
                );
              }).toList(),
            ),
          ),
          SizedBox(width: 20.0),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                primary: false,
                physics: BouncingScrollPhysics(),
                itemCount: listPages.length,
                padding: EdgeInsets.only(left: 10),
                itemBuilder: (context, index) {
                  return buildItem(listPages.elementAt(index));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
