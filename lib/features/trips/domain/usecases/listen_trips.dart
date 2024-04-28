import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/trips_failure.dart';
import '../entities/trip.dart';
import '../repositories/trips_repository.dart';

@lazySingleton
class ListenUserTrips implements StreamUseCase<List<Trip>, ListenTripsParams> {
  final TripsRepository _repository;

  ListenUserTrips(this._repository);

  @override
  Stream<Either<TripsFailure, List<Trip>>> call(params) {
    return _repository.listenUserTrips(params.userId);
  }
}

@lazySingleton
class ListenSharedTrips implements StreamUseCase<List<Trip>, ListenTripsParams> {
  final TripsRepository _repository;

  ListenSharedTrips(this._repository);

  @override
  Stream<Either<TripsFailure, List<Trip>>> call(params) {
    return _repository.listenSharedTrips(params.userId);
  }
}

class ListenTripsParams extends Equatable {
  final String userId;

  const ListenTripsParams({required this.userId});

  @override
  List<Object?> get props => [userId];
}
