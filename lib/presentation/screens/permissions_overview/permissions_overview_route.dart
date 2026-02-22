import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mt_template/presentation/navigation/app_routes.dart';
import 'package:mt_template/presentation/navigation/pages/slide_up_page.dart';
import 'package:mt_template/presentation/screens/permissions_overview/bloc/permissions_overview_screen_cubit.dart';
import 'package:mt_template/presentation/screens/permissions_overview/permissions_overview_screen.dart';

part '../../../_generated/presentation/screens/permissions_overview/permissions_overview_route.g.dart';

@TypedGoRoute<PermissionsOverviewRoute>(
  path: AppRoutes.permissionsOverview
)
class PermissionsOverviewRoute extends GoRouteData with $PermissionsOverviewRoute {

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideUpPage(
      state: state,
      child: BlocProvider(
        create: (context) => PermissionsOverviewScreenCubit(context.read()),
        child: PermissionsOverviewScreen(),
      ),
    );
  }
}