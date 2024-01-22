import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/trip_stops_failure.dart';
import '../entities/trip_stop.dart';
import '../repositories/trip_stops_repository.dart';

@lazySingleton
class UpdateTripStopsIndexes implements UseCase<void, UpdateTripStopsIndexesParams> {
  final TripStopsRepository _tripStopsRepository;

  UpdateTripStopsIndexes(this._tripStopsRepository);

  @override
  Future<Either<TripStopsFailure, void>> call(UpdateTripStopsIndexesParams params) =>
      _tripStopsRepository.updateTripStopsIndexes(
        tripId: params.tripId,
        dayTripId: params.dayTripId,
        tripStops: params.tripStops,
      );
}

class UpdateTripStopsIndexesParams extends Equatable {
  final String tripId;
  final String dayTripId;
  final List<TripStop> tripStops;

  const UpdateTripStopsIndexesParams({
    required this.tripId,
    required this.dayTripId,
    required this.tripStops,
  });

  @override
  List<Object?> get props => [tripId, dayTripId, tripStops];
}
