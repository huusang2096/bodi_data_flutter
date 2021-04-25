import 'package:bodidatacms/model/inventory/size_option.dart';
import 'package:bodidatacms/screen/size_chart_editor/cubit/size_chart_editor_cubit.dart';
import 'package:bodidatacms/screen/size_chart_editor/widgets/item_size_option_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListSizeOptionWidget extends StatelessWidget {
  List<SizeOption> sizeOptions = [];
  @override
  Widget build(BuildContext context) {
    sizeOptions =
        context.watch<SizeChartEditorCubit>().state.data.listSizeOption;
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 20),
      itemCount: sizeOptions.length,
      itemBuilder: (context, index) {
        SizeOption sizeOption = sizeOptions.elementAt(index);
        if (sizeOption.contents!.length != 0) {
          return ItemSizeOptionWidget(
            sizeOption: sizeOption,
            position: index,
          );
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }
}
