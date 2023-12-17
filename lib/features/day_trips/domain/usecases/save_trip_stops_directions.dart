import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/day_trips_failure.dart';
import '../entities/trip_stops_directions.dart';
import '../repositories/day_trips_repository.dart';

@lazySingleton
class SaveTripStopsDirections implements UseCase<void, SaveTripStopsDirectionsParams> {
  final DayTripsRepository repository;

  SaveTripStopsDirections(this.repository);

  @override
  Future<Either<DayTripsFailure, void>> call(params) async {
    return await repository.saveTripStopsDirections(
      tripId: params.tripId,
      dayTripId: params.dayTripId,
      tripStopsDirections: params.tripStopsDirections,
    );
  }
}

class SaveTripStopsDirectionsParams {
  final String tripId;
  final String dayTripId;
  final List<TripStopsDirections> tripStopsDirections;

  SaveTripStopsDirectionsParams({
    required this.tripId,
    required this.dayTripId,
    required this.tripStopsDirections,
  });
}
