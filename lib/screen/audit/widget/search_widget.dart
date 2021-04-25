import 'package:bodidatacms/common/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bodidatacms/screen/audit/cubit/audit_cubit.dart';

class SearchWidget extends StatelessWidget {
  final TextEditingController searchSessionNameController;
  final double paddingAll;
  final double paddingBottomTitle;
  SearchWidget(
      {Key? key,
      this.paddingAll = 0,
      this.paddingBottomTitle = 0,
      required this.searchSessionNameController})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(paddingAll),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "session_name".tr,
                  style: titleBold.copyWith(fontSize: 14),
                ),
                SizedBox(height: paddingBottomTitle),
                TextFormField(
                  textCapitalization: TextCapitalization.sentences,
                  keyboardType: TextInputType.text,
                  controller: searchSessionNameController,
                  onFieldSubmitted: (value) {
                    context.read<AuditCubit>().saveSessionSearch(value).then(
                        (value) =>
                            context.read<AuditCubit>().fetchDataAudiSession(false));
                  },
                  // onChanged: (value) {
                  //   context.read<AuditCubit>().saveSessionSearch(value);
                  // },
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.only(top: 20, left: 10, right: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(width: 0.8, color: boder)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(width: 0.8, color: boder)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(width: 1.6, color: boder),
                    ),
                    hintStyle: TextStyle(
                      color: Colors.blueGrey.shade200,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
