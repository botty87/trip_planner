import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/trips_failure.dart';
import '../entities/trip.dart';
import '../repositories/trips_repository.dart';

@lazySingleton
class ListenTrip implements StreamUseCase<Trip?, ListenTripParams> {
  final TripsRepository _repository;

  ListenTrip(this._repository);

  @override
  Stream<Either<TripsFailure, Trip?>> call(ListenTripParams params) {
    return _repository.listenTrip(params.tripId);
  }
}

class ListenTripParams extends Equatable {
  final String tripId;

  const ListenTripParams({required this.tripId});

  @override
  List<Object?> get props => [tripId];
}
