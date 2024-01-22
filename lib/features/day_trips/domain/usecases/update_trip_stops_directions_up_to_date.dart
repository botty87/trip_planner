import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/day_trips_failure.dart';
import '../repositories/day_trips_repository.dart';

@lazySingleton
class UpdateTripStopsDirectionsUpToDate
    implements UseCase<void, UpdateTripStopsDirectionsUpToDateParams> {
  final DayTripsRepository repository;

  UpdateTripStopsDirectionsUpToDate(this.repository);

  @override
  Future<Either<DayTripsFailure, void>> call(UpdateTripStopsDirectionsUpToDateParams params) {
    return repository.updateTripStopsDirectionsUpToDate(
      tripId: params.tripId,
      dayTripId: params.dayTripId,
      isUpToDate: params.isUpToDate,
      travelMode: params.travelMode,
    );
  }
}

class UpdateTripStopsDirectionsUpToDateParams extends Equatable {
  final String tripId;
  final String dayTripId;
  final bool isUpToDate;
  final TravelMode? travelMode;

  const UpdateTripStopsDirectionsUpToDateParams({
    required this.tripId,
    required this.dayTripId,
    required this.isUpToDate,
    this.travelMode,
  });

  @override
  List<Object?> get props => [tripId, dayTripId, isUpToDate, travelMode];
}
