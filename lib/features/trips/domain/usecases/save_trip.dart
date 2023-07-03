import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/trips_failure.dart';
import '../repositories/trips_repository.dart';

@lazySingleton
class SaveTrip implements UseCase<void, SaveTripParams> {
  final TripsRepository repository;

  SaveTrip(this.repository);

  @override
  Future<Either<TripsFailure, void>> call(SaveTripParams params) async {
    return await repository.updateTrip(
      params.tripId,
      params.tripName,
      params.tripDescription,
    );
  }
}

class SaveTripParams {
  final String tripId;
  final String tripName;
  final String? tripDescription;

  SaveTripParams({
    required this.tripId,
    required this.tripName,
    this.tripDescription,
  });
}