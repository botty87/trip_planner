import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/day_trips_failure.dart';
import '../entities/day_trip.dart';
import '../repositories/day_trips_repository.dart';

@lazySingleton
class ListenDayTrips implements StreamUseCase<List<DayTrip>, ListenDayTripsParams> {
  final DayTripsRepository repository;

  ListenDayTrips(this.repository);

  @override
  Stream<Either<DayTripsFailure, List<DayTrip>>> call(ListenDayTripsParams params) {
    return repository.listenDayTrips(params.tripId);
  }
}

class ListenDayTripsParams {
  final String tripId;

  ListenDayTripsParams({required this.tripId});
}
