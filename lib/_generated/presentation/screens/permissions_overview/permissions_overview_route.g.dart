// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../presentation/screens/permissions_overview/permissions_overview_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$permissionsOverviewRoute];

RouteBase get $permissionsOverviewRoute => GoRouteData.$route(
  path: '/permissions-overview',
  factory: $PermissionsOverviewRoute._fromState,
);

mixin $PermissionsOverviewRoute on GoRouteData {
  static PermissionsOverviewRoute _fromState(GoRouterState state) =>
      PermissionsOverviewRoute();

  @override
  String get location => GoRouteData.$location('/permissions-overview');

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
