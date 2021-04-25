import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

abstract class GenericBaseCubit<State> extends Cubit<State> {
  GenericBaseCubit(State state) : super(state) {
    initData();
  }

  List<StreamSubscription> subscriptions = [];

  /// Called when init Cubit
  void initData() {}

  void showErrorMessage(String error) {}

  @override
  Future<void> close() {
    subscriptions.forEach((sub) {
      sub.cancel();
    });
    return super.close();
  }
}
