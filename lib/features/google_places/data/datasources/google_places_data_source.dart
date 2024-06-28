import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import '../../../../core/utilities/extensions.dart';
import '../../../day_trips/domain/entities/trip_stops_directions.dart';
import '../../../trip_stops/domain/entities/trip_stop.dart';
import '../../domain/entities/place_details.dart';
import '../../domain/entities/suggestion.dart';
import '../../errors/google_places_exception.dart';

abstract class GooglePlacesDataSource {
  Future<List<Suggestion>> fetchSuggestions(
      {required String query, required String lang, required String token});

  Future<PlaceDetails> fetchPlaceDetails({required String placeId, required String token});

  Future<List<TripStopsDirections>> fetchTripStopsDirections(
      List<TripStop> tripStops, TravelMode travelMode);
}

@LazySingleton(as: GooglePlacesDataSource)
class GooglePlacesDataSourceImpl implements GooglePlacesDataSource {
  final Dio client;
  final InternetConnection internetConnection;
  CancelToken? _cancelToken;

  final PolylinePoints polylinePoints;

  final String key;
  final String proxyURL;

  GooglePlacesDataSourceImpl(
    this.client,
    this.internetConnection,
    this.polylinePoints,
    @Named('googlePlacesKey') this.key,
    @Named('proxyUrl') this.proxyURL,
  );

  @override
  Future<List<Suggestion>> fetchSuggestions(
      {required String query, required String lang, required String token}) async {
    _cancelToken?.cancel();

    final hasConnection = await internetConnection.hasInternetAccess;
    if (!hasConnection) {
      throw const GooglePlacesException.noInternetConnection();
    }

    String request =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&language=$lang&key=$key&sessiontoken=$token';

    if (kIsWeb) {
      request = proxyURL + request;
    }

    /// Add the custom header to the options
    final options = kIsWeb ? Options(headers: {"x-requested-with": "XMLHttpRequest"}) : null;

    final Response response;
    _cancelToken = CancelToken();
    try {
      response = await client.get(request, cancelToken: _cancelToken, options: options);
    } on DioException catch (e) {
      if (CancelToken.isCancel(e)) {
        _cancelToken = null;
        throw const GooglePlacesException.requestCancelled();
      }
      throw const GooglePlacesException.noInternetConnection();
    }

    _cancelToken = null;
    final data = response.data;
    switch (data['status']) {
      case 'OK':
        final List<dynamic> predictions = data['predictions'];
        return predictions.map((prediction) => Suggestion.fromJson(prediction)).toList();
      case 'REQUEST_DENIED':
        throw GooglePlacesException.requestDenied(message: data['error_message']);
      default:
        throw GooglePlacesException.unknownError(message: data['error_message']);
    }
  }

  @override
  Future<PlaceDetails> fetchPlaceDetails({required String placeId, required String token}) async {
    final hasConnection = await internetConnection.hasInternetAccess;
    if (!hasConnection) {
      throw const GooglePlacesException.noInternetConnection();
    }

    String request =
        "https://maps.googleapis.com/maps/api/place/details/json?placeid=$placeId&key=$key&sessiontoken=$token";

    if (kIsWeb) {
      request = proxyURL + request;
    }

    /// Add the custom header to the options
    final options = kIsWeb ? Options(headers: {"x-requested-with": "XMLHttpRequest"}) : null;

    final Response response;
    _cancelToken = CancelToken();
    try {
      response = await client.get(request, cancelToken: _cancelToken, options: options);
    } on DioException catch (e) {
      if (CancelToken.isCancel(e)) {
        _cancelToken = null;
        throw const GooglePlacesException.requestCancelled();
      }
      throw const GooglePlacesException.noInternetConnection();
    }

    _cancelToken = null;
    final data = response.data;
    switch (data['status']) {
      case 'OK':
        final location = data['result']['geometry']['location'];
        return PlaceDetails(
          placeId: placeId,
          location: LatLng(location['lat'], location['lng']),
        );
      case 'REQUEST_DENIED':
        throw GooglePlacesException.requestDenied(message: data['error_message']);

      default:
        throw GooglePlacesException.unknownError(message: data['error_message']);
    }
  }

  @override
  Future<List<TripStopsDirections>> fetchTripStopsDirections(
      List<TripStop> tripStops, TravelMode travelMode) async {
    assert(tripStops.length >= 2);

    final hasConnection = await internetConnection.hasInternetAccess;
    if (!hasConnection) {
      throw const GooglePlacesException.noInternetConnection();
    }

    final List<TripStopsDirections> directions = [];

    for (int i = 0; i < tripStops.length - 1; i++) {
      final PolylineResult result;
      try {
        result = await polylinePoints.getRouteBetweenCoordinates(
          request: PolylineRequest(
            origin: PointLatLng(tripStops[i].location.latitude, tripStops[i].location.longitude),
            destination: PointLatLng(
                tripStops[i + 1].location.latitude, tripStops[i + 1].location.longitude),
            mode: travelMode,
            proxy: kIsWeb ? Uri.parse(proxyURL) : null,
          ),
          googleApiKey: key,
        );
      } catch (e) {
        String errorMessage = e.toString();
        if (errorMessage.contains('ZERO_RESULTS')) {
          errorMessage = 'ZERO_RESULTS';
          directions.add(TripStopsDirections(
            originId: tripStops[i].id,
            destinationId: tripStops[i + 1].id,
            errorMessage: errorMessage,
          ));
          continue;
        } else {
          throw GooglePlacesException.unknownError(message: errorMessage);
        }
      }

      if (result.status == 'OK') {
        directions.add(TripStopsDirections(
          originId: tripStops[i].id,
          destinationId: tripStops[i + 1].id,
          points: result.points.map((point) => point.toLatLng()).toList(),
        ));
      } else {
        directions.add(TripStopsDirections(
          originId: tripStops[i].id,
          destinationId: tripStops[i + 1].id,
          errorMessage: result.errorMessage,
        ));
      }
    }

    return directions;
  }
}
