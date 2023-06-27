import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_planner/core/di/di.dart';

import '../../domain/entities/trip.dart';
import '../cubit/trip/cubit/trip_cubit.dart';

@RoutePage()
class TripPage extends StatelessWidget {
  final Trip _trip;
  const TripPage(this._trip, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TripCubit>(
      create: (context) => getIt<TripCubit>(param1: _trip),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Trip'),
        ),
        body: Builder(
          builder: (context) {
            return Center(
              child: Text(context.read<TripCubit>().state.trip.name),
            );
          }
        ),
      ),
    );
  }
}
