import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:quiver/collection.dart';

import '../../../../core/l10n/locale_keys.g.dart';
import '../../../day_trips/domain/entities/day_trip.dart';
import '../../../trip_stops/domain/entities/trip_stop.dart';
import '../../../trips/domain/entities/trip.dart';
import '../../../user_account/domain/entities/user.dart';
import '../../domain/entities/old_daily_trip.dart';
import '../../domain/entities/old_place.dart';
import '../../domain/entities/old_trip.dart';
import '../../domain/entities/trip_stops_container.dart';
import '../../domain/usecases/import_old_trip.dart';
import '../../domain/usecases/read_old_trips.dart';

part 'import_old_trips_cubit.freezed.dart';
part 'import_old_trips_state.dart';

@injectable
class ImportOldTripsCubit extends Cubit<ImportOldTripsState> {
  final User _user;

  final ReadOldTrips _readOldTrips;
  final ImportOldTrips _importOldTrips;

  ImportOldTripsCubit({
    @factoryParam required User user,
    required ReadOldTrips readOldTrips,
    required ImportOldTrips importOldTrips,
  })  : _user = user,
        _readOldTrips = readOldTrips,
        _importOldTrips = importOldTrips,
        super(const ImportOldTripsState.initial());

  void reload() => _readOldTripsAction();

  _readOldTripsAction() async {
    final result = await _readOldTrips(ReadOldTripsParams(_user.id));
    result.fold(
      (failure) =>
          emit(ImportOldTripsState.error(message: failure.message ?? LocaleKeys.unknownError.tr())),
      (trips) {
        if (trips.isEmpty) {
          emit(const ImportOldTripsState.noTrips());
        } else {
          emit(ImportOldTripsState.loaded(trips: trips));
        }
      },
    );
  }

  void toggleTrip(String id) {
    assert(state is ImportOldTripsStateLoaded);
    final currentState = state as ImportOldTripsStateLoaded;

    final Set<String> selectedTripsIds = Set.from(currentState.selectedTripsIds);
    if (selectedTripsIds.contains(id)) {
      selectedTripsIds.remove(id);
    } else {
      selectedTripsIds.add(id);
    }
    emit(ImportOldTripsState.loaded(trips: currentState.trips, selectedTripsIds: selectedTripsIds));
  }

  import() async {
    assert(state is ImportOldTripsStateLoaded);
    final currentState = state as ImportOldTripsStateLoaded;
    emit(ImportOldTripsState.importing(
        trips: currentState.trips, selectedTripsIds: currentState.selectedTripsIds));

    final List<OldTrip> selectedTrips = currentState.trips
        .where((element) => currentState.selectedTripsIds.contains(element.id))
        .toList();

    final newTrips = ListMultimap<Trip, TripStopsContainer>();
    //Convert to new trips
    for (OldTrip oldTrip in selectedTrips) {
      final startDate = oldTrip.dailyTrips.firstOrNull?.date ?? DateTime.now();

      final trip = Trip(
          name: oldTrip.name, userId: _user.id, createdAt: DateTime.now(), startDate: startDate);

      for (OldDailyTrip oldDailyTrip in oldTrip.dailyTrips) {
        final dayTrip = DayTrip(
          index: oldDailyTrip.position,
          description: oldDailyTrip.note,
          startTime: _user.settings.defaultDayTripStartTime,
          travelMode: _user.settings.travelMode,
          showDirections: _user.settings.showDirections,
          useDifferentDirectionsColors: _user.settings.useDifferentDirectionsColors,
        );

        final TripStopsContainer dayTrips = TripStopsContainer(dayTrip);

        for (OldPlace oldPlace in oldDailyTrip.places) {
          final tripStop = TripStop(
            index: oldPlace.position,
            name: oldPlace.name,
            description: oldPlace.note,
            duration: 1,
            location: LatLng(oldPlace.latitude, oldPlace.longitude),
          );

          dayTrips.addTripStop(tripStop);
        }

        newTrips.add(trip, dayTrips);
      }
    }

    _importOldTrips(ImportOldTripsParams(_user.id, newTrips)).then((value) {
      value.fold(
        (failure) => emit(
            ImportOldTripsState.error(message: failure.message ?? LocaleKeys.unknownError.tr())),
        (_) {
          emit(const ImportOldTripsState.imported());
        },
      );
    });
  }
}
