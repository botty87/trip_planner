import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/day_trips_failure.dart';
import '../repositories/day_trips_repository.dart';

@lazySingleton
class UpdateDayTripUseDifferentDirectionsColors
    implements UseCase<void, UpdateDayTripUseDifferentDirectionsColorsParams> {
  final DayTripsRepository repository;

  UpdateDayTripUseDifferentDirectionsColors(this.repository);

  @override
  Future<Either<DayTripsFailure, void>> call(
      UpdateDayTripUseDifferentDirectionsColorsParams params) {
    return repository.updateDayTripUseDifferentDirectionsColors(
      tripId: params.tripId,
      dayTripId: params.dayTripId,
      useDifferentDirectionsColors: params.useDifferentDirectionsColors,
    );
  }
}

class UpdateDayTripUseDifferentDirectionsColorsParams extends Equatable {
  final String tripId;
  final String dayTripId;
  final bool useDifferentDirectionsColors;

  const UpdateDayTripUseDifferentDirectionsColorsParams({
    required this.tripId,
    required this.dayTripId,
    required this.useDifferentDirectionsColors,
  });

  @override
  List<Object?> get props => [tripId, dayTripId, useDifferentDirectionsColors];
}
