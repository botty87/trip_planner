import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/usecases/listen_trips.dart';
import '../../../errors/trips_failure.dart';
import '../../../../user_account/presentation/cubit/user/user_cubit.dart';

import '../../../domain/entities/trip.dart';

part 'trips_cubit.freezed.dart';
part 'trips_state.dart';

@injectable
class TripsCubit extends Cubit<TripsState> {
  final ListenTrips _listenTrips;
  final UserCubit _userCubit;
  late final StreamSubscription<Either<TripsFailure, List<Trip>>> _tripsSubscription;

  TripsCubit(this._listenTrips, this._userCubit) : super(const TripsState()) {
    final userState = _userCubit.state as UserStateLoggedIn;
    _tripsSubscription =
        _listenTrips(ListenTripsParams(userId: userState.user.id)).listen((result) {
      result.fold(
        (failure) {
          //TODO handle failure
        },
        (trips) => emit(TripsState(trips: trips, isLoading: false)),
      );
    });
  }

  @override
  Future<void> close() {
    _tripsSubscription.cancel();
    return super.close();
  }
}
