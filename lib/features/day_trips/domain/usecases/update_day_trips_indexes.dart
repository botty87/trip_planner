import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart';

import '../../../../core/usecases/usecase.dart';
import '../repositories/day_trips_repository.dart';

@lazySingleton
class UpdateDayTripsIndexes implements UseCase<void, UpdateDayTripsIndexesParams> {
  final DayTripsRepository _dayTripsRepository;

  UpdateDayTripsIndexes(this._dayTripsRepository);

  @override
  Future<Either<DayTripsFailure, void>> call(UpdateDayTripsIndexesParams params) =>
      _dayTripsRepository.updateDayTripsIndexes(
        tripId: params.tripId,
        dayTrips: params.dayTrips,
      );
}

class UpdateDayTripsIndexesParams {
  final String tripId;
  final List<DayTrip> dayTrips;

  const UpdateDayTripsIndexesParams({
    required this.tripId,
    required this.dayTrips,
  });
}
