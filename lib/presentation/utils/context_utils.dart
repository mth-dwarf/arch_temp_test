import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mt_template/data/local/app_preferences.dart';
import 'package:mt_template/presentation/app/bloc/main_cubit.dart';
import 'package:mt_template/presentation/theme/app_color_scheme.dart';

import '../../_generated/l10n/app_localizations.dart';

extension ContextUtils on BuildContext {
  // UI
  AppColorScheme get colorScheme => read<AppColorScheme>();

  MediaQueryData get mq => MediaQuery.of(this);

  // Localization
  AppLocalizations get strings => AppLocalizations.of(this)!;

  // repos && blocs
  MainCubit get mainCubit => read<MainCubit>();

  AppPreferences get prefs => read<AppPreferences>();
}
