import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/trips_failure.dart';
import '../repositories/trips_repository.dart';

@lazySingleton
class UpdateTrip implements UseCase<void, UpdateTripParams> {
  final TripsRepository repository;

  UpdateTrip(this.repository);

  @override
  Future<Either<TripsFailure, void>> call(UpdateTripParams params) async {
    return await repository.updateTrip(
      params.id,
      params.name,
      params.description,
      params.startDate,
      params.isPublic,
      params.languageCode,
    );
  }
}

class UpdateTripParams extends Equatable {
  final String id;
  final String name;
  final String? description;
  final DateTime startDate;
  final bool isPublic;
  final String languageCode;

  const UpdateTripParams({
    required this.id,
    required this.name,
    required this.description,
    required this.startDate,
    required this.isPublic,
    required this.languageCode,
  });

  @override
  List<Object?> get props => [id, name, description, startDate, isPublic];
}
