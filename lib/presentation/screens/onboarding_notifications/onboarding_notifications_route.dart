import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mt_template/presentation/navigation/app_routes.dart';
import 'package:mt_template/presentation/navigation/pages/slide_in_page.dart';
import 'package:mt_template/presentation/screens/onboarding_notifications/bloc/onboarding_notifications_screen_cubit.dart';
import 'package:mt_template/presentation/screens/onboarding_notifications/onboarding_notifications_screen.dart';

part '../../../_generated/presentation/screens/onboarding_notifications/onboarding_notifications_route.g.dart';

@TypedGoRoute<OnboardingNotificationsRoute>(
  path: AppRoutes.onboardingNotifications
)
class OnboardingNotificationsRoute extends GoRouteData with $OnboardingNotificationsRoute {

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideInPage(
      state: state,
      child: BlocProvider(
        create: (context) => OnboardingNotificationsScreenCubit(context.read()),
        child: OnboardingNotificationsScreen(),
      ),
    );
  }
}