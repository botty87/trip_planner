import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/error/exceptions.dart';
import '../../../../../core/l10n/languages.dart';
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
  final Debouncer _languageQueryDebouncer = Debouncer(milliseconds: 500);

  DiscoverNewTripsCubit({
    required GetPublicTrips getPublicTrips,
    required User user,
  })  : _getPublicTrips = getPublicTrips,
        _userId = user.id,
        super(const DiscoverNewTripsState.initial());

  void _filterTrips() {
    state.maybeMap(
      normal: (state) {
        final query = state.query;
        final List<Trip> filteredTripsByQuery;
        if (query.isEmpty) {
          filteredTripsByQuery = state.trips;
        } else {
          filteredTripsByQuery = state.trips
              .where((trip) => trip.name.toLowerCase().contains(query.toLowerCase())
                  ? true
                  : state.searchDescription
                      ? trip.description?.toLowerCase().contains(query.toLowerCase()) ?? false
                      : false)
              .toList();
        }

        final selectedLanguages = state.selectedLanguages;

        final List<Trip> filteredTripsByLanguage = [];
        if (selectedLanguages.isEmpty) {
          filteredTripsByLanguage.addAll(filteredTripsByQuery);
        } else {
          for (final language in selectedLanguages) {
            filteredTripsByLanguage
                .addAll(filteredTripsByQuery.where((trip) => trip.languageCode == language));
          }
        }

        emit(state.copyWith(filteredTrips: filteredTripsByLanguage));
      },
      orElse: () => throw const UnexpectedStateException(),
    );
  }

  tripsQueryChanged(String value) {
    state.mapOrNull(
      normal: (state) {
        emit(state.copyWith(query: value));
        _queryDebouncer.run(() {
          _filterTrips();
        });
      },
    );
  }

  searchDescriptionChanged(bool value) {
    state.mapOrNull(
      normal: (state) {
        emit(state.copyWith(searchDescription: value));
        _filterTrips();
      },
    );
  }

  fetchTrips() {
    _getPublicTrips(GetPublicTripsParams(_userId)).then(
      (value) => value.fold(
        (failure) => emit(DiscoverNewTripsState.error(message: LocaleKeys.unknownError.tr())),
        (trips) => emit(DiscoverNewTripsState.normal(
          trips: trips,
          filteredTrips: trips,
          //TODO implements with a list of favorite languages, for now it's empty
          selectedLanguages: {},
          availableLanguages: Languages.defaultLanguages,
        )),
      ),
    );
  }

  void onMoreSectionTapped() {
    state.mapOrNull(
      normal: (state) => emit(state.copyWith(isMoreSectionOpen: !state.isMoreSectionOpen)),
    );
  }

  void filterByLanguage(Language language) {
    state.mapOrNull(
      normal: (state) {
        if (state.selectedLanguages.contains(language.isoCode)) {
          emit(state.copyWith(
              selectedLanguages: Set.from(state.selectedLanguages)..remove(language.isoCode)));
        } else {
          emit(state.copyWith(
              selectedLanguages: Set.from(state.selectedLanguages)..add(language.isoCode)));
        }
        _filterTrips();
      },
    );
  }

  void languageQueryChanged(String query) {
    state.mapOrNull(
      normal: (state) {
        final languageQuery = query.toLowerCase();
        emit(state.copyWith(languageQuery: languageQuery));
        _languageQueryDebouncer.run(() => _updateAvailableLanguages());
      },
    );
  }

  void _updateAvailableLanguages() {
    state.mapOrNull(normal: (state) {
      final languageQuery = state.languageQuery;
      if (languageQuery.isEmpty) {
        emit(state.copyWith(availableLanguages: Languages.defaultLanguages));
      } else {
        emit(state.copyWith(
          availableLanguages: Languages.defaultLanguages.where((language) {
            return language.nativeName.toLowerCase().startsWith(languageQuery) ||
                language.name.toLowerCase().startsWith(languageQuery);
          }).toList(),
        ));
      }
    });
  }
}
