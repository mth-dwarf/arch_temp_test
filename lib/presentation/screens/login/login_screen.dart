import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mt_template/presentation/screens/home/home_route.dart';
import 'package:mt_template/presentation/screens/login/bloc/login_screen_cubit.dart';
import 'package:mt_template/presentation/screens/login/bloc/login_screen_state.dart';
import 'package:mt_template/presentation/utils/context_utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginScreenCubit, LoginScreenState>(
      builder: (context, state) {
        final cubit = context.read<LoginScreenCubit>();
        return MultiBlocListener(
          listeners: [
            BlocListener<LoginScreenCubit, LoginScreenState>(
              listenWhen: (prev, curr) => prev.isLoading && curr.error.isError,
              listener: (context, state) {},
            ),
          ],
          child: Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                children: [
                  Text("LoginScreen"),
                  TextButton(
                    onPressed: () async {
                      await cubit.onLoginPressed();
                      if (context.mounted) HomeRoute().go(context);
                    },
                    child: Text(context.strings.generic_continue),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
