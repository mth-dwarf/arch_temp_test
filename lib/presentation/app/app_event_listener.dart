import 'dart:async';

import 'package:mt_template/presentation/app/app_events.dart';
import 'package:mt_template/presentation/app/bloc/main_cubit.dart';
import 'package:mt_template/presentation/screens/login/login_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mt_template/presentation/utils/context_utils.dart';

import '../navigation/app_routes.dart';

class AppEventListener extends StatelessWidget {
  const AppEventListener({super.key, required this.child});

  final Widget child;

  void onEvent(BuildContext context, AppEvent event) {
    switch (event) {
      case Navigate _:
        _onNavigateEvent(context, event.uri);
    }
  }

  void _onNavigateEvent(BuildContext context, Uri uri) {
    final route = "/${uri.host}${uri.path}";
    final routeWithData = "$route?${uri.query}";
    switch (route) {
      case AppRoutes.splash:
        // no-op, app will open at whatever screen it was showing
        _goToRoute(context, AppRoutes.home);
        break;
      case AppRoutes.home:
        _goToRoute(context, route);
        break;
      default:
        _pushRoute(context, uri, routeWithData);
    }
  }

  Future<void> _pushRoute(BuildContext context, Uri uri, String route) async {
    final isLoggedIn = context.prefs.isLoggedIn;
    await Future<void>.delayed(const Duration(milliseconds: 500)); // UX delay
    if (isLoggedIn) {
      if (context.mounted) await context.push(route);
    } else {
      final loginRoute = LoginRoute(redirectAfterLogin: uri.toString());
      if (context.mounted) loginRoute.go(context);
    }
  }

  Future<void> _goToRoute(BuildContext context, String route) async {
    await Future<void>.delayed(const Duration(milliseconds: 500)); // UX delay
    if (context.mounted) context.go(route);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MainCubit, MainState>(
      listenWhen: (prev, curr) {
        return prev.event != curr.event;
      },
      listener: (context, state) {
        final event = state.event;
        if (event != null) onEvent(context, event);
      },
      child: child,
    );
  }
}
