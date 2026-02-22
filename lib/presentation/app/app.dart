import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mt_template/_generated/l10n/app_localizations.dart';
import 'package:mt_template/data/local/app_preferences.dart';
import 'package:mt_template/data/remote/services/template_service.dart';
import 'package:mt_template/domain/repositories/example_repository.dart';
import 'package:mt_template/presentation/app/bloc/main_cubit.dart';
import 'package:mt_template/presentation/navigation/app_router.dart';
import 'package:mt_template/presentation/utils/context_utils.dart';

class App extends StatelessWidget {
  final TemplateService templateService;
  final AppPreferences appPreferences;

  const App({super.key, required this.templateService, required this.appPreferences});

  @override
  Widget build(BuildContext context) {
    final mainCubit = MainCubit();
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => appPreferences),
        RepositoryProvider(create: (context) => ExampleRepository(templateService)),
      ],
      child: MultiBlocProvider(
        providers: [BlocProvider(create: (context) => mainCubit)],
        child: MaterialApp.router(
          title: "Template app",
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          routerConfig: appRouter,
          builder: (context, child) {
            if (child != null) {
              return MediaQuery(
                data: context.mq.copyWith(textScaler: TextScaler.noScaling),
                child: child,
              );
            }
            return SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
