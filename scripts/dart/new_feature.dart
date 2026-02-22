import 'package:change_case/change_case.dart';

import 'utils.dart';

Future<void> main(List<String> args) async {
  // create files
  if (args.length < 2) throw Exception("Missing args");
  if (args.length > 2) throw Exception("Too many arguments");
  if (args[0].contains("screen")) {
    throw Exception("Do not include 'screen' in name");
  }
  final packageName = args[0];
  final featureName = args[1];
  final className = "${featureName.toPascalCase()}Screen";
  final snakeCase = "${featureName.toSnakeCase()}_screen";
  final blocFile = await createFile(
    "lib/presentation/screens/$featureName/bloc/${snakeCase}_cubit.dart",
  );
  final stateFile = await createFile(
    "lib/presentation/screens/$featureName/bloc/${snakeCase}_state.dart",
  );
  final screenFile = await createFile(
    "lib/presentation/screens/$featureName/$snakeCase.dart",
  );
  final routeFile = await createFile(
    "lib/presentation/screens/$featureName/${featureName}_route.dart",
  );

  // write files
  await writeToFile(
    screenFile,
    screenTemplate(packageName, featureName, snakeCase, className),
  );
  await writeToFile(
    stateFile,
    stateTemplate(packageName, featureName, snakeCase, className),
  );
  await writeToFile(blocFile, blocTemplate(packageName, featureName, snakeCase, className));
  await writeToFile(
    routeFile,
    routeTemplate(packageName, featureName, snakeCase, className),
  );
  print("$featureName created successfully");
}

String screenTemplate(String packageName, String featureName, String snakeCase, String className) {
  final cubitName = "${className}Cubit";
  final screenName = className;
  final stateName = "${className}State";
  return """
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:$packageName/presentation/screens/$featureName/bloc/${snakeCase}_cubit.dart';
import 'package:$packageName/presentation/screens/$featureName/bloc/${snakeCase}_state.dart';

class $screenName extends StatelessWidget {
  const $screenName({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<$cubitName, $stateName>(
      builder: (context, state) {
        final cubit = context.read<$cubitName>();
        return MultiBlocListener(
          listeners: [
            BlocListener<$cubitName, $stateName>(
              listenWhen: (prev, curr) => prev.isLoading && curr.error.isError,
              listener: (context, state) { },
            )
          ],
          child: Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                children: [
                  Text("$className"),
                ],
              ),
            ),
          ),
        );
      },
    );
 }
}
"""
      .trim();
}

String stateTemplate(String packageName, String featureName, String snakeCase, String className) {
  final stateName = "${className}State";
  return """
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:$packageName/domain/models/app_error.dart';

part '../../../../_generated/presentation/screens/$featureName/bloc/${snakeCase}_state.freezed.dart';

@freezed
abstract class $stateName with _\$$stateName {
const factory $stateName({
  @Default(false) bool isLoading,
  @Default(AppError.none) AppError error,
}) = _$stateName;

const $stateName._();

$stateName loading() => copyWith(isLoading: true, error: AppError.none);
}
"""
      .trim();
}

String blocTemplate(String packageName, String featureName, String snakeCase, String className) {
  final cubitName = "${className}Cubit";
  final stateName = "${className}State";
  return """
import 'package:$packageName/domain/models/app_error.dart';
import 'package:$packageName/presentation/base/base_cubit.dart';
import 'package:$packageName/presentation/screens/$featureName/bloc/${featureName}_screen_state.dart';

class $cubitName extends BaseCubit<$stateName> {
  $cubitName() : super(const $stateName()) {
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
  """
      .trim();
}

String routeTemplate(String packageName, String featureName, String snakeCase, String className) {
  final routeName = "${featureName.toPascalCase()}Route";
  final pathName = "static const ${featureName.toCamelCase()} = \"/${featureName.toKebabCase()}\";";
  final cubitName = "${className}Cubit";
  final screenName = className;

  return """
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:$packageName/presentation/navigation/app_routes.dart';
import 'package:$packageName/presentation/navigation/pages/slide_up_page.dart';
import 'package:$packageName/presentation/screens/$featureName/bloc/${snakeCase}_cubit.dart';
import 'package:$packageName/presentation/screens/$featureName/$snakeCase.dart';

part '../../../_generated/presentation/screens/$featureName/${featureName}_route.g.dart';

@TypedGoRoute<$routeName>(
  path: "/${featureName.toKebabCase()}", // add me to AppRoutes: $pathName
)
class $routeName extends GoRouteData with \$$routeName {

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SlideUpPage(
      state: state,
      child: BlocProvider(
        create: (context) => $cubitName(),
        child: $screenName(),
      ),
    );
  }
}"""
      .trim();
}
