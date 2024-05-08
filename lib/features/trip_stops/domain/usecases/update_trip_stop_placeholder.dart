import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/trip_stops_failure.dart';
import '../entities/trip_stop.dart';
import '../repositories/trip_stops_repository.dart';

@lazySingleton
class UpdateTripStopPlaceholder implements UseCase<void, UpdateTripStopPlaceholderParams> {
  final TripStopsRepository _tripStopsRepository;

  UpdateTripStopPlaceholder(this._tripStopsRepository);

  @override
  Future<Either<TripStopsFailure, void>> call(UpdateTripStopPlaceholderParams params) =>
      _tripStopsRepository.updateTripStopPlaceholder(
        tripId: params.tripId,
        dayTripId: params.dayTripId,
        tripStopId: params.tripStopId,
        placeholder: params.placeholder,
      );
}

class UpdateTripStopPlaceholderParams extends Equatable {
  final String tripId;
  final String dayTripId;
  final String tripStopId;
  final TripStopPlaceholder? placeholder;

  const UpdateTripStopPlaceholderParams({
    required this.tripId,
    required this.dayTripId,
    required this.tripStopId,
    required this.placeholder,
  });

  @override
  List<Object?> get props => [tripId, dayTripId, tripStopId, placeholder];
}
