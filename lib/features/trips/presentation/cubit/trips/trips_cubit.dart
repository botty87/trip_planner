import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../user_account/domain/entities/user.dart';
import '../../../domain/entities/trip.dart';
import '../../../domain/usecases/listen_trips.dart';
import '../../../errors/trips_failure.dart';

part 'trips_cubit.freezed.dart';
part 'trips_state.dart';

@injectable
class TripsCubit extends Cubit<TripsState> {
  final ListenTrips _listenTrips;
  final FirebaseCrashlytics _crashlytics;

  final String _userId;

  StreamSubscription<Either<TripsFailure, List<Trip>>>? _tripsSubscription;

  TripsCubit({
    required ListenTrips listenTrips,
    required FirebaseCrashlytics crashlytics,
    required User user,
  })  : _listenTrips = listenTrips,
        _crashlytics = crashlytics,
        _userId = user.id,
        super(const TripsState.initial());

  startListenTrip() {
    _tripsSubscription?.cancel();
    _tripsSubscription = _listenTrips(ListenTripsParams(userId: _userId)).listen((result) {
      result.fold(
        (failure) {
          emit(TripsState.error(message: LocaleKeys.dataLoadError.tr()));
          _crashlytics.recordError(failure, StackTrace.current);
        },
        (trips) => emit(TripsState.loaded(trips: trips)),
      );
    });
  }

  @override
  Future<void> close() {
    _tripsSubscription?.cancel();
    return super.close();
  }
}
