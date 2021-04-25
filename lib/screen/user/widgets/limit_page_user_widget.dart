import 'package:flutter/material.dart';

import 'package:bodidatacms/common/config.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:get/get.dart';
import 'package:bodidatacms/screen/user/cubit/user_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LimitPageUserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final page = context.watch<UserCubit>().state.data.page;
    final limit = context.watch<UserCubit>().state.data.limit;
    final listPages = context.watch<UserCubit>().state.data.listPages;
    final isLoading = context.watch<UserCubit>().state.data.isLoading;
    Widget buildItem(int number) {
      return InkWell(
        onTap: () {
          if (isLoading) return;
          context.read<UserCubit>().changePage(number);
        },
        child: Container(
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
          child: Text(number.toString(),
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
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 10),
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
                if (isLoading) return;
                context.read<UserCubit>().changeLimit(value!);
              },
              items: listLimits.map((e) {
                return DropdownMenuItem<String>(
                  child: Text(
                    e.tr,
                    style: body1,
                  ),
                  value: e,
                );
              }).toList(),
            ),
          ),
          SizedBox(width: 20.0),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                primary: false,
                physics: BouncingScrollPhysics(),
                itemCount: listPages.length,
                padding: EdgeInsets.only(left: 10),
                itemBuilder: (context, index) {
                  return buildItem(index + 1);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 10);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
