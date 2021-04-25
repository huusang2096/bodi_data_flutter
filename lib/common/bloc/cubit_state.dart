import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'generic_base_cubit.dart';

abstract class CubitState<T extends StatefulWidget,
    C extends GenericBaseCubit<S>, S> extends State {
  bool shouldAttactAppLifecycleState() => false;

  T get currentWidget => (widget as T);

  @override
  void initState() {
    WidgetsBinding.instance!
        .addPostFrameCallback((_) => afterFirstLayout(context));
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<C, S>(
      listener: (context, state) {
        listener(context, state);
      },
      builder: (context, state) {
        return builder(context, state);
      },
    );
  }

  /// Used for seting before return first build
  void init() {}

  /// afterFirstLayout: This method will be triggerd when UI finished rendered at first time
  void afterFirstLayout(BuildContext context);

  /// Trigger src.bloc listener events, handle common events as default
  void listener(BuildContext context, S state) {}

  /// Provider UI builder based on state change
  Widget builder(BuildContext context, S state);
}
