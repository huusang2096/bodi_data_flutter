import 'package:bodidatacms/common/bloc/bloc.dart';
import 'package:bodidatacms/model/inventory/size_option.dart';
import 'package:bodidatacms/screen/size_chart_editor/cubit/size_chart_editor_cubit.dart';
import 'package:bodidatacms/screen/size_chart_editor/widgets/list_size_option_widget.dart';
import 'package:bodidatacms/screen/size_chart_editor/widgets/sce_header_content_widget.dart';
import 'package:bodidatacms/widgets/custom_loading_linear_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SizeChartEditorScreen
    extends CubitWidget<SizeChartEditorCubit, SizeChartEditorState> {
  static provider() {
    int id = -1;
    List<SizeOption> listSizeOption = [];

    if (Get.parameters['id'] != null) {
      id = int.parse(Get.parameters['id']!);
    }
    if (Get.arguments != null) {
      listSizeOption = Get.arguments;
    }
    return BlocProvider(
      create: (_) => SizeChartEditorCubit(id, listSizeOption),
      child: SizeChartEditorScreen(),
    );
  }

  @override
  Widget builder(BuildContext context, SizeChartEditorState state) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeaderContentWidget(),
              if (state.data.isLoading) ...[
                CustomLoadingLinearWidget(
                  height: 2,
                  marginHorizontal: 10,
                  marginVertical: 2.0,
                )
              ] else ...[
                SizedBox(
                  height: 6,
                )
              ],
              ListSizeOptionWidget(),
            ],
          ),
        ));
  }
}
