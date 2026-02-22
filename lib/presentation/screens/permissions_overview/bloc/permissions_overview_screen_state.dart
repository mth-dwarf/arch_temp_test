import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mt_template/domain/models/app_error.dart';

part '../../../../_generated/presentation/screens/permissions_overview/bloc/permissions_overview_screen_state.freezed.dart';

@freezed
abstract class PermissionsOverviewScreenState with _$PermissionsOverviewScreenState {
const factory PermissionsOverviewScreenState({
  @Default(false) bool isLoading,
  @Default(AppError.none) AppError error,
}) = _PermissionsOverviewScreenState;

const PermissionsOverviewScreenState._();

PermissionsOverviewScreenState loading() => copyWith(isLoading: true, error: AppError.none);
}