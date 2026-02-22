// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../presentation/screens/onboarding_notifications/onboarding_notifications_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$onboardingNotificationsRoute];

RouteBase get $onboardingNotificationsRoute => GoRouteData.$route(
  path: '/onboarding-notifications',
  factory: $OnboardingNotificationsRoute._fromState,
);

mixin $OnboardingNotificationsRoute on GoRouteData {
  static OnboardingNotificationsRoute _fromState(GoRouterState state) =>
      OnboardingNotificationsRoute();

  @override
  String get location => GoRouteData.$location('/onboarding-notifications');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
