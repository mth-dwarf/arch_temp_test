import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mt_template/presentation/screens/home/home_route.dart';
import 'package:mt_template/presentation/screens/permissions_overview/bloc/permissions_overview_screen_cubit.dart';
import 'package:mt_template/presentation/screens/permissions_overview/bloc/permissions_overview_screen_state.dart';
import 'package:mt_template/presentation/utils/context_utils.dart';

class PermissionsOverviewScreen extends StatelessWidget {
  const PermissionsOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PermissionsOverviewScreenCubit, PermissionsOverviewScreenState>(
      builder: (context, state) {
        final cubit = context.read<PermissionsOverviewScreenCubit>();
        return MultiBlocListener(
          listeners: [
            BlocListener<PermissionsOverviewScreenCubit, PermissionsOverviewScreenState>(
              listenWhen: (prev, curr) => prev.isLoading && curr.error.isError,
              listener: (context, state) {},
            ),
          ],
          child: Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                children: [
                  Text("PermissionsOverviewScreen"),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
