import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/user_account/presentation/cubit/user/user_cubit.dart';
import 'di/di.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserCubit>.value(
      value: getIt<UserCubit>(),
      child: BlocListener<UserCubit, UserState>(
        listenWhen: (previous, current) {
          //Avoid to change route if user is already logged in
          if(previous is UserStateLoggedIn && current is UserStateLoggedIn) {
            return false;
          }
          return true;
        } ,
        listener: (context, state) {
          // TODO: implement listener
        },
        child: Scaffold(
          body: Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        ),
      ),
    );
  }
}