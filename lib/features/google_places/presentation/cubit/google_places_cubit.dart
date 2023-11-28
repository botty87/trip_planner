import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../../../core/utilities/debouncer.dart';
import '../../domain/entities/place_details.dart';
import '../../domain/entities/suggestion.dart';
import '../../domain/usecases/fetch_place_details.dart';
import '../../domain/usecases/fetch_suggestions.dart';
import '../../errors/google_places_failure.dart';

part 'google_places_state.dart';
part 'google_places_cubit.freezed.dart';

@injectable
class GooglePlacesCubit extends Cubit<GooglePlacesState> {
  final FetchSuggestions _fetchSuggestions;
  final FetchPlaceDetails _fetchPlaceDetails;

  final String token = const Uuid().v4();
  final _debouncerQuery = Debouncer(milliseconds: 500);
  final _debounceLoading = Debouncer(milliseconds: 500);

  GooglePlacesCubit(
      {required FetchSuggestions fetchSuggestions, required FetchPlaceDetails fetchPlaceDetails})
      : _fetchSuggestions = fetchSuggestions,
        _fetchPlaceDetails = fetchPlaceDetails,
        super(const GooglePlacesState.normal());

  void fetchSuggestions(String query, String lang, {bool noDebounce = false}) async {
    if (query.length < 2) {
      _clearSuggestions();
      return;
    }

    void fetch() async {
      final result =
          await _fetchSuggestions(FetchSuggestionsParams(query: query, lang: lang, token: token));
      _debounceLoading.cancel();
      result.fold(
        (failure) {
          failure.maybeMap(
            requestCancelled: (_) {},
            orElse: () => emit(GooglePlacesState.error(
              error: _getErrorType(failure),
              showRetryButton: true,
            )),
          );
        },
        (suggestions) => emit(GooglePlacesState.normal(suggestions: suggestions, isLoading: false)),
      );
    }

    if (noDebounce) {
      emit(const GooglePlacesState.normal(isLoading: true));
      fetch();
    } else {
      _debouncerQuery.run(() async {
        _debounceLoading.run(() {
          emit(const GooglePlacesState.normal(isLoading: true));
        });
        fetch();
      });
    }
  }

  void _clearSuggestions() {
    _debouncerQuery.cancel();
    emit(const GooglePlacesState.normal());
  }

  GooglePlacesError _getErrorType(GooglePlacesFailure failure) {
    return failure.whenOrNull(
      noInternetConnection: () => const GooglePlacesError.noInternetConnection(),
      requestDenied: (message) => GooglePlacesError.requestDenied(message: message),
      unknownError: (message) => GooglePlacesError.unknownError(message: message),
    )!;
  }

  Future<PlaceDetails?> fetchPlaceDetails(String placeId) async {
    _debounceLoading.run(() {
      emit(GooglePlacesState.normal(
        isLoading: true,
        suggestions: state.suggestions,
      ));
    });

    final result =
        await _fetchPlaceDetails(FetchPlaceDetailsParams(placeId: placeId, token: token));
    _debounceLoading.cancel();

    return result.fold(
      (failure) {
        failure.maybeMap(
          requestCancelled: (_) {},
          orElse: () => emit(GooglePlacesState.error(
            error: _getErrorType(failure),
            suggestions: state.suggestions,
            showRetryButton: false,
          )),
        );
        return null;
      },
      (placeDetails) {
        emit(GooglePlacesState.normal(
          isLoading: false,
          placeDetails: placeDetails,
        ));
        return placeDetails;
      },
    );
  }

  updatePlaceDetailsLocation(LatLng location) =>
      state.mapOrNull(normal: (state) => emit(state.copyWith.placeDetails!(location: location)));
}
