import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/trip_stops_failure.dart';
import '../repositories/trip_stops_repository.dart';

@lazySingleton
class UpdateTravelTime implements UseCase<void, UpdateTravelTimeParams> {
  final TripStopsRepository _tripStopsRepository;

  UpdateTravelTime(this._tripStopsRepository);

  @override
  Future<Either<TripStopsFailure, void>> call(UpdateTravelTimeParams params) =>
      _tripStopsRepository.updateTravelTime(
        tripId: params.tripId,
        dayTripId: params.dayTripId,
        tripStopId: params.tripStopId,
        travelTime: params.travelTime,
      );
}

class UpdateTravelTimeParams {
  final String tripId;
  final String dayTripId;
  final String tripStopId;
  final int travelTime; //in minutes

  UpdateTravelTimeParams({
    required this.tripId,
    required this.dayTripId,
    required this.tripStopId,
    required this.travelTime,
  });
}
