// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_places/data/datasources/google_places_data_source.dart'
    as _i5;
import 'package:google_places/data/repositories/google_places_repository_impl.dart'
    as _i7;
import 'package:google_places/di/di.dart' as _i11;
import 'package:google_places/domain/repositories/google_places_repository.dart'
    as _i6;
import 'package:google_places/domain/usecases/fetch_place_details.dart' as _i8;
import 'package:google_places/domain/usecases/fetch_suggestions.dart' as _i9;
import 'package:google_places/presentation/cubit/google_places_cubit.dart'
    as _i10;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final network = _$Network();
    gh.lazySingleton<_i3.Dio>(() => network.client);
    gh.lazySingleton<_i4.InternetConnection>(() => network.internetConnection);
    gh.lazySingleton<_i5.GooglePlacesDataSource>(
        () => _i5.GooglePlacesDataSourceImpl(
              gh<_i3.Dio>(),
              gh<_i4.InternetConnection>(),
            ));
    gh.lazySingleton<_i6.GooglePlacesRepository>(
        () => _i7.GooglePlacesRepositoryImpl(gh<_i5.GooglePlacesDataSource>()));
    gh.lazySingleton<_i8.FetchPlaceDetails>(
        () => _i8.FetchPlaceDetails(gh<_i6.GooglePlacesRepository>()));
    gh.lazySingleton<_i9.FetchSuggestions>(
        () => _i9.FetchSuggestions(gh<_i6.GooglePlacesRepository>()));
    gh.factory<_i10.GooglePlacesCubit>(() => _i10.GooglePlacesCubit(
          fetchSuggestions: gh<_i9.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i8.FetchPlaceDetails>(),
        ));
    return this;
  }
}

class _$Network extends _i11.Network {}
