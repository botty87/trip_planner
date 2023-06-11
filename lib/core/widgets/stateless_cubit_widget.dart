import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_planner/core/di/di.dart';

abstract class StatelessCubitWidget<C extends Cubit>
    extends StatelessWidget {
  final C _cubit;

  StatelessCubitWidget({super.key, C? cubit}) : _cubit = cubit ?? getIt();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<C>(
      create: (context) => _cubit,
      child: buildWidget(context),
    );
  }

  Widget buildWidget(BuildContext context);
}