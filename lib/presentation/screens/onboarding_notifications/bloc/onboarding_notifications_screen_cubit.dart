import 'package:mt_template/data/local/app_preferences.dart';
import 'package:mt_template/domain/models/app_error.dart';
import 'package:mt_template/presentation/base/base_cubit.dart';
import 'package:mt_template/presentation/screens/onboarding_notifications/bloc/onboarding_notifications_screen_state.dart';

class OnboardingNotificationsScreenCubit extends BaseCubit<OnboardingNotificationsScreenState> {
  final AppPreferences _appPreferences;

  OnboardingNotificationsScreenCubit(this._appPreferences)
    : super(const OnboardingNotificationsScreenState()) {
    _appPreferences.setHasSeenNotificationsRationale();
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
}
