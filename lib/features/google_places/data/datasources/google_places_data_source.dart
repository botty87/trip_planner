import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/core/constants.dart';
import 'package:trip_planner/features/google_places/errors/google_places_exception.dart';

import '../../domain/entities/suggestion.dart';

abstract class GooglePlacesDataSource {
  Future<List<Suggestion>> fetchSuggestions({required String query, required String token});
}

@LazySingleton(as: GooglePlacesDataSource)
class GooglePlacesDataSourceImpl implements GooglePlacesDataSource {
  final Dio client;
  final Connectivity connectivity;
  CancelToken? _cancelToken;

  static const key = GOOGLE_PLACES_KEY;

  GooglePlacesDataSourceImpl(this.client, this.connectivity);

  @override
  Future<List<Suggestion>> fetchSuggestions({required String query, required String token}) async {
    _cancelToken?.cancel();

    if (connectivity.checkConnectivity() == ConnectivityResult.none) {
      throw GooglePlacesException.noInternetConnection();
    }

    final lang = Platform.localeName.split('_')[0];

    final request =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&language=$lang&key=$key&sessiontoken=$token';

    final response;
    _cancelToken = CancelToken();
    try {
      response = await client.get(request, cancelToken: _cancelToken);
    } on DioException catch (e) {
      if (CancelToken.isCancel(e)) {
        _cancelToken = null;
        throw GooglePlacesException.requestCancelled();
      }
      throw GooglePlacesException.noInternetConnection();
    }

    _cancelToken = null;
    final data = response.data;
    switch (data['status']) {
      case 'OK':
        final List<dynamic> predictions = data['predictions'];
        return predictions.map((prediction) => Suggestion.fromJson(prediction)).toList();
      case 'REQUEST_DENIED':
        throw GooglePlacesException.requestDenied(message: data['error_message']);
    }

    return [];
  }
}
