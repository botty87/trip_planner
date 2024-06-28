import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/trips_failure.dart';
import '../entities/trip.dart';
import '../repositories/trips_repository.dart';

@lazySingleton
class CreateFromExistingTrip implements UseCase<void, CreateFromExistingTripParams> {
  final TripsRepository repository;

  CreateFromExistingTrip(this.repository);

  @override
  Future<Either<TripsFailure, void>> call(CreateFromExistingTripParams params) async {
    return await repository.createFromExistingTrip(
      newTrip: Trip(
        name: params.tripName,
        description: params.tripDescription,
        userId: params.userId,
        createdAt: params.createdAt,
        startDate: params.startDate,
        isPublic: params.isPublic,
        languageCode: params.languageCode,
      ),
      existingTrip: params.existingTrip,
      showDirections: params.showDirections,
      useDifferentDirectionsColors: params.useDifferentDirectionsColors,
    );
  }
}

class CreateFromExistingTripParams extends Equatable {
  final String tripName;
  final String? tripDescription;
  final String userId;
  final DateTime createdAt = DateTime.now();
  final DateTime startDate;
  final bool isPublic;
  final Trip existingTrip;
  final bool showDirections;
  final bool useDifferentDirectionsColors;
  final String languageCode;

  CreateFromExistingTripParams(
      {required this.tripName,
      this.tripDescription,
      required this.userId,
      required this.startDate,
      required this.isPublic,
      required this.existingTrip,
      required this.showDirections,
      required this.useDifferentDirectionsColors,
      required this.languageCode});

  @override
  List<Object?> get props => [
        tripName,
        tripDescription,
        userId,
        createdAt,
        startDate,
        isPublic,
        existingTrip,
        showDirections,
        useDifferentDirectionsColors,
        languageCode,
      ];
}
