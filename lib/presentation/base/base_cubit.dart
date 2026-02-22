import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

abstract class BaseCubit<T> extends Cubit<T> {
  BaseCubit(super.initialState);

  void safeEmit(T state) {
    if (isClosed) return;
    emit(state);
  }

  void logError(Object e, StackTrace st) {
    if (kDebugMode) {
      print("qqq error=$e");
      print("qqq stackTrace=$st");
    }
  }
}
