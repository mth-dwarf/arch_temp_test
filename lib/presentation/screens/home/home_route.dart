import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mt_template/presentation/navigation/app_routes.dart';
import 'package:mt_template/presentation/navigation/pages/slide_up_page.dart';
import 'package:mt_template/presentation/screens/home/bloc/home_screen_cubit.dart';
import 'package:mt_template/presentation/screens/home/home_screen.dart';

part '../../../_generated/presentation/screens/home/home_route.g.dart';

@TypedGoRoute<HomeRoute>(path: AppRoutes.home)
class HomeRoute extends GoRouteData with $HomeRoute {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      child: BlocProvider(
        create: (context) => HomeScreenCubit(),
        child: HomeScreen(),
      ),
    );
  }
}
