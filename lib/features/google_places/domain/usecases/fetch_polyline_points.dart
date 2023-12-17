import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../../day_trips/domain/entities/trip_stops_directions.dart';
import '../../../trip_stops/domain/entities/trip_stop.dart';
import '../../errors/google_places_failure.dart';
import '../repositories/google_places_repository.dart';

@lazySingleton
class FetchTripStopsDirections implements UseCase<void, FetchTripStopsDirectionsParams> {
  final GooglePlacesRepository repository;

  FetchTripStopsDirections(this.repository);

  @override
  Future<Either<GooglePlacesFailure, List<TripStopsDirections>>> call(
      FetchTripStopsDirectionsParams params) async {
    return await repository.fetchTripStopsDirections(params.tripStops);
  }
}

class FetchTripStopsDirectionsParams {
  final List<TripStop> tripStops;

  FetchTripStopsDirectionsParams({required this.tripStops});
}
