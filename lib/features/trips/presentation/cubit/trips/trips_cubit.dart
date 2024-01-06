import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../user_account/domain/entities/user.dart';
import '../../../domain/usecases/listen_trips.dart';
import '../../../errors/trips_failure.dart';

import '../../../domain/entities/trip.dart';

part 'trips_cubit.freezed.dart';
part 'trips_state.dart';

@injectable
class TripsCubit extends Cubit<TripsState> {
  final ListenTrips _listenTrips;
  final FirebaseCrashlytics _crashlytics;

  late final StreamSubscription<Either<TripsFailure, List<Trip>>> _tripsSubscription;

  TripsCubit({
    required ListenTrips listenTrips,
    required FirebaseCrashlytics crashlytics,
    required User user,
  })  : _listenTrips = listenTrips,
        _crashlytics = crashlytics,
        super(const TripsState()) {
    
    _tripsSubscription = _listenTrips(ListenTripsParams(userId: user.id)).listen((result) {
      result.fold(
        (failure) {
          emit(TripsState(errorMessage: LocaleKeys.dataLoadError.tr(), isLoading: false));
          _crashlytics.recordError(failure, StackTrace.current);
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
