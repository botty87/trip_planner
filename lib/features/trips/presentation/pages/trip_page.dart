import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/di/di.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/widgets/snackbars.dart';
import '../../../../core/widgets/trip/save_cancel_edit_buttons.dart';
import '../../../../core/widgets/trip_pages_animated_switcher.dart';
import '../../domain/entities/trip.dart';
import '../cubit/trip/trip_cubit.dart';
import '../widgets/new_edit_trip_form/new_edit_trip_form.dart';
import '../widgets/trip_page/trip_error_widget.dart';
import '../widgets/trip_page/trip_page_initial_widget.dart';
import '../widgets/trip_page/trip_page_loaded_widget.dart';

part '../widgets/trip_page/save_cancel_edit_buttons.dart';
part '../widgets/trip_page/trip_page_body.dart';

@RoutePage()
class TripPage extends StatelessWidget {
  final Trip _trip;
  const TripPage(this._trip, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TripCubit>(
      create: (context) => getIt<TripCubit>(param1: _trip)..startListenDayTrips(),
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: _TripPageAppBar(),
        ),
        body: BlocListener<TripCubit, TripState>(
          //Show snackbar when error is not fatal
          listenWhen: (previous, current) => current.maybeMap(
            error: (state) => !state.fatal,
            orElse: () => false,
          ),
          listener: (context, state) {
            final errorMessage = state.maybeMap(
              error: (state) => state.errorMessage,
              orElse: () => throw UnexpectedException(),
            );
            ScaffoldMessenger.of(context).showSnackBar(Snackbars.error(errorMessage));
          },
          child: BlocBuilder<TripCubit, TripState>(
            buildWhen: (previous, current) => current.maybeMap(
              deleting: (_) => false,
              error: (state) => state.fatal,
              orElse: () =>
                  previous.runtimeType != current.runtimeType &&
                  previous.maybeMap(
                    error: (value) => value.fatal,
                    orElse: () => true,
                  ),
            ),
            builder: (context, state) => TripPagesAnimatedSwitcher(
              child: state.maybeMap(
                initial: (_) => const TripPageInitialWidget(key: ValueKey('initial')),
                loaded: (_) => const TripPageLoadedWidget(key: ValueKey('loaded')),
                error: (state) => TripErrorWidget(
                  key: const ValueKey('error'),
                  message: state.errorMessage,
                ),
                /* editing: (value) => null,
                      loaded: (state) => null,
                      error: (state) => showSnackbar(context, state.errorMessage), */
                orElse: () => throw UnimplementedError(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _TripPageAppBar extends StatelessWidget {
  const _TripPageAppBar();

  @override
  Widget build(BuildContext context) {
    final tripName = context.select<TripCubit, String>((cubit) => cubit.state.trip.name);

    return AppBar(
      title: Text(tripName),
      actions: [
        IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () => context.read<TripCubit>().edit(),
        ),
      ],
    );
  }
}
