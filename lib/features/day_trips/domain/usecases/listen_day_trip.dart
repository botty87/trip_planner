import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/day_trips_failure.dart';
import '../entities/day_trip.dart';
import '../repositories/day_trips_repository.dart';

@lazySingleton
class ListenDayTrip implements StreamUseCase<DayTrip, ListenDayTripParams> {
  final DayTripsRepository repository;

  ListenDayTrip(this.repository);

  @override
  Stream<Either<DayTripsFailure, DayTrip>> call(params) {
    return repository.listenDayTrip(params.tripId, params.dayTripId);
  }
}

class ListenDayTripParams {
  final String tripId;
  final String dayTripId;

  ListenDayTripParams({required this.tripId, required this.dayTripId});
}