import 'package:bodidatacms/common/bloc/bloc.dart';
import 'package:bodidatacms/common/style.dart';
import 'package:bodidatacms/screen/audit/cubit/audit_cubit.dart';
import 'package:bodidatacms/screen/audit/widget/header_audit.dart';
import 'package:bodidatacms/screen/audit/widget/list_pariticipants.dart';
import 'package:bodidatacms/screen/audit/widget/list_sessions.dart';
import 'package:bodidatacms/screen/audit/widget/list_styles.dart';
import 'package:bodidatacms/screen/audit/widget/search_reset_widget.dart';
import 'package:bodidatacms/screen/audit/widget/search_widget.dart';
import 'package:bodidatacms/widgets/custom_loading_linear_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AuditScreen extends CubitWidget<AuditCubit, AuditState> {
  final TextEditingController searchSessionNameController =
      TextEditingController();
  static BlocProvider<AuditCubit> provider() {
    return BlocProvider(
        create: (context) => AuditCubit(), child: AuditScreen());
  }

  @override
  Widget builder(BuildContext context, AuditState state) {
    DeviceScreenType deviceType = getDeviceType(MediaQuery.of(context).size);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: buildBody(deviceType, state)),
        ));
  }

  Widget buildBody(DeviceScreenType deviceType, AuditState state) {
    if (deviceType == DeviceScreenType.desktop) {
      return buildUIDesktop(state);
    } else if (deviceType == DeviceScreenType.tablet) {
      return buildUITablet(state);
    } else {
      return buildUIMobile(deviceType, state);
    }
  }

  SingleChildScrollView buildUIMobile(
      DeviceScreenType deviceType, AuditState state) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: HeaderAudit(deviceType: deviceType),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              "filters".tr,
              style: title,
            ),
          ),
          SizedBox(height: 10),
          SearchWidget(
            paddingAll: 12.0,
            searchSessionNameController: searchSessionNameController,
            paddingBottomTitle: 3,
          ),
          SizedBox(height: 10),
          SearchResetWidget(
            paddingAll: 0,
            isColums: false,
            searchSessionNameController: searchSessionNameController,
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(left: 12.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFC5CED8),
                style: BorderStyle.solid,
                width: 1.0,
              ),
              color: Colors.transparent,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListStyles(),
                Divider(
                  color: Color(0xFFC5CED8),
                  height: 1.0,
                ),
                ListPariticipants()
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    titleSessionWidget(
                        flex: 2, paddingLeft: 12, title: 'session_name'.tr),
                    titleSessionWidget(
                        flex: 3, paddingLeft: 12, title: 'styles'.tr),
                    titleSessionWidget(
                        flex: 2, paddingLeft: 12, title: 'participants'.tr),
                  ],
                ),
                SizedBox(height: 5.0),
                state.data.isLoading
                    ? CustomLoadingLinearWidget(
                        marginHorizontal: 0.0,
                        marginVertical: 0,
                        height: 2.0,
                      )
                    : Divider(
                        color: Colors.grey,
                        thickness: 2.0,
                      ),
                ListSessionsWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildUITablet(AuditState state) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          HeaderAudit(),
          SizedBox(height: 20),
          Text(
            "filters".tr,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10.0),
          SearchWidget(
            paddingBottomTitle: 5,
            searchSessionNameController: searchSessionNameController,
          ),
          SearchResetWidget(
            paddingAll: 10.0,
            searchSessionNameController: searchSessionNameController,
            isColums: false,
          ),
          SizedBox(height: 10.0),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFC5CED8),
                style: BorderStyle.solid,
                width: 1.0,
              ),
              color: Colors.transparent,
            ),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 1, child: ListStyles()),
                  VerticalDivider(
                    color: boder,
                    width: 2,
                    thickness: 2,
                  ),
                  Expanded(flex: 1, child: ListPariticipants()),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    titleSessionWidget(
                        flex: 2, paddingLeft: 12, title: 'session_name'.tr),
                    titleSessionWidget(
                        flex: 3, paddingLeft: 12, title: 'styles'.tr),
                    titleSessionWidget(
                        flex: 2, paddingLeft: 12, title: 'participants'.tr),
                  ],
                ),
                SizedBox(height: 5.0),
                state.data.isLoading
                    ? CustomLoadingLinearWidget(
                        marginHorizontal: 0.0,
                        marginVertical: 0,
                        height: 2.0,
                      )
                    : Divider(
                        color: Colors.grey,
                        thickness: 2.0,
                      ),
                ListSessionsWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildUIDesktop(AuditState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        HeaderAudit(),
        SizedBox(height: 20),
        Text(
          "filters".tr,
          style: title,
        ),
        SizedBox(height: 20),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: boder,
              style: BorderStyle.solid,
              width: 2.0,
            ),
            color: Colors.transparent,
          ),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              //  crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 3,
                  child: ListStyles(),
                ),
                VerticalDivider(
                  color: boder,
                  width: 2,
                  thickness: 2,
                ),
                Expanded(flex: 2, child: ListPariticipants()),
                VerticalDivider(
                  color: boder,
                  width: 2,
                ),
                Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: SearchWidget(
                              paddingAll: 10.0,
                              searchSessionNameController:
                                  searchSessionNameController),
                        ),
                        SearchResetWidget(
                            paddingAll: 10.0,
                            isColums: true,
                            searchSessionNameController:
                                searchSessionNameController),
                      ],
                    )),
              ],
            ),
          ),
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    titleSessionWidget(
                        flex: 2, paddingLeft: 12, title: 'session_name'.tr),
                    titleSessionWidget(
                        flex: 3, paddingLeft: 12, title: 'styles'.tr),
                    titleSessionWidget(
                        flex: 2, paddingLeft: 12, title: 'participants'.tr),
                  ],
                ),
                SizedBox(height: 5.0),
                state.data.isLoading
                    ? CustomLoadingLinearWidget(
                        marginHorizontal: 0.0,
                        marginVertical: 0,
                        height: 2.0,
                      )
                    : Divider(
                        color: Colors.grey,
                        thickness: 2.0,
                        height: 2.0,
                      ),
                SizedBox(height: 5.0),
                Expanded(
                  child: ListSessionsWidget(
                    shrinkWrap: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget titleSessionWidget(
      {required String title, required int flex, required double paddingLeft}) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: EdgeInsets.only(left: paddingLeft),
        child: Text(
          title,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }

  @override
  void dispose(BuildContext context) {
    searchSessionNameController.dispose();
    super.dispose(context);
  }
}
