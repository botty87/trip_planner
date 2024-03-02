import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/day_trips_failure.dart';
import '../repositories/day_trips_repository.dart';

@lazySingleton
class UpdateDayTrip implements UseCase<void, UpdateDayTripParams> {
  final DayTripsRepository repository;

  UpdateDayTrip(this.repository);

  @override
  Future<Either<DayTripsFailure, void>> call(UpdateDayTripParams params) async {
    return await repository.updateDayTrip(
      id: params.id,
      tripId: params.tripId,
      description: params.description,
    );
  }
}

class UpdateDayTripParams extends Equatable {
  final String id;
  final String tripId;
  final String? description;

  const UpdateDayTripParams({
    required this.id,
    required this.tripId,
    required this.description,
  });

  @override
  List<Object?> get props => [id, tripId, description];
}
