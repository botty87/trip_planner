import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../errors/trip_stops_failure.dart';
import '../repositories/trip_stops_repository.dart';

@lazySingleton
class UpdateTripStopNote implements UseCase<void, UpdateTripStopNoteParams> {
  final TripStopsRepository _tripStopsRepository;

  UpdateTripStopNote(this._tripStopsRepository);

  @override
  Future<Either<TripStopsFailure, void>> call(UpdateTripStopNoteParams params) {
    return _tripStopsRepository.updateTripStopNote(
      tripId: params.tripId,
      dayTripId: params.dayTripId,
      tripStopId: params.tripStopId,
      note: params.note,
    );
  }
}

class UpdateTripStopNoteParams {
  final String tripId;
  final String dayTripId;
  final String tripStopId;
  final String? note;

  const UpdateTripStopNoteParams({
    required this.tripId,
    required this.dayTripId,
    required this.tripStopId,
    required this.note,
  });
}
