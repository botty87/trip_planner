import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/day_trips_failure.dart';
import '../repositories/day_trips_repository.dart';

@lazySingleton
class CreateDayTrip implements UseCase<void, CreateDayTripParams> {
  final DayTripsRepository repository;

  CreateDayTrip(this.repository);

  @override
  Future<Either<DayTripsFailure, void>> call(CreateDayTripParams params) async {
    return await repository.createDayTrip(
      name: params.name,
      description: params.description,
      tripId: params.tripId,
    );
  }
}

class CreateDayTripParams {
  final String name;
  final String? description;
  final String tripId;

  CreateDayTripParams({
    required this.name,
    this.description,
    required this.tripId,
  });
}