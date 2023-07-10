import 'package:dartz/dartz.dart';

import '../../errors/day_trips_failure.dart';

abstract class DayTripsRepository {
  Future<Either<DayTripsFailure, void>> createDayTrip(
      {required String name, String? description, required String tripId});
}
