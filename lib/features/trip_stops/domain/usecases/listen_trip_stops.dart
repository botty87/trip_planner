import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/trip_stop.dart';
import '../../errors/trip_stops_failure.dart';

import '../repositories/trip_stops_repository.dart';

@lazySingleton
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
