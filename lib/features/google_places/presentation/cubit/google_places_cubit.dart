import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/core/utilities/debouncer.dart';
import 'package:trip_planner/features/google_places/domain/entities/place_details.dart';
import 'package:trip_planner/features/google_places/domain/usecases/fetch_suggestions.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entities/suggestion.dart';
import '../../domain/usecases/fetch_place_details.dart';
import '../../errors/google_places_failure.dart';

part 'google_places_state.dart';
part 'google_places_cubit.freezed.dart';

@injectable
class GooglePlacesCubit extends Cubit<GooglePlacesState> {
  final FetchSuggestions _fetchSuggestions;
  final FetchPlaceDetails _fetchPlaceDetails;

  final String token = Uuid().v4();
  final _debouncerQuery = Debouncer(milliseconds: 500);
  final _debounceLoading = Debouncer(milliseconds: 500);

  GooglePlacesCubit(
      {required FetchSuggestions fetchSuggestions, required FetchPlaceDetails fetchPlaceDetails})
      : _fetchSuggestions = fetchSuggestions,
        _fetchPlaceDetails = fetchPlaceDetails,
        super(GooglePlacesState.normal());

  void fetchSuggestions(String query) async {
    if (query.length < 2) {
      _clearSuggestions();
      return;
    }

    _debouncerQuery.run(() async {
      _debounceLoading.run(() {
        emit(GooglePlacesState.normal(isLoading: true));
      });

      final result = await _fetchSuggestions(FetchSuggestionsParams(query: query, token: token));
      _debounceLoading.cancel();
      result.fold(
        (failure) {
          failure.maybeMap(
            requestCancelled: (_) {},
            orElse: () => emit(
                GooglePlacesState.error(message: _getErrorMessage(failure))),
          );
        },
        (suggestions) => emit(GooglePlacesState.normal(suggestions: suggestions, isLoading: false)),
      );
    });
  }

  void _clearSuggestions() {
    _debouncerQuery.cancel();
    emit(GooglePlacesState.normal());
  }

  String _getErrorMessage(GooglePlacesFailure failure) {
    return failure.whenOrNull(
      noInternetConnection: () => LocaleKeys.noInternetConnectionMessage.tr(),
      requestDenied: (message) => "${LocaleKeys.requestDenied.tr()}: $message",
      unknownError: (message) => message ?? LocaleKeys.unknownError.tr(),
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
            message: _getErrorMessage(failure),
            suggestions: state.suggestions,
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
}
