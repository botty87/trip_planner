// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:dio/dio.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:flutter_bloc/flutter_bloc.dart' as _i23;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i7;
import 'package:logger/logger.dart' as _i8;

import '../../features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i27;
import '../../features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i29;
import '../../features/day_trips/domain/entities/day_trip.dart' as _i56;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i28;
import '../../features/day_trips/domain/usecases/create_day_trip.dart' as _i53;
import '../../features/day_trips/domain/usecases/delete_day_trip.dart' as _i30;
import '../../features/day_trips/domain/usecases/listen_day_trips.dart' as _i36;
import '../../features/day_trips/domain/usecases/update_day_trip.dart' as _i47;
import '../../features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i48;
import '../../features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i49;
import '../../features/day_trips/presentation/cubit/day_trip/cubit/day_trip_cubit.dart'
    as _i54;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i61;
import '../../features/google_places/data/datasources/google_places_data_source.dart'
    as _i33;
import '../../features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i35;
import '../../features/google_places/domain/repositories/google_places_repository.dart'
    as _i34;
import '../../features/google_places/domain/usecases/fetch_place_details.dart'
    as _i57;
import '../../features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i58;
import '../../features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i59;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i9;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i11;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i10;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i26;
import '../../features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i32;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i37;
import '../../features/trip_stops/domain/usecases/trip_stop_done.dart' as _i46;
import '../../features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i15;
import '../../features/trip_stops/domain/usecases/update_trip_stop.dart'
    as _i17;
import '../../features/trip_stops/domain/usecases/update_trip_stop_note.dart'
    as _i18;
import '../../features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i19;
import '../../features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart'
    as _i42;
import '../../features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart'
    as _i64;
import '../../features/trips/data/datasources/trips_data_source.dart' as _i12;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i14;
import '../../features/trips/domain/entities/trip.dart' as _i55;
import '../../features/trips/domain/repositories/trips_repository.dart' as _i13;
import '../../features/trips/domain/usecases/create_trip.dart' as _i25;
import '../../features/trips/domain/usecases/delete_trip.dart' as _i31;
import '../../features/trips/domain/usecases/listen_trips.dart' as _i38;
import '../../features/trips/domain/usecases/update_trip.dart' as _i16;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i62;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart' as _i63;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart' as _i65;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i20;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i22;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i21;
import '../../features/user_account/domain/usecases/listen_user.dart' as _i39;
import '../../features/user_account/domain/usecases/login_user.dart' as _i40;
import '../../features/user_account/domain/usecases/logout_user.dart' as _i41;
import '../../features/user_account/domain/usecases/reauthenticate_user.dart'
    as _i43;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i44;
import '../../features/user_account/domain/usecases/register_user.dart' as _i45;
import '../../features/user_account/domain/usecases/update_user_details.dart'
    as _i50;
import '../../features/user_account/presentation/cubit/account_page/account_cubit.dart'
    as _i52;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i60;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i51;
import '../bloc_observer.dart' as _i24;
import '../routes/app_router.dart' as _i3;
import 'di.dart' as _i66;

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
    final firebaseModule = _$FirebaseModule();
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.lazySingleton<_i4.Dio>(() => network.client);
    gh.lazySingleton<_i5.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.lazySingleton<_i6.FirebaseFirestore>(
        () => firebaseModule.firebaseFirestore);
    gh.lazySingleton<_i7.InternetConnection>(() => network.internetConnection);
    gh.lazySingleton<_i8.Logger>(() => registerModule.logger);
    gh.lazySingleton<_i9.TripStopsDataSource>(
        () => _i9.TripStopsDataSourceImpl(gh<_i6.FirebaseFirestore>()));
    gh.lazySingleton<_i10.TripStopsRepository>(
        () => _i11.TripStopsRepositoryImpl(gh<_i9.TripStopsDataSource>()));
    gh.lazySingleton<_i12.TripsDataSource>(
        () => _i12.TripsDataSourceImpl(gh<_i6.FirebaseFirestore>()));
    gh.lazySingleton<_i13.TripsRepository>(() =>
        _i14.TripsRepositoryImpl(tripsDataSource: gh<_i12.TripsDataSource>()));
    gh.lazySingleton<_i15.UpdateTravelTime>(
        () => _i15.UpdateTravelTime(gh<_i10.TripStopsRepository>()));
    gh.lazySingleton<_i16.UpdateTrip>(
        () => _i16.UpdateTrip(gh<_i13.TripsRepository>()));
    gh.lazySingleton<_i17.UpdateTripStop>(
        () => _i17.UpdateTripStop(gh<_i10.TripStopsRepository>()));
    gh.lazySingleton<_i18.UpdateTripStopNote>(
        () => _i18.UpdateTripStopNote(gh<_i10.TripStopsRepository>()));
    gh.lazySingleton<_i19.UpdateTripStopsIndexes>(
        () => _i19.UpdateTripStopsIndexes(gh<_i10.TripStopsRepository>()));
    gh.lazySingleton<_i20.UserDataSource>(() => _i20.UserDataSourceImpl(
          gh<_i5.FirebaseAuth>(),
          gh<_i6.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i21.UserRepository>(
        () => _i22.UserRepositoryImpl(gh<_i20.UserDataSource>()));
    gh.lazySingleton<_i23.BlocObserver>(
        () => _i24.SimpleBlocObserver(logger: gh<_i8.Logger>()));
    gh.lazySingleton<_i25.CreateTrip>(
        () => _i25.CreateTrip(gh<_i13.TripsRepository>()));
    gh.lazySingleton<_i26.CreateTripStop>(
        () => _i26.CreateTripStop(gh<_i10.TripStopsRepository>()));
    gh.lazySingleton<_i27.DayTripsDataSource>(
        () => _i27.DayTripsDataSourceImpl(gh<_i6.FirebaseFirestore>()));
    gh.lazySingleton<_i28.DayTripsRepository>(
        () => _i29.DayTripsRepositoryImpl(gh<_i27.DayTripsDataSource>()));
    gh.lazySingleton<_i30.DeleteDayTrip>(
        () => _i30.DeleteDayTrip(gh<_i28.DayTripsRepository>()));
    gh.lazySingleton<_i31.DeleteTrip>(
        () => _i31.DeleteTrip(gh<_i13.TripsRepository>()));
    gh.lazySingleton<_i32.DeleteTripStop>(
        () => _i32.DeleteTripStop(gh<_i10.TripStopsRepository>()));
    gh.lazySingleton<_i33.GooglePlacesDataSource>(
        () => _i33.GooglePlacesDataSourceImpl(
              gh<_i4.Dio>(),
              gh<_i7.InternetConnection>(),
            ));
    gh.lazySingleton<_i34.GooglePlacesRepository>(() =>
        _i35.GooglePlacesRepositoryImpl(gh<_i33.GooglePlacesDataSource>()));
    gh.lazySingleton<_i36.ListenDayTrips>(
        () => _i36.ListenDayTrips(gh<_i28.DayTripsRepository>()));
    gh.lazySingleton<_i37.ListenTripStops>(
        () => _i37.ListenTripStops(gh<_i10.TripStopsRepository>()));
    gh.lazySingleton<_i38.ListenTrips>(
        () => _i38.ListenTrips(gh<_i13.TripsRepository>()));
    gh.lazySingleton<_i39.ListenUser>(
        () => _i39.ListenUser(gh<_i21.UserRepository>()));
    gh.lazySingleton<_i40.LoginUser>(
        () => _i40.LoginUser(gh<_i21.UserRepository>()));
    gh.lazySingleton<_i41.LogoutUser>(
        () => _i41.LogoutUser(gh<_i21.UserRepository>()));
    gh.factoryParam<_i42.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i42.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i26.CreateTripStop>(),
        ));
    gh.lazySingleton<_i43.ReauthenticateUser>(
        () => _i43.ReauthenticateUser(gh<_i21.UserRepository>()));
    gh.lazySingleton<_i44.RecoverPassword>(
        () => _i44.RecoverPassword(gh<_i21.UserRepository>()));
    gh.lazySingleton<_i45.RegisterUser>(
        () => _i45.RegisterUser(gh<_i21.UserRepository>()));
    gh.lazySingleton<_i46.TripStopDone>(
        () => _i46.TripStopDone(gh<_i10.TripStopsRepository>()));
    gh.lazySingleton<_i47.UpdateDayTrip>(
        () => _i47.UpdateDayTrip(gh<_i28.DayTripsRepository>()));
    gh.lazySingleton<_i48.UpdateDayTripStartTime>(
        () => _i48.UpdateDayTripStartTime(gh<_i28.DayTripsRepository>()));
    gh.lazySingleton<_i49.UpdateDayTripsIndexes>(
        () => _i49.UpdateDayTripsIndexes(gh<_i28.DayTripsRepository>()));
    gh.lazySingleton<_i50.UpdateUserDetails>(
        () => _i50.UpdateUserDetails(gh<_i21.UserRepository>()));
    gh.lazySingleton<_i51.UserCubit>(
        () => _i51.UserCubit(listenUserState: gh<_i39.ListenUser>()));
    gh.factoryParam<_i52.AccountCubit, dynamic, dynamic>((
      user,
      _,
    ) =>
        _i52.AccountCubit(
          user: user,
          logoutUser: gh<_i41.LogoutUser>(),
          reauthenticateUser: gh<_i43.ReauthenticateUser>(),
          updateUserDetails: gh<_i50.UpdateUserDetails>(),
        ));
    gh.lazySingleton<_i53.CreateDayTrip>(
        () => _i53.CreateDayTrip(gh<_i28.DayTripsRepository>()));
    gh.factoryParam<_i54.DayTripCubit, _i55.Trip, _i56.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i54.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i47.UpdateDayTrip>(),
          deleteDayTrip: gh<_i30.DeleteDayTrip>(),
          listenTripStops: gh<_i37.ListenTripStops>(),
          updateDayTripStartTime: gh<_i48.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i19.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i15.UpdateTravelTime>(),
        ));
    gh.lazySingleton<_i57.FetchPlaceDetails>(
        () => _i57.FetchPlaceDetails(gh<_i34.GooglePlacesRepository>()));
    gh.lazySingleton<_i58.FetchSuggestions>(
        () => _i58.FetchSuggestions(gh<_i34.GooglePlacesRepository>()));
    gh.factory<_i59.GooglePlacesCubit>(() => _i59.GooglePlacesCubit(
          fetchSuggestions: gh<_i58.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i57.FetchPlaceDetails>(),
        ));
    gh.factory<_i60.LoginSignupCubit>(() => _i60.LoginSignupCubit(
          registerUser: gh<_i45.RegisterUser>(),
          loginUser: gh<_i40.LoginUser>(),
          recoverPassword: gh<_i44.RecoverPassword>(),
        ));
    gh.factoryParam<_i61.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i61.NewDayTripCubit(
          createDayTrip: gh<_i53.CreateDayTrip>(),
          tripId: tripId,
        ));
    gh.factory<_i62.NewTripCubit>(() => _i62.NewTripCubit(
          gh<_i51.UserCubit>(),
          gh<_i25.CreateTrip>(),
        ));
    gh.factoryParam<_i63.TripCubit, _i55.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i63.TripCubit(
          trip: trip,
          saveTrip: gh<_i16.UpdateTrip>(),
          deleteTrip: gh<_i31.DeleteTrip>(),
          listenDayTrips: gh<_i36.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i49.UpdateDayTripsIndexes>(),
        ));
    gh.factoryParam<_i64.TripStopCubit, _i64.TripStopCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i64.TripStopCubit(
          params: params,
          tripStopDone: gh<_i46.TripStopDone>(),
          updateTripStopNote: gh<_i18.UpdateTripStopNote>(),
          deleteTripStop: gh<_i32.DeleteTripStop>(),
          updateTripStop: gh<_i17.UpdateTripStop>(),
        ));
    gh.factory<_i65.TripsCubit>(() => _i65.TripsCubit(
          gh<_i38.ListenTrips>(),
          gh<_i51.UserCubit>(),
        ));
    return this;
  }
}

class _$Network extends _i66.Network {}

class _$FirebaseModule extends _i66.FirebaseModule {}

class _$RegisterModule extends _i66.RegisterModule {}
