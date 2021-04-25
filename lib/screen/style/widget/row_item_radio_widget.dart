import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/model/group/group_data.dart';
import 'package:flutter/material.dart';
import 'package:bodidatacms/screen/style/cubit_permission/permission_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RowItemRadioWidget extends StatelessWidget {
  final String titleText;
  final GroupData groupData;
  RowItemRadioWidget(
      {Key? key, required this.titleText, required this.groupData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                titleText,
                style: body1,
              ),
            )),
        Expanded(
          flex: 2,
          child: Row(
              children: groupData.permissions
                  .map(
                    (e) => Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: InkWell(
                          onTap: () {
                            context
                                .read<PermissionCubit>()
                                .changeIsSelectedPermission(
                                    groupData.id!, e.id!);
                          },
                          hoverColor: Colors.black12,
                          customBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            margin: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: boder, width: 1),
                            ),
                            padding: EdgeInsets.all(1.0),
                            child: Container(
                                width: 14.0,
                                height: 14.0,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: e.isEnabled!
                                        ? indigoColor
                                        : Colors.transparent)),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList()),
        )
      ],
    );
  }
}
