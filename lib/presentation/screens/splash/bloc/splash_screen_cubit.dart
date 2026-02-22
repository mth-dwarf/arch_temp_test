import 'package:mt_template/data/local/app_preferences.dart';
import 'package:mt_template/domain/models/app_error.dart';
import 'package:mt_template/presentation/base/base_cubit.dart';
import 'package:mt_template/presentation/screens/splash/bloc/splash_screen_state.dart';

class SplashScreenCubit extends BaseCubit<SplashScreenState> {
  final AppPreferences _appPreferences;
  SplashScreenCubit(this._appPreferences) : super(const SplashScreenState()) {
    init();
  }

  Future<void> init() async {
    try {
      safeEmit(state.loading());
      await _appPreferences.clear();
      await Future.delayed(Duration(seconds: 2));
    } catch (e, st) {
      logError(e, st);
      safeEmit(state.copyWith(error: AppError.unknown));
    } finally {
      safeEmit(state.copyWith(isLoading: false));
    }
  }
}