import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/trip_stops_failure.dart';
import '../repositories/trip_stops_repository.dart';

@lazySingleton
class UpdateTripStop implements UseCase<void, UpdateTripStopParams> {
  final TripStopsRepository repository;

  UpdateTripStop(this.repository);

  @override
  Future<Either<TripStopsFailure, void>> call(UpdateTripStopParams params) async {
    return await repository.updateTripStop(
      tripId: params.tripId,
      dayTripId: params.dayTripId,
      tripStopId: params.tripStopId,
      name: params.name,
      description: params.description,
      duration: params.duration,
      location: params.location,
    );
  }
}

class UpdateTripStopParams {
  final String id;
  final String tripId;
  final String dayTripId;
  final String tripStopId;
  final String name;
  final String? description;
  final int duration;
  final LatLng location;

  UpdateTripStopParams({
    required this.id,
    required this.tripId,
    required this.dayTripId,
    required this.tripStopId,
    required this.name,
    required this.description,
    required this.duration,
    required this.location,
  });
}
