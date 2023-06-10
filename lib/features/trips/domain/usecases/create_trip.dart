import 'package:dartz/dartz.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/trips_failure.dart';
import '../entities/trip.dart';
import '../repositories/trips_repository.dart';

class CreateTrip implements UseCase<void, CreateTripParams> {
  final TripsRepository repository;

  CreateTrip(this.repository);

  @override
  Future<Either<TripsFailure, void>> call(CreateTripParams params) async {
    return await repository.addTrip(
      Trip(
        name: params.tripName,
        userId: params.userId,
      ),
    );
  }
}

class CreateTripParams {
  final String tripName;
  final String userId;

  CreateTripParams({
    required this.tripName,
    required this.userId,
  });
}
