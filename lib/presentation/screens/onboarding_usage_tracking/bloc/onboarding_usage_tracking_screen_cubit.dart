import 'package:mt_template/data/local/app_preferences.dart';
import 'package:mt_template/domain/models/app_error.dart';
import 'package:mt_template/presentation/base/base_cubit.dart';
import 'package:mt_template/presentation/screens/onboarding_usage_tracking/bloc/onboarding_usage_tracking_screen_state.dart';

class OnboardingUsageTrackingScreenCubit extends BaseCubit<OnboardingUsageTrackingScreenState> {
  final AppPreferences _appPreferences;

  OnboardingUsageTrackingScreenCubit(this._appPreferences)
    : super(const OnboardingUsageTrackingScreenState()) {
    _appPreferences.setHasSeenUsageTrackingRationale();
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
