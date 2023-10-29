import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/usecases/usecase.dart';

import '../../errors/trip_stops_failure.dart';
import '../repositories/trip_stops_repository.dart';

@lazySingleton
class DeleteTripStop implements UseCase<void, DeleteTripStopParams> {
  final TripStopsRepository repository;

  DeleteTripStop(this.repository);

  @override
  Future<Either<TripStopsFailure, void>> call(DeleteTripStopParams params) {
    return repository.deleteTripStop(
      tripId: params.tripId,
      dayTripId: params.dayTripId,
      tripStopId: params.tripStopId,
    );
  }
}

class DeleteTripStopParams {
  final String tripId;
  final String dayTripId;
  final String tripStopId;

  const DeleteTripStopParams({
    required this.tripId,
    required this.dayTripId,
    required this.tripStopId,
  });
}
