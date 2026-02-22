import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mt_template/domain/models/app_error.dart';

part '../../../../_generated/presentation/screens/profile/bloc/profile_screen_state.freezed.dart';

@freezed
abstract class ProfileScreenState with _$ProfileScreenState {
const factory ProfileScreenState({
  @Default(false) bool isLoading,
  @Default(AppError.none) AppError error,
}) = _ProfileScreenState;

const ProfileScreenState._();

ProfileScreenState loading() => copyWith(isLoading: true, error: AppError.none);
}