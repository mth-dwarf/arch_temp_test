import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mt_template/domain/models/app_error.dart';

part '../../../../_generated/presentation/screens/splash/bloc/splash_screen_state.freezed.dart';

@freezed
abstract class SplashScreenState with _$SplashScreenState {
const factory SplashScreenState({
  @Default(false) bool isLoading,
  @Default(AppError.none) AppError error,
}) = _SplashScreenState;

const SplashScreenState._();

SplashScreenState loading() => copyWith(isLoading: true, error: AppError.none);
}