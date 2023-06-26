import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/features/trips/domain/usecases/listen_trips.dart';
import 'package:trip_planner/features/trips/errors/trips_failure.dart';
import 'package:trip_planner/features/user_account/presentation/cubit/user/user_cubit.dart';

import '../../../domain/entities/trip.dart';

part 'trips_cubit.freezed.dart';
part 'trips_state.dart';

@injectable
class TripsCubit extends Cubit<TripsState> {
  final ListenTrips _listenTrips;
  final UserCubit _userCubit;
  late final StreamSubscription<Either<TripsFailure, List<Trip>>> _tripsSubscription;

  TripsCubit(this._listenTrips, this._userCubit) : super(TripsState()) {
    final userState = _userCubit.state as UserStateLoggedIn;
    _tripsSubscription =
        _listenTrips(ListenTripsParams(userId: userState.user.id)).listen((result) {
      result.fold(
        (failure) {
          //TODO handle failure
        },
        (trips) => emit(TripsState(trips: trips)),
      );
    });
  }

  @override
  Future<void> close() {
    _tripsSubscription.cancel();
    return super.close();
  }
}
