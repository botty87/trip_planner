import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../../day_trips/domain/entities/day_trip.dart';
import '../../errors/discover_trips_failure.dart';
import '../repositories/discover_trips_repository.dart';

@lazySingleton
class GetPublicDayTrips implements UseCase<List<DayTrip>, GetPublicDayTripsParams> {
  final DiscoverTripsRepository repository;

  const GetPublicDayTrips(this.repository);

  @override
  Future<Either<DiscoverTripsFailure, List<DayTrip>>> call(GetPublicDayTripsParams params) {
    return repository.getPublicDayTrips(params.tripId);
  }
}

class GetPublicDayTripsParams extends Equatable {
  final String tripId;

  const GetPublicDayTripsParams({required this.tripId});

  @override
  List<Object?> get props => [tripId];
}
