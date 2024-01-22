import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../../trips/domain/entities/trip.dart';
import '../../errors/discover_trips_failure.dart';
import '../repositories/discover_trips_repository.dart';

@lazySingleton
class GetPublicTrips implements UseCase<List<Trip>, GetPublicTripsParams> {
  final DiscoverTripsRepository repository;

  const GetPublicTrips(this.repository);

  @override
  Future<Either<DiscoverTripsFailure, List<Trip>>> call(GetPublicTripsParams params) async {
    return repository.getPublicTrips(params.userId);
  }
}

class GetPublicTripsParams extends Equatable {
  final String userId;

  const GetPublicTripsParams(this.userId);

  @override
  List<Object> get props => [userId];
}
