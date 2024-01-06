import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/utilities/debouncer.dart';
import '../../../trips/domain/entities/trip.dart';
import '../../../user_account/domain/entities/user.dart';
import '../../domain/usecases/get_public_trips.dart';

part 'discover_new_trips_cubit.freezed.dart';
part 'discover_new_trips_state.dart';

@injectable
class DiscoverNewTripsCubit extends Cubit<DiscoverNewTripsState> {
  final GetPublicTrips _getPublicTrips;

  final Debouncer _queryDebouncer = Debouncer(milliseconds: 500);

  DiscoverNewTripsCubit({
    required GetPublicTrips getPublicTrips,
    required User user,
  })  : _getPublicTrips = getPublicTrips,
        super(const DiscoverNewTripsState.loading()) {
    _getPublicTrips(GetPublicTripsParams(user.id)).then((value) => value.fold(
          (failure) => _emitError(failure.message),
          (trips) {
            emit(DiscoverNewTripsState.normal(
              query: state.query,
              trips: trips,
              filteredTrips: trips,
              searchDescription: state.searchDescription,
            ));
          },
        ));
  }

  List<Trip> get _filteredTrips {
    final query = state.query;
    if (query.isEmpty) {
      return state.trips;
    } else {
      return state.trips.where((trip) {
        return trip.name.toLowerCase().contains(query.toLowerCase())
            ? true
            : state.searchDescription
                ? trip.description?.toLowerCase().contains(query.toLowerCase()) ?? false
                : false;
      }).toList();
    }
  }

  tripsQueryChanged(String value) {
    emit(state.copyWith(query: value));
    _queryDebouncer.run(() {
      emit(state.copyWith(filteredTrips: _filteredTrips));
    });
  }

  _emitError(String? message) {
    emit(DiscoverNewTripsState.error(
      query: state.query,
      message: message ?? LocaleKeys.unknownError.tr(),
      trips: state.trips,
      filteredTrips: state.filteredTrips,
      searchDescription: state.searchDescription,
    ));
    emit(DiscoverNewTripsState.normal(
      query: state.query,
      trips: state.trips,
      filteredTrips: state.filteredTrips,
      searchDescription: state.searchDescription,
    ));
  }

  searchDescriptionChanged(bool value) {
    emit(state.copyWith(searchDescription: value));
    emit(state.copyWith(filteredTrips: _filteredTrips));
  }
}
