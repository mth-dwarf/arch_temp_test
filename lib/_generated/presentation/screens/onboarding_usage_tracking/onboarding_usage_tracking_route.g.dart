// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../presentation/screens/onboarding_usage_tracking/onboarding_usage_tracking_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$onboardingUsageTrackingRoute];

RouteBase get $onboardingUsageTrackingRoute => GoRouteData.$route(
  path: '/onboarding-usage-tracking',
  factory: $OnboardingUsageTrackingRoute._fromState,
);

mixin $OnboardingUsageTrackingRoute on GoRouteData {
  static OnboardingUsageTrackingRoute _fromState(GoRouterState state) =>
      OnboardingUsageTrackingRoute();

  @override
  String get location => GoRouteData.$location('/onboarding-usage-tracking');

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
