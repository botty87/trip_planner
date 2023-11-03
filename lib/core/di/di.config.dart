// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:flutter_bloc/flutter_bloc.dart' as _i28;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i9;
import 'package:logger/logger.dart' as _i11;

import '../../features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i4;
import '../../features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i6;
import '../../features/day_trips/domain/entities/day_trip.dart' as _i51;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i5;
import '../../features/day_trips/domain/usecases/create_day_trip.dart' as _i30;
import '../../features/day_trips/domain/usecases/delete_day_trip.dart' as _i7;
import '../../features/day_trips/domain/usecases/listen_day_trips.dart' as _i10;
import '../../features/day_trips/domain/usecases/update_day_trip.dart' as _i18;
import '../../features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i19;
import '../../features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i20;
import '../../features/day_trips/presentation/cubit/day_trip/cubit/day_trip_cubit.dart'
    as _i50;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i42;
import '../../features/google_places/data/datasources/google_places_data_source.dart'
    as _i35;
import '../../features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i37;
import '../../features/google_places/domain/repositories/google_places_repository.dart'
    as _i36;
import '../../features/google_places/domain/usecases/fetch_place_details.dart'
    as _i52;
import '../../features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i53;
import '../../features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i54;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i12;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i14;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i13;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i32;
import '../../features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i34;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i38;
import '../../features/trip_stops/domain/usecases/trip_stop_done.dart' as _i48;
import '../../features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i21;
import '../../features/trip_stops/domain/usecases/update_trip_stop_note.dart'
    as _i23;
import '../../features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i24;
import '../../features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart'
    as _i43;
import '../../features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart'
    as _i57;
import '../../features/trips/data/datasources/trips_data_source.dart' as _i15;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i17;
import '../../features/trips/domain/entities/trip.dart' as _i47;
import '../../features/trips/domain/repositories/trips_repository.dart' as _i16;
import '../../features/trips/domain/usecases/create_trip.dart' as _i31;
import '../../features/trips/domain/usecases/delete_trip.dart' as _i33;
import '../../features/trips/domain/usecases/listen_trips.dart' as _i39;
import '../../features/trips/domain/usecases/update_trip.dart' as _i22;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i56;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart' as _i46;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart' as _i58;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i25;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i27;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i26;
import '../../features/user_account/domain/usecases/listen_user.dart' as _i40;
import '../../features/user_account/domain/usecases/login_user.dart' as _i41;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i44;
import '../../features/user_account/domain/usecases/register_user.dart' as _i45;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i55;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i49;
import '../bloc_observer.dart' as _i29;
import '../routes/app_router.dart' as _i3;
import 'di.dart' as _i59;

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
    gh.lazySingleton<_i19.UpdateDayTripStartTime>(
        () => _i19.UpdateDayTripStartTime(gh<_i5.DayTripsRepository>()));
    gh.lazySingleton<_i20.UpdateDayTripsIndexes>(
        () => _i20.UpdateDayTripsIndexes(gh<_i5.DayTripsRepository>()));
    gh.lazySingleton<_i21.UpdateTravelTime>(
        () => _i21.UpdateTravelTime(gh<_i13.TripStopsRepository>()));
    gh.lazySingleton<_i22.UpdateTrip>(
        () => _i22.UpdateTrip(gh<_i16.TripsRepository>()));
    gh.lazySingleton<_i23.UpdateTripStopNote>(
        () => _i23.UpdateTripStopNote(gh<_i13.TripStopsRepository>()));
    gh.lazySingleton<_i24.UpdateTripStopsIndexes>(
        () => _i24.UpdateTripStopsIndexes(gh<_i13.TripStopsRepository>()));
    gh.lazySingleton<_i25.UserDataSource>(() => _i25.UserDataSourceImpl());
    gh.lazySingleton<_i26.UserRepository>(
        () => _i27.UserRepositoryImpl(gh<_i25.UserDataSource>()));
    gh.lazySingleton<_i28.BlocObserver>(
        () => _i29.SimpleBlocObserver(logger: gh<_i11.Logger>()));
    gh.lazySingleton<_i30.CreateDayTrip>(
        () => _i30.CreateDayTrip(gh<_i5.DayTripsRepository>()));
    gh.lazySingleton<_i31.CreateTrip>(
        () => _i31.CreateTrip(gh<_i16.TripsRepository>()));
    gh.lazySingleton<_i32.CreateTripStop>(
        () => _i32.CreateTripStop(gh<_i13.TripStopsRepository>()));
    gh.lazySingleton<_i33.DeleteTrip>(
        () => _i33.DeleteTrip(gh<_i16.TripsRepository>()));
    gh.lazySingleton<_i34.DeleteTripStop>(
        () => _i34.DeleteTripStop(gh<_i13.TripStopsRepository>()));
    gh.lazySingleton<_i35.GooglePlacesDataSource>(
        () => _i35.GooglePlacesDataSourceImpl(
              gh<_i8.Dio>(),
              gh<_i9.InternetConnection>(),
            ));
    gh.lazySingleton<_i36.GooglePlacesRepository>(() =>
        _i37.GooglePlacesRepositoryImpl(gh<_i35.GooglePlacesDataSource>()));
    gh.lazySingleton<_i38.ListenTripStops>(
        () => _i38.ListenTripStops(gh<_i13.TripStopsRepository>()));
    gh.lazySingleton<_i39.ListenTrips>(
        () => _i39.ListenTrips(gh<_i16.TripsRepository>()));
    gh.lazySingleton<_i40.ListenUser>(
        () => _i40.ListenUser(gh<_i26.UserRepository>()));
    gh.lazySingleton<_i41.LoginUser>(
        () => _i41.LoginUser(gh<_i26.UserRepository>()));
    gh.factoryParam<_i42.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i42.NewDayTripCubit(
          createDayTrip: gh<_i30.CreateDayTrip>(),
          tripId: tripId,
        ));
    gh.factoryParam<_i43.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i43.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i32.CreateTripStop>(),
        ));
    gh.lazySingleton<_i44.RecoverPassword>(
        () => _i44.RecoverPassword(gh<_i26.UserRepository>()));
    gh.lazySingleton<_i45.RegisterUser>(
        () => _i45.RegisterUser(gh<_i26.UserRepository>()));
    gh.factoryParam<_i46.TripCubit, _i47.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i46.TripCubit(
          trip: trip,
          saveTrip: gh<_i22.UpdateTrip>(),
          deleteTrip: gh<_i33.DeleteTrip>(),
          listenDayTrips: gh<_i10.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i20.UpdateDayTripsIndexes>(),
        ));
    gh.lazySingleton<_i48.TripStopDone>(
        () => _i48.TripStopDone(gh<_i13.TripStopsRepository>()));
    gh.lazySingleton<_i49.UserCubit>(
        () => _i49.UserCubit(listenUserState: gh<_i40.ListenUser>()));
    gh.factoryParam<_i50.DayTripCubit, _i47.Trip, _i51.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i50.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i18.UpdateDayTrip>(),
          deleteDayTrip: gh<_i7.DeleteDayTrip>(),
          listenTripStops: gh<_i38.ListenTripStops>(),
          updateDayTripStartTime: gh<_i19.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i24.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i21.UpdateTravelTime>(),
        ));
    gh.lazySingleton<_i52.FetchPlaceDetails>(
        () => _i52.FetchPlaceDetails(gh<_i36.GooglePlacesRepository>()));
    gh.lazySingleton<_i53.FetchSuggestions>(
        () => _i53.FetchSuggestions(gh<_i36.GooglePlacesRepository>()));
    gh.factory<_i54.GooglePlacesCubit>(() => _i54.GooglePlacesCubit(
          fetchSuggestions: gh<_i53.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i52.FetchPlaceDetails>(),
        ));
    gh.factory<_i55.LoginSignupCubit>(() => _i55.LoginSignupCubit(
          registerUser: gh<_i45.RegisterUser>(),
          loginUser: gh<_i41.LoginUser>(),
          recoverPassword: gh<_i44.RecoverPassword>(),
        ));
    gh.factory<_i56.NewTripCubit>(() => _i56.NewTripCubit(
          gh<_i49.UserCubit>(),
          gh<_i31.CreateTrip>(),
        ));
    gh.factoryParam<_i57.TripStopCubit, _i57.TripStopCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i57.TripStopCubit(
          params: params,
          tripStopDone: gh<_i48.TripStopDone>(),
          updateTripStopNote: gh<_i23.UpdateTripStopNote>(),
          deleteTripStop: gh<_i34.DeleteTripStop>(),
        ));
    gh.factory<_i58.TripsCubit>(() => _i58.TripsCubit(
          gh<_i39.ListenTrips>(),
          gh<_i49.UserCubit>(),
        ));
    return this;
  }
}

class _$Network extends _i59.Network {}

class _$RegisterModule extends _i59.RegisterModule {}
