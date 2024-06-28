import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/trips_failure.dart';
import '../repositories/trips_repository.dart';

@lazySingleton
class AddUserForShare implements UseCase<void, AddUserForShareParams> {
  final TripsRepository repository;

  AddUserForShare(this.repository);

  @override
  Future<Either<ShareTripFailure, void>> call(AddUserForShareParams params) async {
    return await repository.addUserForShare(params.tripId, params.email);
  }
}

class AddUserForShareParams extends Equatable {
  final String tripId;
  final String email;

  const AddUserForShareParams({
    required this.tripId,
    required this.email,
  });

  @override
  List<Object?> get props => [tripId, email];
}
