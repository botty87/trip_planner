import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/features/google_places/domain/usecases/fetch_suggestions.dart';
import 'package:uuid/uuid.dart';

part 'google_places_state.dart';
part 'google_places_cubit.freezed.dart';

@injectable
class GooglePlacesCubit extends Cubit<GooglePlacesState> {
  final FetchSuggestions _fetchSuggestions;
  final String token = Uuid().v4();

  GooglePlacesCubit({required FetchSuggestions fetchSuggestions}) :
    _fetchSuggestions = fetchSuggestions,
   super(GooglePlacesState());

  Future<void> fetchSuggestions(String query) async {
    final result = await _fetchSuggestions(FetchSuggestionsParams(query: query, token: token));
    result.fold(
      (failure) => emit(GooglePlacesState()),
      (suggestions) => emit(GooglePlacesState()),
    );
  }
}
