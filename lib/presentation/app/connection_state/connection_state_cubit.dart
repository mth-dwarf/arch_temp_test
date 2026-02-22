import 'dart:async';

import 'package:mt_template/domain/repositories/internet_status_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mt_template/presentation/base/base_cubit.dart';

part '../../../_generated/presentation/app/connection_state/connection_state_cubit.freezed.dart';

class ConnectionStateCubit extends BaseCubit<AppConnectionState> {
  ConnectionStateCubit(this._internetStatusRepository)
      : super(const AppConnectionState()) {
    _init();
  }

  final InternetStatusRepository _internetStatusRepository;
  late final StreamSubscription<bool> _internetStatusSubscription;

  Future<void> _init() async {
    try {
      _internetStatusSubscription = _internetStatusRepository.isConnectedStream().listen((value) {
        safeEmit(state.copyWith(isInternetConnected: value));
      });
      safeEmit(state.copyWith(isLoading: true));
      await Future.wait([_checkInternet()]);
    } catch (e, st) {
      logError(e, st);
    } finally {
      safeEmit(state.copyWith(isLoading: false));
    }
  }

  Future<void> _checkInternet() async {
    final isConnected = await _internetStatusRepository.isConnected();
    safeEmit(state.copyWith(isInternetConnected: isConnected));
  }

  @override
  Future<void> close() async {
    await _internetStatusSubscription.cancel();
    return super.close();
  }
}

@freezed
abstract class AppConnectionState with _$AppConnectionState {
  const factory AppConnectionState({
    @Default(false) bool isLoading,
    @Default(true) bool isInternetConnected,
  }) = _AppConnectionState;
}