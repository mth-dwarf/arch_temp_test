import 'package:dio/dio.dart';
import 'package:mt_template/data/local/app_preferences.dart';

class AuthInterceptor extends Interceptor {
  final AppPreferences _appPreferences;

  const AuthInterceptor(this._appPreferences);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (_appPreferences.isLoggedIn) {
      options.headers["Authorization"] = "my_token";
    }
    super.onRequest(options, handler);
  }
}
