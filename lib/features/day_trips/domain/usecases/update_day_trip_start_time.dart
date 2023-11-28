import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/day_trips_failure.dart';
import '../repositories/day_trips_repository.dart';

@lazySingleton
class UpdateDayTripStartTime implements UseCase<void, UpdateDayTripStartTimeParams> {
  final DayTripsRepository repository;

  UpdateDayTripStartTime(this.repository);

  @override
  Future<Either<DayTripsFailure, void>> call(UpdateDayTripStartTimeParams params) async {
    return await repository.updateDayTripStartTime(
      id: params.id,
      tripId: params.tripId,
      startTime: params.startTime,
    );
  }
}

class UpdateDayTripStartTimeParams {
  final String id;
  final String tripId;
  final TimeOfDay startTime;

  UpdateDayTripStartTimeParams({
    required this.id,
    required this.tripId,
    required this.startTime,
  });
}
