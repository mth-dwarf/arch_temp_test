import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mt_template/domain/models/app_error.dart';

part '../../../../_generated/presentation/screens/home/bloc/home_screen_state.freezed.dart';

@freezed
abstract class HomeScreenState with _$HomeScreenState {
const factory HomeScreenState({
  @Default(false) bool isLoading,
  @Default(AppError.none) AppError error,
}) = _HomeScreenState;

const HomeScreenState._();

HomeScreenState loading() => copyWith(isLoading: true, error: AppError.none);
}