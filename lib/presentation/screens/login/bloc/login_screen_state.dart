import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mt_template/domain/models/app_error.dart';

part '../../../../_generated/presentation/screens/login/bloc/login_screen_state.freezed.dart';

@freezed
abstract class LoginScreenState with _$LoginScreenState {
const factory LoginScreenState({
  @Default(false) bool isLoading,
  @Default(AppError.none) AppError error,
}) = _LoginScreenState;

const LoginScreenState._();

LoginScreenState loading() => copyWith(isLoading: true, error: AppError.none);
}