import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mt_template/presentation/screens/home/home_route.dart';
import 'package:mt_template/presentation/screens/splash/bloc/splash_screen_cubit.dart';
import 'package:mt_template/presentation/screens/splash/bloc/splash_screen_state.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashScreenCubit, SplashScreenState>(
      builder: (context, state) {
        final cubit = context.read<SplashScreenCubit>();
        return MultiBlocListener(
          listeners: [
            BlocListener<SplashScreenCubit, SplashScreenState>(
              listenWhen: (prev, curr) => prev.isLoading && curr.error.isError,
              listener: (context, state) {},
            ),
            BlocListener<SplashScreenCubit, SplashScreenState>(
              listenWhen: (prev, curr) => !curr.isLoading,
              listener: (context, state) {
                HomeRoute().go(context);
              },
            ),
          ],
          child: Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                children: [
                  Text("SplashScreen"),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
