import 'package:dartz/dartz.dart';
import 'package:trip_planner/core/usecases/usecase.dart';
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart';
import 'package:trip_planner/features/trip_stops/errors/trip_stops_failure.dart';

import '../repositories/trip_stops_repository.dart';

class ListenTripStops implements StreamUseCase<List<TripStop>, ListenTripStopsParams> {
  final TripStopsRepository repository;

  ListenTripStops(this.repository);
  
  @override
  Stream<Either<TripStopsFailure, List<TripStop>>> call(params) {
    return repository.listenTripStops(
      tripId: params.tripId,
      dayTripId: params.dayTripId,
    );
  }
}

class ListenTripStopsParams {
  final String tripId;
  final String dayTripId;

  ListenTripStopsParams({required this.tripId, required this.dayTripId});
}
