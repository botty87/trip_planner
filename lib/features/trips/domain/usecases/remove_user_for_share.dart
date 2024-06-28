import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/trips_failure.dart';
import '../repositories/trips_repository.dart';

@lazySingleton
class RemoveUserForShare implements UseCase<void, RemoveUserForShareParams> {
  final TripsRepository repository;

  RemoveUserForShare(this.repository);

  @override
  Future<Either<ShareTripFailure, void>> call(RemoveUserForShareParams params) async {
    return await repository.removeUserForShare(params.tripId, params.userId);
  }
}

class RemoveUserForShareParams extends Equatable {
  final String tripId;
  final String userId;

  const RemoveUserForShareParams({
    required this.tripId,
    required this.userId,
  });

  @override
  List<Object?> get props => [tripId, userId];
}
