import 'dart:io';

import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import '../../core/constants.dart';
import '../../domain/entities/place_details.dart';
import '../../domain/entities/suggestion.dart';
import '../../errors/google_places_exception.dart';

abstract class GooglePlacesDataSource {
  Future<List<Suggestion>> fetchSuggestions({required String query, required String token});

  Future<PlaceDetails> fetchPlaceDetails({required String placeId, required String token});
}

@LazySingleton(as: GooglePlacesDataSource)
class GooglePlacesDataSourceImpl implements GooglePlacesDataSource {
  final Dio client;
  final InternetConnection internetConnection;
  CancelToken? _cancelToken;

  static const key = googlePlacesKey;

  GooglePlacesDataSourceImpl(this.client, this.internetConnection);

  @override
  Future<List<Suggestion>> fetchSuggestions({required String query, required String token}) async {
    _cancelToken?.cancel();

    final hasConnection = await internetConnection.hasInternetAccess;
    if (!hasConnection) {
      throw const GooglePlacesException.noInternetConnection();
    }

    final lang = Platform.localeName.split('_')[0];

    final request =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&language=$lang&key=$key&sessiontoken=$token';

    final Response response;
    _cancelToken = CancelToken();
    try {
      response = await client.get(request, cancelToken: _cancelToken);
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

    var request =
        "https://maps.googleapis.com/maps/api/place/details/json?placeid=$placeId&key=$key&sessiontoken=$token";

    final Response response;
    _cancelToken = CancelToken();
    try {
      response = await client.get(request, cancelToken: _cancelToken);
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
}
