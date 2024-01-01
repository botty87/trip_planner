import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
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
    return await repository.fetchTripStopsDirections(params.tripStops, params.travelMode);
  }
}

class FetchTripStopsDirectionsParams extends Equatable {
  final List<TripStop> tripStops;
  final TravelMode travelMode;

  const FetchTripStopsDirectionsParams({required this.tripStops, required this.travelMode});

  @override
  List<Object?> get props => [tripStops, travelMode];
}
