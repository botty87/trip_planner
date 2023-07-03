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
      params.id,
      params.name,
      params.description,
    );
  }
}

class SaveTripParams {
  final String id;
  final String name;
  final String? description;

  SaveTripParams({
    required this.id,
    required this.name,
    this.description,
  });
}
