import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mt_template/presentation/screens/profile/bloc/profile_screen_cubit.dart';
import 'package:mt_template/presentation/screens/profile/bloc/profile_screen_state.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileScreenCubit, ProfileScreenState>(
      builder: (context, state) {
        final cubit = context.read<ProfileScreenCubit>();
        return MultiBlocListener(
          listeners: [
            BlocListener<ProfileScreenCubit, ProfileScreenState>(
              listenWhen: (prev, curr) => prev.isLoading && curr.error.isError,
              listener: (context, state) { },
            )
          ],
          child: Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                children: [
                  Text("ProfileScreen"),
                ],
              ),
            ),
          ),
        );
      },
    );
 }
}