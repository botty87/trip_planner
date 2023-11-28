import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/day_trips_failure.dart';
import '../repositories/day_trips_repository.dart';

@lazySingleton
class DeleteDayTrip implements UseCase<void, DeleteDayTripParams> {
  final DayTripsRepository repository;

  DeleteDayTrip(this.repository);

  @override
  Future<Either<DayTripsFailure, void>> call(DeleteDayTripParams params) {
    return repository.deleteDayTrip(
      tripId: params.tripId,
      dayTripId: params.dayTripId,
    );
  }
}

class DeleteDayTripParams {
  final String tripId;
  final String dayTripId;

  DeleteDayTripParams({required this.tripId, required this.dayTripId});
}
