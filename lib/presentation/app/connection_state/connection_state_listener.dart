import 'package:mt_template/presentation/app/connection_state/connection_state_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConnectionStateListener extends StatefulWidget {
  const ConnectionStateListener({super.key, required this.child});

  final Widget child;

  @override
  State<ConnectionStateListener> createState() => _ConnectionStateListenerState();
}

class _ConnectionStateListenerState extends State<ConnectionStateListener> {
  late final AppLifecycleListener _lifecycleListener;

  @override
  void initState() {
    super.initState();
    _lifecycleListener = AppLifecycleListener(
      // when app comes back from notifications settings, update state
      onResume: () {
        //context.read<ConnectionStateCubit>().init();
      },
    );
  }

  @override
  void dispose() {
    _lifecycleListener.dispose();
    super.dispose();
  }

  bool shouldShowInternetPermissionScreen(AppConnectionState prev, AppConnectionState curr) {
    if (prev.isInternetConnected && !curr.isInternetConnected) return true;
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ConnectionStateCubit, AppConnectionState>(
          listenWhen: (prev, curr) => shouldShowInternetPermissionScreen(prev, curr),
          listener: (context, state) {
            // hand internet disabled
          },
        ),
      ],
      child: widget.child,
    );
  }
}
