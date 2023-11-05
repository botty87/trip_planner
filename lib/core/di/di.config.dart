// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:flutter_bloc/flutter_bloc.dart' as _i29;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i9;
import 'package:logger/logger.dart' as _i11;

import '../../features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i4;
import '../../features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i6;
import '../../features/day_trips/domain/entities/day_trip.dart' as _i54;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i5;
import '../../features/day_trips/domain/usecases/create_day_trip.dart' as _i31;
import '../../features/day_trips/domain/usecases/delete_day_trip.dart' as _i7;
import '../../features/day_trips/domain/usecases/listen_day_trips.dart' as _i10;
import '../../features/day_trips/domain/usecases/update_day_trip.dart' as _i18;
import '../../features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i19;
import '../../features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i20;
import '../../features/day_trips/presentation/cubit/day_trip/cubit/day_trip_cubit.dart'
    as _i53;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i44;
import '../../features/google_places/data/datasources/google_places_data_source.dart'
    as _i36;
import '../../features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i38;
import '../../features/google_places/domain/repositories/google_places_repository.dart'
    as _i37;
import '../../features/google_places/domain/usecases/fetch_place_details.dart'
    as _i55;
import '../../features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i56;
import '../../features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i57;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i12;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i14;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i13;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i33;
import '../../features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i35;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i39;
import '../../features/trip_stops/domain/usecases/trip_stop_done.dart' as _i50;
import '../../features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i21;
import '../../features/trip_stops/domain/usecases/update_trip_stop.dart'
    as _i23;
import '../../features/trip_stops/domain/usecases/update_trip_stop_note.dart'
    as _i24;
import '../../features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i25;
import '../../features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart'
    as _i45;
import '../../features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart'
    as _i60;
import '../../features/trips/data/datasources/trips_data_source.dart' as _i15;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i17;
import '../../features/trips/domain/entities/trip.dart' as _i49;
import '../../features/trips/domain/repositories/trips_repository.dart' as _i16;
import '../../features/trips/domain/usecases/create_trip.dart' as _i32;
import '../../features/trips/domain/usecases/delete_trip.dart' as _i34;
import '../../features/trips/domain/usecases/listen_trips.dart' as _i40;
import '../../features/trips/domain/usecases/update_trip.dart' as _i22;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i59;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart' as _i48;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart' as _i61;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i26;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i28;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i27;
import '../../features/user_account/domain/usecases/listen_user.dart' as _i41;
import '../../features/user_account/domain/usecases/login_user.dart' as _i42;
import '../../features/user_account/domain/usecases/logout_user.dart' as _i43;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i46;
import '../../features/user_account/domain/usecases/register_user.dart' as _i47;
import '../../features/user_account/presentation/cubit/account_page/cubit/account_cubit.dart'
    as _i52;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i58;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i51;
import '../bloc_observer.dart' as _i30;
import '../routes/app_router.dart' as _i3;
import 'di.dart' as _i62;

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
    gh.lazySingleton<_i23.UpdateTripStop>(
        () => _i23.UpdateTripStop(gh<_i13.TripStopsRepository>()));
    gh.lazySingleton<_i24.UpdateTripStopNote>(
        () => _i24.UpdateTripStopNote(gh<_i13.TripStopsRepository>()));
    gh.lazySingleton<_i25.UpdateTripStopsIndexes>(
        () => _i25.UpdateTripStopsIndexes(gh<_i13.TripStopsRepository>()));
    gh.lazySingleton<_i26.UserDataSource>(() => _i26.UserDataSourceImpl());
    gh.lazySingleton<_i27.UserRepository>(
        () => _i28.UserRepositoryImpl(gh<_i26.UserDataSource>()));
    gh.lazySingleton<_i29.BlocObserver>(
        () => _i30.SimpleBlocObserver(logger: gh<_i11.Logger>()));
    gh.lazySingleton<_i31.CreateDayTrip>(
        () => _i31.CreateDayTrip(gh<_i5.DayTripsRepository>()));
    gh.lazySingleton<_i32.CreateTrip>(
        () => _i32.CreateTrip(gh<_i16.TripsRepository>()));
    gh.lazySingleton<_i33.CreateTripStop>(
        () => _i33.CreateTripStop(gh<_i13.TripStopsRepository>()));
    gh.lazySingleton<_i34.DeleteTrip>(
        () => _i34.DeleteTrip(gh<_i16.TripsRepository>()));
    gh.lazySingleton<_i35.DeleteTripStop>(
        () => _i35.DeleteTripStop(gh<_i13.TripStopsRepository>()));
    gh.lazySingleton<_i36.GooglePlacesDataSource>(
        () => _i36.GooglePlacesDataSourceImpl(
              gh<_i8.Dio>(),
              gh<_i9.InternetConnection>(),
            ));
    gh.lazySingleton<_i37.GooglePlacesRepository>(() =>
        _i38.GooglePlacesRepositoryImpl(gh<_i36.GooglePlacesDataSource>()));
    gh.lazySingleton<_i39.ListenTripStops>(
        () => _i39.ListenTripStops(gh<_i13.TripStopsRepository>()));
    gh.lazySingleton<_i40.ListenTrips>(
        () => _i40.ListenTrips(gh<_i16.TripsRepository>()));
    gh.lazySingleton<_i41.ListenUser>(
        () => _i41.ListenUser(gh<_i27.UserRepository>()));
    gh.lazySingleton<_i42.LoginUser>(
        () => _i42.LoginUser(gh<_i27.UserRepository>()));
    gh.lazySingleton<_i43.LogoutUser>(
        () => _i43.LogoutUser(gh<_i27.UserRepository>()));
    gh.factoryParam<_i44.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i44.NewDayTripCubit(
          createDayTrip: gh<_i31.CreateDayTrip>(),
          tripId: tripId,
        ));
    gh.factoryParam<_i45.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i45.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i33.CreateTripStop>(),
        ));
    gh.lazySingleton<_i46.RecoverPassword>(
        () => _i46.RecoverPassword(gh<_i27.UserRepository>()));
    gh.lazySingleton<_i47.RegisterUser>(
        () => _i47.RegisterUser(gh<_i27.UserRepository>()));
    gh.factoryParam<_i48.TripCubit, _i49.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i48.TripCubit(
          trip: trip,
          saveTrip: gh<_i22.UpdateTrip>(),
          deleteTrip: gh<_i34.DeleteTrip>(),
          listenDayTrips: gh<_i10.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i20.UpdateDayTripsIndexes>(),
        ));
    gh.lazySingleton<_i50.TripStopDone>(
        () => _i50.TripStopDone(gh<_i13.TripStopsRepository>()));
    gh.lazySingleton<_i51.UserCubit>(
        () => _i51.UserCubit(listenUserState: gh<_i41.ListenUser>()));
    gh.factoryParam<_i52.AccountCubit, dynamic, dynamic>((
      user,
      _,
    ) =>
        _i52.AccountCubit(
          user: user,
          logoutUser: gh<_i43.LogoutUser>(),
        ));
    gh.factoryParam<_i53.DayTripCubit, _i49.Trip, _i54.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i53.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i18.UpdateDayTrip>(),
          deleteDayTrip: gh<_i7.DeleteDayTrip>(),
          listenTripStops: gh<_i39.ListenTripStops>(),
          updateDayTripStartTime: gh<_i19.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i25.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i21.UpdateTravelTime>(),
        ));
    gh.lazySingleton<_i55.FetchPlaceDetails>(
        () => _i55.FetchPlaceDetails(gh<_i37.GooglePlacesRepository>()));
    gh.lazySingleton<_i56.FetchSuggestions>(
        () => _i56.FetchSuggestions(gh<_i37.GooglePlacesRepository>()));
    gh.factory<_i57.GooglePlacesCubit>(() => _i57.GooglePlacesCubit(
          fetchSuggestions: gh<_i56.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i55.FetchPlaceDetails>(),
        ));
    gh.factory<_i58.LoginSignupCubit>(() => _i58.LoginSignupCubit(
          registerUser: gh<_i47.RegisterUser>(),
          loginUser: gh<_i42.LoginUser>(),
          recoverPassword: gh<_i46.RecoverPassword>(),
        ));
    gh.factory<_i59.NewTripCubit>(() => _i59.NewTripCubit(
          gh<_i51.UserCubit>(),
          gh<_i32.CreateTrip>(),
        ));
    gh.factoryParam<_i60.TripStopCubit, _i60.TripStopCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i60.TripStopCubit(
          params: params,
          tripStopDone: gh<_i50.TripStopDone>(),
          updateTripStopNote: gh<_i24.UpdateTripStopNote>(),
          deleteTripStop: gh<_i35.DeleteTripStop>(),
          updateTripStop: gh<_i23.UpdateTripStop>(),
        ));
    gh.factory<_i61.TripsCubit>(() => _i61.TripsCubit(
          gh<_i40.ListenTrips>(),
          gh<_i51.UserCubit>(),
        ));
    return this;
  }
}

class _$Network extends _i62.Network {}

class _$RegisterModule extends _i62.RegisterModule {}
