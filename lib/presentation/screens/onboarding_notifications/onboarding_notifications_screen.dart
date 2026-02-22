import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mt_template/presentation/screens/home/home_route.dart';
import 'package:mt_template/presentation/screens/onboarding_notifications/bloc/onboarding_notifications_screen_cubit.dart';
import 'package:mt_template/presentation/screens/onboarding_notifications/bloc/onboarding_notifications_screen_state.dart';
import 'package:mt_template/presentation/utils/context_utils.dart';

class OnboardingNotificationsScreen extends StatelessWidget {
  const OnboardingNotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingNotificationsScreenCubit, OnboardingNotificationsScreenState>(
      builder: (context, state) {
        final cubit = context.read<OnboardingNotificationsScreenCubit>();
        return MultiBlocListener(
          listeners: [
            BlocListener<OnboardingNotificationsScreenCubit, OnboardingNotificationsScreenState>(
              listenWhen: (prev, curr) => prev.isLoading && curr.error.isError,
              listener: (context, state) { },
            )
          ],
          child: Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                children: [
                  Text("OnboardingNotificationsScreen"),
                  TextButton(onPressed: () {
                    HomeRoute().go(context);
                  }, child: Text(context.strings.generic_ok)),
                ],
              ),
            ),
          ),
        );
      },
    );
 }
}