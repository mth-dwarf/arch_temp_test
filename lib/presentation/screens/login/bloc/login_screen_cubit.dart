import 'package:mt_template/data/local/app_preferences.dart';
import 'package:mt_template/domain/models/app_error.dart';
import 'package:mt_template/presentation/base/base_cubit.dart';
import 'package:mt_template/presentation/screens/login/bloc/login_screen_state.dart';

class LoginScreenCubit extends BaseCubit<LoginScreenState> {
  final AppPreferences _appPreferences;
  LoginScreenCubit(this._appPreferences) : super(const LoginScreenState()) {
    init();
  }

  Future<void> init() async {
    try {
      safeEmit(state.loading());
      // await myFunction()
    } catch (e, st) {
      logError(e, st);
      safeEmit(state.copyWith(error: AppError.unknown));
    } finally {
      safeEmit(state.copyWith(isLoading: false));
    }
  }

  Future<void> onLoginPressed() async {
    await _appPreferences.setIsLoggedIn(true);
  }
}