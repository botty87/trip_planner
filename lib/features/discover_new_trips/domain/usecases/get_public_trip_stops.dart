import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../../trip_stops/domain/entities/trip_stop.dart';
import '../../errors/discover_trips_failure.dart';
import '../repositories/discover_trips_repository.dart';

@lazySingleton
class GetPublicTripStops implements UseCase<List<TripStop>, GetPubliTripStopsParams> {
  final DiscoverTripsRepository repository;

  const GetPublicTripStops(this.repository);

  @override
  Future<Either<DiscoverTripsFailure, List<TripStop>>> call(GetPubliTripStopsParams params) async {
    return await repository.getPublicTripStops(params.tripId, params.dayTripId);
  }
}

class GetPubliTripStopsParams extends Equatable {
  final String tripId;
  final String dayTripId;

  const GetPubliTripStopsParams({required this.tripId, required this.dayTripId});

  @override
  List<Object?> get props => [tripId, dayTripId];
}
