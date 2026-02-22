import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mt_template/presentation/app/app_events.dart';
import 'package:mt_template/presentation/base/base_cubit.dart';

import '../../../domain/models/app_error.dart';

part '../../../_generated/presentation/app/bloc/main_cubit.freezed.dart';

class MainCubit extends BaseCubit<MainState> {
  MainCubit() : super(const MainState()) {
    _init();
  }

  late final StreamSubscription<Uri> _appLinksSubscription;

  void _init() {
    _appLinksSubscription = AppLinks().uriLinkStream.listen((uri) async {
      print("qqq uri=${uri}");
      navigate(uri);
    });
  }

  void navigate(Uri uri) {
    safeEmit(state.copyWith(event: Navigate(uri)));
  }

  @override
  Future<void> close() async {
    await _appLinksSubscription.cancel();
    return super.close();
  }
}

@freezed
abstract class MainState with _$MainState {
  const factory MainState({
    @Default(false) bool isLoading,
    @Default(AppError.none) AppError error,
    @Default(null) AppEvent? event,
  }) = _MainState;

  const MainState._();

  MainState loading() => copyWith(isLoading: true, error: AppError.none);
}
