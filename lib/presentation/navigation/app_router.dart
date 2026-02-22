import 'package:go_router/go_router.dart';
import 'package:mt_template/presentation/navigation/app_routes.dart';
import 'package:mt_template/presentation/screens/home/home_route.dart';
import 'package:mt_template/presentation/screens/login/login_route.dart';
import 'package:mt_template/presentation/screens/onboarding_notifications/onboarding_notifications_route.dart';
import 'package:mt_template/presentation/screens/onboarding_usage_tracking/onboarding_usage_tracking_route.dart';
import 'package:mt_template/presentation/screens/permissions_overview/permissions_overview_route.dart';
import 'package:mt_template/presentation/screens/profile/profile_route.dart';
import 'package:mt_template/presentation/screens/splash/splash_route.dart';
import 'package:mt_template/presentation/utils/context_utils.dart';

const _authNotRequiredRoutes = [AppRoutes.splash];

final appRouter = GoRouter(
  initialLocation: AppRoutes.splash,
  redirect: (context, state) {
    final isLoggedIn = context.prefs.isLoggedIn;
    final isException = _authNotRequiredRoutes.contains(state.matchedLocation);

    if (isException) {
      return null;
    }

    if (!isLoggedIn) {
      if (state.matchedLocation == AppRoutes.login) {
        return null;
      } else {
        return LoginRoute(redirectAfterLogin: state.uri.toString()).location;
      }
    }

    if (!context.prefs.onboardingHasSeenNotificationsRationale) {
      return OnboardingNotificationsRoute().location;
    }
    if (!context.prefs.onboardingHasSeenUsageTrackingRationale) {
      return OnboardingUsageTrackingRoute().location;
    }
    return null;
  },
  routes: [
    $splashRoute,
    $homeRoute,
    $loginRoute,
    $profileRoute,
    $onboardingNotificationsRoute,
    $onboardingUsageTrackingRoute,
    $permissionsOverviewRoute,
  ],
);
