import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mt_template/presentation/navigation/app_routes.dart';
import 'package:mt_template/presentation/navigation/pages/slide_up_page.dart';
import 'package:mt_template/presentation/screens/splash/bloc/splash_screen_cubit.dart';
import 'package:mt_template/presentation/screens/splash/splash_screen.dart';

part '../../../_generated/presentation/screens/splash/splash_route.g.dart';

@TypedGoRoute<SplashRoute>(path: AppRoutes.splash)
class SplashRoute extends GoRouteData with $SplashRoute {
  final String redirectAfterInit;

  const SplashRoute({this.redirectAfterInit = ""});

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideUpPage(
      state: state,
      child: BlocProvider(
        create: (context) => SplashScreenCubit(
          context.read(),
          context.read(),
          redirectAfterInit: redirectAfterInit,
        ),
        child: SplashScreen(),
      ),
    );
  }
}
