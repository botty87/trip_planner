import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/import_old_trips_failure.dart';
import '../entities/old_trip.dart';
import '../repositories/old_trips_repository.dart';

@lazySingleton
class ReadOldTrips implements UseCase<void, ReadOldTripsParams> {
  final OldTripsRepository _oldTripsRepository;

  ReadOldTrips(this._oldTripsRepository);

  @override
  Future<Either<ImportOldTripsFailure, List<OldTrip>>> call(params) {
    return _oldTripsRepository.readOldTrips(userId: params.userId);
  }
}

class ReadOldTripsParams {
  final String userId;

  ReadOldTripsParams(this.userId);
}
