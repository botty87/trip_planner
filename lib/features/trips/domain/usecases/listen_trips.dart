import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/usecases/usecase.dart';

import '../../errors/trips_failure.dart';
import '../entities/trip.dart';
import '../repositories/trips_repository.dart';

@lazySingleton
class ListenTrips implements StreamUseCase<List<Trip>, ListenTripsParams> {
  final TripsRepository _repository;

  ListenTrips(this._repository);

  @override
  Stream<Either<TripsFailure, List<Trip>>> call(params) {
    return _repository.listenTrips(params.userId);
  }
}

class ListenTripsParams {
  final String userId;

  ListenTripsParams({required this.userId});
}
  
