import 'package:flutter/cupertino.dart';
import 'package:mt_template/data/local/app_preferences.dart';
import 'package:mt_template/domain/models/app_error.dart';
import 'package:mt_template/presentation/app/bloc/main_cubit.dart';
import 'package:mt_template/presentation/base/base_cubit.dart';
import 'package:mt_template/presentation/screens/splash/bloc/splash_screen_state.dart';

class SplashScreenCubit extends BaseCubit<SplashScreenState> {
  final AppPreferences _appPreferences;
  final MainCubit _mainCubit;

  SplashScreenCubit(this._appPreferences, this._mainCubit, {this.redirectAfterInit = ""})
    : super(const SplashScreenState()) {
    init();
  }

  final String redirectAfterInit;

  Future<void> init() async {
    try {
      safeEmit(state.loading());
      // await _appPreferences.clear();
      await Future.delayed(Duration(seconds: 2));
    } catch (e, st) {
      logError(e, st);
      safeEmit(state.copyWith(error: AppError.unknown));
    } finally {
      safeEmit(state.copyWith(isLoading: false));
    }
  }

  void redirect(BuildContext context) async {
    if (redirectAfterInit.isNotEmpty) {
      // wait for previous nav to finish
      await Future<void>.delayed(const Duration(milliseconds: 500));
      // We navigate via deeplink handler to ensure we have a valid context
      _mainCubit.navigate(Uri.parse(redirectAfterInit));
    }
  }
}
