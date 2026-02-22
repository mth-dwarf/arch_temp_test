import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mt_template/presentation/navigation/app_routes.dart';
import 'package:mt_template/presentation/navigation/pages/slide_up_page.dart';
import 'package:mt_template/presentation/screens/profile/bloc/profile_screen_cubit.dart';
import 'package:mt_template/presentation/screens/profile/profile_screen.dart';

part '../../../_generated/presentation/screens/profile/profile_route.g.dart';

@TypedGoRoute<ProfileRoute>(path: AppRoutes.profile)
class ProfileRoute extends GoRouteData with $ProfileRoute {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideUpPage(
      state: state,
      child: BlocProvider(
        create: (context) => ProfileScreenCubit(),
        child: ProfileScreen(),
      ),
    );
  }
}
