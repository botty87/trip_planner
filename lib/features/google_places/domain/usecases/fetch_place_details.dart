import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/usecases/usecase.dart';
import '../../errors/google_places_failure.dart';
import '../entities/place_details.dart';
import '../repositories/google_places_repository.dart';

@lazySingleton
class FetchPlaceDetails implements UseCase<void, FetchPlaceDetailsParams> {
  final GooglePlacesRepository repository;

  FetchPlaceDetails(this.repository);

  @override
  Future<Either<GooglePlacesFailure, PlaceDetails>> call(FetchPlaceDetailsParams params) async {
    return await repository.fetchPlaceDetails(
      placeId: params.placeId,
      token: params.token,
    );
  }
}

class FetchPlaceDetailsParams {
  final String placeId;
  final String token;

  const FetchPlaceDetailsParams({
    required this.placeId,
    required this.token,
  });
}
