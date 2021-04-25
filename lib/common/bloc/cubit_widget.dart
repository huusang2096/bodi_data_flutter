import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'generic_base_cubit.dart';

abstract class CubitWidget<C extends GenericBaseCubit<State>, State>
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!
        .addPostFrameCallback((_) => afterFirstLayout(context));
    init();
    return BlocConsumer<C, State>(
      listener: (context, state) {
        listener(context, state);
      },
      builder: (context, state) {
        return DisposableWidget(
          child: builder(context, state),
          onDisposed: () => dispose,
        );
      },
    );
  }

  /// Used for seting before return first build
  void init() {}

  /// afterFirstLayout: This method will be triggerd when UI finished rendered at first time
  void afterFirstLayout(BuildContext context) {}

  /// Trigger src.bloc listener events, handle common events as default
  void listener(BuildContext context, State state) {
    // handleCommonState(context: context, state: state);
  }

  /// Provider UI builder based on state change
  Widget builder(BuildContext context, State state);

  void dispose(BuildContext context) {
    context.read<C>().close();
  }
}

class DisposableWidget extends StatefulWidget {
  final Widget child;
  final Function? onDisposed;

  const DisposableWidget({Key? key, required this.child, this.onDisposed})
      : super(key: key);

  @override
  _DisposableWidgetState createState() => _DisposableWidgetState();
}

class _DisposableWidgetState extends State<DisposableWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void dispose() {
    widget.onDisposed!();
    super.dispose();
  }
}
