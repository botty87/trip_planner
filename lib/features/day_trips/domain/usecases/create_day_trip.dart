import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/day_trips_failure.dart';
import '../repositories/day_trips_repository.dart';

@lazySingleton
class CreateDayTrip implements UseCase<void, CreateDayTripParams> {
  final DayTripsRepository repository;

  CreateDayTrip(this.repository);

  @override
  Future<Either<DayTripsFailure, void>> call(CreateDayTripParams params) async {
    return await repository.addDayTrip(
        tripId: params.tripId,
        dayTrip: DayTrip.create(description: params.description));
  }
}

class CreateDayTripParams {
  final String? description;
  final String tripId;

  const CreateDayTripParams({
    this.description,
    required this.tripId,
  });
}
