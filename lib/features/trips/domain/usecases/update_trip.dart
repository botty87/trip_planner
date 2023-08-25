import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/trips_failure.dart';
import '../repositories/trips_repository.dart';

@lazySingleton
class UpdateTrip implements UseCase<void, UpdateTripParams> {
  final TripsRepository repository;

  UpdateTrip(this.repository);

  @override
  Future<Either<TripsFailure, void>> call(UpdateTripParams params) async {
    return await repository.updateTrip(
      params.id,
      params.name,
      params.description,
      params.startDate,
    );
  }
}

class UpdateTripParams {
  final String id;
  final String name;
  final String? description;
  final DateTime startDate;

  UpdateTripParams({
    required this.id,
    required this.name,
    required this.description,
    required this.startDate,
  });
}