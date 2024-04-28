import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../domain/entities/trip.dart';
import '../../../domain/usecases/listen_trips.dart';
import '../../../errors/trips_failure.dart';

part 'trips_cubit.freezed.dart';
part 'trips_state.dart';

@injectable
class TripsCubit extends Cubit<TripsState> {
  final ListenUserTrips _listenUserTrips;
  final ListenSharedTrips _listenSharedTrips;
  final FirebaseCrashlytics _crashlytics;

  final String _userId;

  StreamSubscription<Either<TripsFailure, List<Trip>>>? _userTripsSubscription;
  StreamSubscription<Either<TripsFailure, List<Trip>>>? _sharedTripsSubscription;

  TripsCubit({
    required ListenUserTrips listenUserTrips,
    required ListenSharedTrips listenSharedTrips,
    required FirebaseCrashlytics crashlytics,
    @factoryParam required String userId,
  })  : _listenUserTrips = listenUserTrips,
        _listenSharedTrips = listenSharedTrips,
        _crashlytics = crashlytics,
        _userId = userId,
        super(const TripsState.initial());

  startListenTrips() {
    List<Trip>? userTrips;
    List<Trip>? sharedTrips;

    _userTripsSubscription?.cancel();
    _sharedTripsSubscription?.cancel();

    _userTripsSubscription = _listenUserTrips(ListenTripsParams(userId: _userId)).listen((result) {
      result.fold(
        (failure) {
          emit(TripsState.error(message: LocaleKeys.dataLoadError.tr()));
          _crashlytics.recordError(failure, StackTrace.current);
        },
        (trips) {
          switch (state) {
            case final TripsStateLoaded loaded:
              userTrips = trips;
              emit(loaded.copyWith(userTrips: userTrips!));
            default:
              userTrips = trips;
              if (sharedTrips != null) {
                emit(TripsState.loaded(userTrips: userTrips!, sharedTrips: sharedTrips!));
              }
          }
        },
      );
    });

    _sharedTripsSubscription =
        _listenSharedTrips(ListenTripsParams(userId: _userId)).listen((result) {
      result.fold(
        (failure) {
          emit(TripsState.error(message: LocaleKeys.dataLoadError.tr()));
          _crashlytics.recordError(failure, StackTrace.current);
        },
        (trips) {
          switch (state) {
            case final TripsStateLoaded loaded:
              sharedTrips = trips;
              emit(loaded.copyWith(sharedTrips: sharedTrips!));
            default:
              sharedTrips = trips;
              if (userTrips != null) {
                emit(TripsState.loaded(userTrips: userTrips!, sharedTrips: sharedTrips!));
              }
          }
        },
      );
    });
  }

  @override
  Future<void> close() {
    _userTripsSubscription?.cancel();
    _sharedTripsSubscription?.cancel();
    return super.close();
  }
}
