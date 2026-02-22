import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mt_template/presentation/navigation/app_routes.dart';
import 'package:mt_template/presentation/screens/login/bloc/login_screen_cubit.dart';
import 'package:mt_template/presentation/screens/login/login_screen.dart';

part '../../../_generated/presentation/screens/login/login_route.g.dart';

@TypedGoRoute<LoginRoute>(path: AppRoutes.login)
class LoginRoute extends GoRouteData with $LoginRoute {
  final String redirectAfterLogin;

  const LoginRoute({this.redirectAfterLogin = ""});

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      child: BlocProvider(
        create: (context) =>
            LoginScreenCubit(context.read(), redirectAfterLogin: redirectAfterLogin),
        child: LoginScreen(),
      ),
    );
  }
}
