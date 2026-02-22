import 'package:mt_template/domain/models/app_error.dart';
import 'package:mt_template/presentation/base/base_cubit.dart';
import 'package:mt_template/presentation/screens/profile/bloc/profile_screen_state.dart';

class ProfileScreenCubit extends BaseCubit<ProfileScreenState> {
  ProfileScreenCubit() : super(const ProfileScreenState()) {
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