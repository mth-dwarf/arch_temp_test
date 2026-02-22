import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mt_template/domain/models/app_error.dart';

part '../../../../_generated/presentation/screens/onboarding_notifications/bloc/onboarding_notifications_screen_state.freezed.dart';

@freezed
abstract class OnboardingNotificationsScreenState with _$OnboardingNotificationsScreenState {
const factory OnboardingNotificationsScreenState({
  @Default(false) bool isLoading,
  @Default(AppError.none) AppError error,
}) = _OnboardingNotificationsScreenState;

const OnboardingNotificationsScreenState._();

OnboardingNotificationsScreenState loading() => copyWith(isLoading: true, error: AppError.none);
}