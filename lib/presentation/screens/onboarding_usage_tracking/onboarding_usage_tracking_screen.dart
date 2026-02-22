import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mt_template/presentation/screens/home/home_route.dart';
import 'package:mt_template/presentation/screens/onboarding_usage_tracking/bloc/onboarding_usage_tracking_screen_cubit.dart';
import 'package:mt_template/presentation/screens/onboarding_usage_tracking/bloc/onboarding_usage_tracking_screen_state.dart';
import 'package:mt_template/presentation/utils/context_utils.dart';

class OnboardingUsageTrackingScreen extends StatelessWidget {
  const OnboardingUsageTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingUsageTrackingScreenCubit, OnboardingUsageTrackingScreenState>(
      builder: (context, state) {
        final cubit = context.read<OnboardingUsageTrackingScreenCubit>();
        return MultiBlocListener(
          listeners: [
            BlocListener<OnboardingUsageTrackingScreenCubit, OnboardingUsageTrackingScreenState>(
              listenWhen: (prev, curr) => prev.isLoading && curr.error.isError,
              listener: (context, state) { },
            )
          ],
          child: Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                children: [
                  Text("OnboardingUsageTrackingScreen"),
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