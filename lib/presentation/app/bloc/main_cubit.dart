import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mt_template/presentation/base/base_cubit.dart';

import '../../../domain/models/app_error.dart';

part '../../../_generated/presentation/app/bloc/main_cubit.freezed.dart';

class MainCubit extends BaseCubit<MainState> {
  MainCubit() : super(const MainState());
}

@freezed
abstract class MainState with _$MainState {
  const factory MainState({
    @Default(false) bool isLoading,
    @Default(AppError.none) AppError error,
  }) = _MainState;

  const MainState._();

  MainState loading() => copyWith(isLoading: true, error: AppError.none);
}
