import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/day_trips_failure.dart';
import '../repositories/day_trips_repository.dart';

@lazySingleton
class UpdateDayTripShowDirections implements UseCase<void, UpdateDayTripShowDirectionsParams> {
  final DayTripsRepository repository;

  UpdateDayTripShowDirections(this.repository);

  @override
  Future<Either<DayTripsFailure, void>> call(UpdateDayTripShowDirectionsParams params) {
    return repository.updateDayTripShowDirections(
      tripId: params.tripId,
      dayTripId: params.dayTripId,
      showDirections: params.showDirections,
    );
  }
}

class UpdateDayTripShowDirectionsParams extends Equatable {
  final String tripId;
  final String dayTripId;
  final bool showDirections;

  const UpdateDayTripShowDirectionsParams({
    required this.tripId,
    required this.dayTripId,
    required this.showDirections,
  });

  @override
  List<Object?> get props => [tripId, dayTripId, showDirections];
}
