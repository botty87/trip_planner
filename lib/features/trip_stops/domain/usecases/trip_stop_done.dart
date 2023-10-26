import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/trip_stops_failure.dart';
import '../repositories/trip_stops_repository.dart';

@lazySingleton
class TripStopDone implements UseCase<void, TripStopDoneParams> {
  final TripStopsRepository _repository;

  const TripStopDone(this._repository);

  @override
  Future<Either<TripStopsFailure, void>> call(TripStopDoneParams params) {
    return _repository.updateTripStopDone(
      tripId: params.tripId,
      dayTripId: params.dayTripId,
      tripStopId: params.tripStopId,
      isDone: params.isDone,
    );
  }
}

class TripStopDoneParams {
  const TripStopDoneParams({
    required this.tripId,
    required this.dayTripId,
    required this.tripStopId,
    required this.isDone,
  });

  final String tripId;
  final String dayTripId;
  final String tripStopId;
  final bool isDone;
}
