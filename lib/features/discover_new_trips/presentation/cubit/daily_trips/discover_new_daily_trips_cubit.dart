import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../day_trips/domain/entities/day_trip.dart';
import '../../../domain/usecases/get_public_day_trips.dart';

part 'discover_new_daily_trips_cubit.freezed.dart';
part 'discover_new_daily_trips_state.dart';

@injectable
class DiscoverNewDailyTripsCubit extends Cubit<DiscoverNewDailyTripsState> {
  final GetPublicDayTrips _getPublicDayTrips;
  final String _tripId;

  DiscoverNewDailyTripsCubit({
    @factoryParam required String tripId,
    required GetPublicDayTrips getPublicDayTrips,
  })  : _getPublicDayTrips = getPublicDayTrips,
        _tripId = tripId,
        super(const DiscoverNewDailyTripsState.initial());

  fetchDayTrips() {
    _getPublicDayTrips(GetPublicDayTripsParams(tripId: _tripId)).then(
      (value) => value.fold(
        (failure) => emit(DiscoverNewDailyTripsState.error(
            message: failure.message ?? LocaleKeys.unknownError.tr())),
        (dayTrips) => emit(DiscoverNewDailyTripsState.loaded(dayTrips: dayTrips)),
      ),
    );
  }

  void hideFab() {
    state.mapOrNull(loaded: (state) => emit(state.copyWith(isFabVisible: false)));
  }

  void showFab() {
    state.mapOrNull(loaded: (state) => emit(state.copyWith(isFabVisible: true)));
  }
}
