import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../core/utilities/debouncer.dart';
import '../../../../trips/domain/entities/trip.dart';
import '../../../../user_account/domain/entities/user.dart';
import '../../../domain/usecases/get_public_trips.dart';

part 'discover_new_trips_cubit.freezed.dart';
part 'discover_new_trips_state.dart';

@injectable
class DiscoverNewTripsCubit extends Cubit<DiscoverNewTripsState> {
  final GetPublicTrips _getPublicTrips;
  final String _userId;

  final Debouncer _queryDebouncer = Debouncer(milliseconds: 500);

  DiscoverNewTripsCubit({
    required GetPublicTrips getPublicTrips,
    required User user,
  })  : _getPublicTrips = getPublicTrips,
        _userId = user.id,
        super(const DiscoverNewTripsState.initial());

  List<Trip> get _filteredTrips {
    assert(state is _StateNormal);
    final query = (state as _StateNormal).query;
    if (query.isEmpty) {
      return (state as _StateNormal).trips;
    } else {
      return (state as _StateNormal).trips.where((trip) {
        return trip.name.toLowerCase().contains(query.toLowerCase())
            ? true
            : (state as _StateNormal).searchDescription
                ? trip.description?.toLowerCase().contains(query.toLowerCase()) ?? false
                : false;
      }).toList();
    }
  }

  tripsQueryChanged(String value) {
    assert(state is _StateNormal);
    emit((state as _StateNormal).copyWith(query: value));
    _queryDebouncer.run(() {
      emit((state as _StateNormal).copyWith(filteredTrips: _filteredTrips));
    });
  }

  searchDescriptionChanged(bool value) {
    assert(state is _StateNormal);
    emit((state as _StateNormal).copyWith(searchDescription: value));
    emit((state as _StateNormal).copyWith(filteredTrips: _filteredTrips));
  }

  fetchTrips() {
    emit(const DiscoverNewTripsState.loading());
    _getPublicTrips(GetPublicTripsParams(_userId)).then(
      (value) => value.fold(
        (failure) => emit(DiscoverNewTripsState.error(message: LocaleKeys.unknownError.tr())),
        (trips) => emit(DiscoverNewTripsState.normal(
          trips: trips,
          filteredTrips: trips,
        )),
      ),
    );
  }
}
