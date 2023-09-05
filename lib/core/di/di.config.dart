// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:flutter_bloc/flutter_bloc.dart' as _i24;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i9;
import 'package:logger/logger.dart' as _i11;
import 'package:trip_planner/core/bloc_observer.dart' as _i25;
import 'package:trip_planner/core/di/di.dart' as _i51;
import 'package:trip_planner/core/routes/app_router.dart' as _i3;
import 'package:trip_planner/features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i4;
import 'package:trip_planner/features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i6;
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart'
    as _i31;
import 'package:trip_planner/features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i5;
import 'package:trip_planner/features/day_trips/domain/usecases/create_day_trip.dart'
    as _i26;
import 'package:trip_planner/features/day_trips/domain/usecases/delete_day_trip.dart'
    as _i7;
import 'package:trip_planner/features/day_trips/domain/usecases/listen_day_trips.dart'
    as _i10;
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trip.dart'
    as _i18;
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i19;
import 'package:trip_planner/features/day_trips/presentation/cubit/day_trip/cubit/day_trip_cubit.dart'
    as _i29;
import 'package:trip_planner/features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i39;
import 'package:trip_planner/features/google_places/data/datasources/google_places_data_source.dart'
    as _i33;
import 'package:trip_planner/features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i35;
import 'package:trip_planner/features/google_places/domain/repositories/google_places_repository.dart'
    as _i34;
import 'package:trip_planner/features/google_places/domain/usecases/fetch_place_details.dart'
    as _i45;
import 'package:trip_planner/features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i46;
import 'package:trip_planner/features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i47;
import 'package:trip_planner/features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i12;
import 'package:trip_planner/features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i14;
import 'package:trip_planner/features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i13;
import 'package:trip_planner/features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i28;
import 'package:trip_planner/features/trip_stops/presentation/cubit/cubit/new_trip_stop_cubit.dart'
    as _i40;
import 'package:trip_planner/features/trips/data/datasources/trips_data_source.dart'
    as _i15;
import 'package:trip_planner/features/trips/data/repositories/trips_repository_impl.dart'
    as _i17;
import 'package:trip_planner/features/trips/domain/entities/trip.dart' as _i30;
import 'package:trip_planner/features/trips/domain/repositories/trips_repository.dart'
    as _i16;
import 'package:trip_planner/features/trips/domain/usecases/create_trip.dart'
    as _i27;
import 'package:trip_planner/features/trips/domain/usecases/delete_trip.dart'
    as _i32;
import 'package:trip_planner/features/trips/domain/usecases/listen_trips.dart'
    as _i36;
import 'package:trip_planner/features/trips/domain/usecases/update_trip.dart'
    as _i20;
import 'package:trip_planner/features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i49;
import 'package:trip_planner/features/trips/presentation/cubit/trip/trip_cubit.dart'
    as _i43;
import 'package:trip_planner/features/trips/presentation/cubit/trips/trips_cubit.dart'
    as _i50;
import 'package:trip_planner/features/user_account/data/datasources/user_data_source.dart'
    as _i21;
import 'package:trip_planner/features/user_account/data/repositories/user_repository_impl.dart'
    as _i23;
import 'package:trip_planner/features/user_account/domain/repositories/user_repository.dart'
    as _i22;
import 'package:trip_planner/features/user_account/domain/usecases/listen_user.dart'
    as _i37;
import 'package:trip_planner/features/user_account/domain/usecases/login_user.dart'
    as _i38;
import 'package:trip_planner/features/user_account/domain/usecases/recover_password.dart'
    as _i41;
import 'package:trip_planner/features/user_account/domain/usecases/register_user.dart'
    as _i42;
import 'package:trip_planner/features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i48;
import 'package:trip_planner/features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i44;

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
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.lazySingleton<_i4.DayTripsDataSource>(
        () => _i4.DayTripsDataSourceImpl());
    gh.lazySingleton<_i5.DayTripsRepository>(
        () => _i6.DayTripsRepositoryImpl(gh<_i4.DayTripsDataSource>()));
    gh.lazySingleton<_i7.DeleteDayTrip>(
        () => _i7.DeleteDayTrip(gh<_i5.DayTripsRepository>()));
    gh.lazySingleton<_i8.Dio>(() => network.client);
    gh.lazySingleton<_i9.InternetConnection>(() => network.internetConnection);
    gh.lazySingleton<_i10.ListenDayTrips>(
        () => _i10.ListenDayTrips(gh<_i5.DayTripsRepository>()));
    gh.lazySingleton<_i11.Logger>(() => registerModule.logger);
    gh.lazySingleton<_i12.TripStopsDataSource>(
        () => _i12.TripStopsDataSourceImpl());
    gh.lazySingleton<_i13.TripStopsRepository>(
        () => _i14.TripStopsRepositoryImpl(gh<_i12.TripStopsDataSource>()));
    gh.lazySingleton<_i15.TripsDataSource>(() => _i15.TripsDataSourceImpl());
    gh.lazySingleton<_i16.TripsRepository>(() =>
        _i17.TripsRepositoryImpl(tripsDataSource: gh<_i15.TripsDataSource>()));
    gh.lazySingleton<_i18.UpdateDayTrip>(
        () => _i18.UpdateDayTrip(gh<_i5.DayTripsRepository>()));
    gh.lazySingleton<_i19.UpdateDayTripsIndexes>(
        () => _i19.UpdateDayTripsIndexes(gh<_i5.DayTripsRepository>()));
    gh.lazySingleton<_i20.UpdateTrip>(
        () => _i20.UpdateTrip(gh<_i16.TripsRepository>()));
    gh.lazySingleton<_i21.UserDataSource>(() => _i21.UserDataSourceImpl());
    gh.lazySingleton<_i22.UserRepository>(
        () => _i23.UserRepositoryImpl(gh<_i21.UserDataSource>()));
    gh.lazySingleton<_i24.BlocObserver>(
        () => _i25.SimpleBlocObserver(logger: gh<_i11.Logger>()));
    gh.lazySingleton<_i26.CreateDayTrip>(
        () => _i26.CreateDayTrip(gh<_i5.DayTripsRepository>()));
    gh.lazySingleton<_i27.CreateTrip>(
        () => _i27.CreateTrip(gh<_i16.TripsRepository>()));
    gh.lazySingleton<_i28.CreateTripStop>(
        () => _i28.CreateTripStop(gh<_i13.TripStopsRepository>()));
    gh.factoryParam<_i29.DayTripCubit, _i30.Trip, _i31.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i29.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i18.UpdateDayTrip>(),
          deleteDayTrip: gh<_i7.DeleteDayTrip>(),
        ));
    gh.lazySingleton<_i32.DeleteTrip>(
        () => _i32.DeleteTrip(gh<_i16.TripsRepository>()));
    gh.lazySingleton<_i33.GooglePlacesDataSource>(
        () => _i33.GooglePlacesDataSourceImpl(
              gh<_i8.Dio>(),
              gh<_i9.InternetConnection>(),
            ));
    gh.lazySingleton<_i34.GooglePlacesRepository>(() =>
        _i35.GooglePlacesRepositoryImpl(gh<_i33.GooglePlacesDataSource>()));
    gh.lazySingleton<_i36.ListenTrips>(
        () => _i36.ListenTrips(gh<_i16.TripsRepository>()));
    gh.lazySingleton<_i37.ListenUser>(
        () => _i37.ListenUser(gh<_i22.UserRepository>()));
    gh.lazySingleton<_i38.LoginUser>(
        () => _i38.LoginUser(gh<_i22.UserRepository>()));
    gh.factoryParam<_i39.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i39.NewDayTripCubit(
          createDayTrip: gh<_i26.CreateDayTrip>(),
          tripId: tripId,
        ));
    gh.factoryParam<_i40.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i40.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i28.CreateTripStop>(),
        ));
    gh.lazySingleton<_i41.RecoverPassword>(
        () => _i41.RecoverPassword(gh<_i22.UserRepository>()));
    gh.lazySingleton<_i42.RegisterUser>(
        () => _i42.RegisterUser(gh<_i22.UserRepository>()));
    gh.factoryParam<_i43.TripCubit, _i30.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i43.TripCubit(
          trip: trip,
          saveTrip: gh<_i20.UpdateTrip>(),
          deleteTrip: gh<_i32.DeleteTrip>(),
          listenDayTrips: gh<_i10.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i19.UpdateDayTripsIndexes>(),
        ));
    gh.lazySingleton<_i44.UserCubit>(
        () => _i44.UserCubit(listenUserState: gh<_i37.ListenUser>()));
    gh.lazySingleton<_i45.FetchPlaceDetails>(
        () => _i45.FetchPlaceDetails(gh<_i34.GooglePlacesRepository>()));
    gh.lazySingleton<_i46.FetchSuggestions>(
        () => _i46.FetchSuggestions(gh<_i34.GooglePlacesRepository>()));
    gh.factory<_i47.GooglePlacesCubit>(() => _i47.GooglePlacesCubit(
          fetchSuggestions: gh<_i46.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i45.FetchPlaceDetails>(),
        ));
    gh.factory<_i48.LoginSignupCubit>(() => _i48.LoginSignupCubit(
          registerUser: gh<_i42.RegisterUser>(),
          loginUser: gh<_i38.LoginUser>(),
          recoverPassword: gh<_i41.RecoverPassword>(),
        ));
    gh.factory<_i49.NewTripCubit>(() => _i49.NewTripCubit(
          gh<_i44.UserCubit>(),
          gh<_i27.CreateTrip>(),
        ));
    gh.factory<_i50.TripsCubit>(() => _i50.TripsCubit(
          gh<_i36.ListenTrips>(),
          gh<_i44.UserCubit>(),
        ));
    return this;
  }
}

class _$Network extends _i51.Network {}

class _$RegisterModule extends _i51.RegisterModule {}
