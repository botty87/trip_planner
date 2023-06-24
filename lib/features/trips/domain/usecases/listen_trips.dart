import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/core/error/failures.dart';
import 'package:trip_planner/core/usecases/usecase.dart';

import '../entities/trip.dart';
import '../repositories/trips_repository.dart';

@lazySingleton
class ListenTrips implements StreamUseCase<List<Trip>, ListenTripsParams> {
  final TripsRepository _repository;

  ListenTrips(this._repository);

  @override
  Stream<Either<Failure, List<Trip>>> call(params) {
    return _repository.listenTrips(params.userId);
  }
}

class ListenTripsParams {
  final String userId;

  ListenTripsParams({required this.userId});
}
  
