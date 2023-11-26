import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
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
  final FirebaseCrashlytics _crashlytics;

  late final StreamSubscription<Either<TripsFailure, List<Trip>>> _tripsSubscription;

  TripsCubit(this._listenTrips, this._userCubit, this._crashlytics) : super(const TripsState()) {
    final userState = _userCubit.state as UserStateLoggedIn;
    _tripsSubscription =
        _listenTrips(ListenTripsParams(userId: userState.user.id)).listen((result) {
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
