// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../../presentation/screens/splash/splash_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$splashRoute];

RouteBase get $splashRoute =>
    GoRouteData.$route(path: '/', factory: $SplashRoute._fromState);

mixin $SplashRoute on GoRouteData {
  static SplashRoute _fromState(GoRouterState state) => SplashRoute(
    redirectAfterInit: state.uri.queryParameters['redirect-after-init'] ?? "",
  );

  SplashRoute get _self => this as SplashRoute;

  @override
  String get location => GoRouteData.$location(
    '/',
    queryParams: {
      if (_self.redirectAfterInit != "")
        'redirect-after-init': _self.redirectAfterInit,
    },
  );

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
