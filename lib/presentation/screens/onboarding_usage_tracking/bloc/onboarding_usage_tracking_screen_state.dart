import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mt_template/domain/models/app_error.dart';

part '../../../../_generated/presentation/screens/onboarding_usage_tracking/bloc/onboarding_usage_tracking_screen_state.freezed.dart';

@freezed
abstract class OnboardingUsageTrackingScreenState with _$OnboardingUsageTrackingScreenState {
const factory OnboardingUsageTrackingScreenState({
  @Default(false) bool isLoading,
  @Default(AppError.none) AppError error,
}) = _OnboardingUsageTrackingScreenState;

const OnboardingUsageTrackingScreenState._();

OnboardingUsageTrackingScreenState loading() => copyWith(isLoading: true, error: AppError.none);
}