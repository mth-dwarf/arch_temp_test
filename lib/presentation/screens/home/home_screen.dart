import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mt_template/presentation/screens/home/bloc/home_screen_cubit.dart';
import 'package:mt_template/presentation/screens/home/bloc/home_screen_state.dart';
import 'package:mt_template/presentation/screens/profile/profile_route.dart';
import 'package:mt_template/presentation/utils/context_utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenCubit, HomeScreenState>(
      builder: (context, state) {
        final cubit = context.read<HomeScreenCubit>();
        return MultiBlocListener(
          listeners: [
            BlocListener<HomeScreenCubit, HomeScreenState>(
              listenWhen: (prev, curr) => prev.isLoading && curr.error.isError,
              listener: (context, state) {},
            ),
          ],
          child: Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                children: [
                  Text("HomeScreen"),
                  TextButton(
                    onPressed: () {
                      ProfileRoute().push(context);
                    },
                    child: Text(context.strings.go_to_profile),
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
