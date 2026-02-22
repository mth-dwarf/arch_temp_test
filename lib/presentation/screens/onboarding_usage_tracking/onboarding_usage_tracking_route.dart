import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mt_template/presentation/navigation/app_routes.dart';
import 'package:mt_template/presentation/navigation/pages/slide_in_page.dart';
import 'package:mt_template/presentation/screens/onboarding_usage_tracking/bloc/onboarding_usage_tracking_screen_cubit.dart';
import 'package:mt_template/presentation/screens/onboarding_usage_tracking/onboarding_usage_tracking_screen.dart';

part '../../../_generated/presentation/screens/onboarding_usage_tracking/onboarding_usage_tracking_route.g.dart';

@TypedGoRoute<OnboardingUsageTrackingRoute>(
  path: AppRoutes.onboardingUsageTracking
)
class OnboardingUsageTrackingRoute extends GoRouteData with $OnboardingUsageTrackingRoute {

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideInPage(
      state: state,
      child: BlocProvider(
        create: (context) => OnboardingUsageTrackingScreenCubit(context.read()),
        child: OnboardingUsageTrackingScreen(),
      ),
    );
  }
}