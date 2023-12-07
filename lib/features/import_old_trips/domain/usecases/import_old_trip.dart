import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:quiver/collection.dart';

import '../../../../core/usecases/usecase.dart';
import '../../../trips/domain/entities/trip.dart';
import '../../errors/import_old_trips_failure.dart';
import '../entities/trip_stops_container.dart';
import '../repositories/old_trips_repository.dart';

@lazySingleton
class ImportOldTrips implements UseCase<void, ImportOldTripsParams> {
  final OldTripsRepository _oldTripsRepository;

  ImportOldTrips(this._oldTripsRepository);

  @override
  Future<Either<ImportOldTripsFailure, void>> call(params) {
    return _oldTripsRepository.importOldTrips(
      userId: params.userId,
      newTrips: params.newTrips,
    );
  }
}

class ImportOldTripsParams {
  final String userId;
  final ListMultimap<Trip, TripStopsContainer> newTrips;

  ImportOldTripsParams(this.userId, this.newTrips);
}
