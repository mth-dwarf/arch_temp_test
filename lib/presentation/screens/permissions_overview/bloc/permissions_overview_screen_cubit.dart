import 'package:mt_template/data/local/app_preferences.dart';
import 'package:mt_template/domain/models/app_error.dart';
import 'package:mt_template/presentation/base/base_cubit.dart';
import 'package:mt_template/presentation/screens/permissions_overview/bloc/permissions_overview_screen_state.dart';

class PermissionsOverviewScreenCubit extends BaseCubit<PermissionsOverviewScreenState> {

  final AppPreferences _appPreferences;
  PermissionsOverviewScreenCubit(this._appPreferences) : super(const PermissionsOverviewScreenState()) {
    init();
  }

  Future<void> init() async {
    try {
      safeEmit(state.loading());
      // await myFunction()
    } catch (e, st) {
      logError(e, st);
      safeEmit(state.copyWith(error: AppError.unknown));
    } finally {
      safeEmit(state.copyWith(isLoading: false));
    }
  }
}