import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/trips_failure.dart';
import '../entities/trip.dart';
import '../repositories/trips_repository.dart';

@lazySingleton
class CreateTrip implements UseCase<void, CreateTripParams> {
  final TripsRepository repository;

  CreateTrip(this.repository);

  @override
  Future<Either<TripsFailure, void>> call(CreateTripParams params) async {
    return await repository.addTrip(
      Trip(
        name: params.tripName,
        description: params.tripDescription,
        userId: params.userId,
        createdAt: params.createdAt,
      ),
    );
  }
}

class CreateTripParams {
  final String tripName;
  final String? tripDescription;
  final String userId;
  final DateTime createdAt = DateTime.now();

  CreateTripParams({
    required this.tripName,
    this.tripDescription,
    required this.userId,
  });
}
