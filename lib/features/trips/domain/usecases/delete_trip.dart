import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/trips_failure.dart';
import '../entities/trip.dart';
import '../repositories/trips_repository.dart';

@lazySingleton
class DeleteTrip implements UseCase<void, DeleteTripParams> {
  final TripsRepository repository;

  DeleteTrip(this.repository);

  @override
  Future<Either<TripsFailure, void>> call(DeleteTripParams params) async {
    return await repository.deleteTrip(params.trip);
  }
}

class DeleteTripParams {
  final Trip trip;

  DeleteTripParams({
    required this.trip,
  });
}
