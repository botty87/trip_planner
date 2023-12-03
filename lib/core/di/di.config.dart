// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:dio/dio.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i6;
import 'package:flutter_bloc/flutter_bloc.dart' as _i24;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i8;
import 'package:logger/logger.dart' as _i9;

import '../../features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i28;
import '../../features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i30;
import '../../features/day_trips/domain/entities/day_trip.dart' as _i58;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i29;
import '../../features/day_trips/domain/usecases/create_day_trip.dart' as _i55;
import '../../features/day_trips/domain/usecases/delete_day_trip.dart' as _i31;
import '../../features/day_trips/domain/usecases/listen_day_trips.dart' as _i38;
import '../../features/day_trips/domain/usecases/update_day_trip.dart' as _i49;
import '../../features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i50;
import '../../features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i51;
import '../../features/day_trips/presentation/cubit/day_trip/cubit/day_trip_cubit.dart'
    as _i56;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i63;
import '../../features/google_places/data/datasources/google_places_data_source.dart'
    as _i35;
import '../../features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i37;
import '../../features/google_places/domain/repositories/google_places_repository.dart'
    as _i36;
import '../../features/google_places/domain/usecases/fetch_place_details.dart'
    as _i59;
import '../../features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i60;
import '../../features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i61;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i10;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i12;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i11;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i27;
import '../../features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i33;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i39;
import '../../features/trip_stops/domain/usecases/trip_stop_done.dart' as _i48;
import '../../features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i16;
import '../../features/trip_stops/domain/usecases/update_trip_stop.dart'
    as _i18;
import '../../features/trip_stops/domain/usecases/update_trip_stop_note.dart'
    as _i19;
import '../../features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i20;
import '../../features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart'
    as _i44;
import '../../features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart'
    as _i66;
import '../../features/trips/data/datasources/trips_data_source.dart' as _i13;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i15;
import '../../features/trips/domain/entities/trip.dart' as _i57;
import '../../features/trips/domain/repositories/trips_repository.dart' as _i14;
import '../../features/trips/domain/usecases/create_trip.dart' as _i26;
import '../../features/trips/domain/usecases/delete_trip.dart' as _i32;
import '../../features/trips/domain/usecases/listen_trips.dart' as _i40;
import '../../features/trips/domain/usecases/update_trip.dart' as _i17;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i64;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart' as _i65;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart' as _i67;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i21;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i23;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i22;
import '../../features/user_account/domain/usecases/delete_user.dart' as _i34;
import '../../features/user_account/domain/usecases/listen_user.dart' as _i41;
import '../../features/user_account/domain/usecases/login_user.dart' as _i42;
import '../../features/user_account/domain/usecases/logout_user.dart' as _i43;
import '../../features/user_account/domain/usecases/reauthenticate_user.dart'
    as _i45;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i46;
import '../../features/user_account/domain/usecases/register_user.dart' as _i47;
import '../../features/user_account/domain/usecases/update_user_details.dart'
    as _i52;
import '../../features/user_account/presentation/cubit/account_page/account_cubit.dart'
    as _i54;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i62;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i53;
import '../bloc_observer.dart' as _i25;
import '../routes/app_router.dart' as _i3;
import 'di.dart' as _i68;

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
    gh.lazySingleton<_i6.FirebaseCrashlytics>(
        () => firebaseModule.firebaseCrashlytics);
    gh.lazySingleton<_i7.FirebaseFirestore>(
        () => firebaseModule.firebaseFirestore);
    gh.lazySingleton<_i8.InternetConnection>(() => network.internetConnection);
    gh.lazySingleton<_i9.Logger>(() => registerModule.logger);
    gh.lazySingleton<_i10.TripStopsDataSource>(
        () => _i10.TripStopsDataSourceImpl(gh<_i7.FirebaseFirestore>()));
    gh.lazySingleton<_i11.TripStopsRepository>(
        () => _i12.TripStopsRepositoryImpl(gh<_i10.TripStopsDataSource>()));
    gh.lazySingleton<_i13.TripsDataSource>(
        () => _i13.TripsDataSourceImpl(gh<_i7.FirebaseFirestore>()));
    gh.lazySingleton<_i14.TripsRepository>(() =>
        _i15.TripsRepositoryImpl(tripsDataSource: gh<_i13.TripsDataSource>()));
    gh.lazySingleton<_i16.UpdateTravelTime>(
        () => _i16.UpdateTravelTime(gh<_i11.TripStopsRepository>()));
    gh.lazySingleton<_i17.UpdateTrip>(
        () => _i17.UpdateTrip(gh<_i14.TripsRepository>()));
    gh.lazySingleton<_i18.UpdateTripStop>(
        () => _i18.UpdateTripStop(gh<_i11.TripStopsRepository>()));
    gh.lazySingleton<_i19.UpdateTripStopNote>(
        () => _i19.UpdateTripStopNote(gh<_i11.TripStopsRepository>()));
    gh.lazySingleton<_i20.UpdateTripStopsIndexes>(
        () => _i20.UpdateTripStopsIndexes(gh<_i11.TripStopsRepository>()));
    gh.lazySingleton<_i21.UserDataSource>(() => _i21.UserDataSourceImpl(
          gh<_i5.FirebaseAuth>(),
          gh<_i7.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i22.UserRepository>(
        () => _i23.UserRepositoryImpl(gh<_i21.UserDataSource>()));
    gh.lazySingleton<_i24.BlocObserver>(
        () => _i25.SimpleBlocObserver(logger: gh<_i9.Logger>()));
    gh.lazySingleton<_i26.CreateTrip>(
        () => _i26.CreateTrip(gh<_i14.TripsRepository>()));
    gh.lazySingleton<_i27.CreateTripStop>(
        () => _i27.CreateTripStop(gh<_i11.TripStopsRepository>()));
    gh.lazySingleton<_i28.DayTripsDataSource>(
        () => _i28.DayTripsDataSourceImpl(gh<_i7.FirebaseFirestore>()));
    gh.lazySingleton<_i29.DayTripsRepository>(
        () => _i30.DayTripsRepositoryImpl(gh<_i28.DayTripsDataSource>()));
    gh.lazySingleton<_i31.DeleteDayTrip>(
        () => _i31.DeleteDayTrip(gh<_i29.DayTripsRepository>()));
    gh.lazySingleton<_i32.DeleteTrip>(
        () => _i32.DeleteTrip(gh<_i14.TripsRepository>()));
    gh.lazySingleton<_i33.DeleteTripStop>(
        () => _i33.DeleteTripStop(gh<_i11.TripStopsRepository>()));
    gh.lazySingleton<_i34.DeleteUser>(() => _i34.DeleteUser(
          gh<_i22.UserRepository>(),
          gh<_i14.TripsRepository>(),
          gh<_i8.InternetConnection>(),
        ));
    gh.lazySingleton<_i35.GooglePlacesDataSource>(
        () => _i35.GooglePlacesDataSourceImpl(
              gh<_i4.Dio>(),
              gh<_i8.InternetConnection>(),
            ));
    gh.lazySingleton<_i36.GooglePlacesRepository>(() =>
        _i37.GooglePlacesRepositoryImpl(gh<_i35.GooglePlacesDataSource>()));
    gh.lazySingleton<_i38.ListenDayTrips>(
        () => _i38.ListenDayTrips(gh<_i29.DayTripsRepository>()));
    gh.lazySingleton<_i39.ListenTripStops>(
        () => _i39.ListenTripStops(gh<_i11.TripStopsRepository>()));
    gh.lazySingleton<_i40.ListenTrips>(
        () => _i40.ListenTrips(gh<_i14.TripsRepository>()));
    gh.lazySingleton<_i41.ListenUser>(
        () => _i41.ListenUser(gh<_i22.UserRepository>()));
    gh.lazySingleton<_i42.LoginUser>(
        () => _i42.LoginUser(gh<_i22.UserRepository>()));
    gh.lazySingleton<_i43.LogoutUser>(
        () => _i43.LogoutUser(gh<_i22.UserRepository>()));
    gh.factoryParam<_i44.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i44.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i27.CreateTripStop>(),
        ));
    gh.lazySingleton<_i45.ReauthenticateUser>(
        () => _i45.ReauthenticateUser(gh<_i22.UserRepository>()));
    gh.lazySingleton<_i46.RecoverPassword>(
        () => _i46.RecoverPassword(gh<_i22.UserRepository>()));
    gh.lazySingleton<_i47.RegisterUser>(
        () => _i47.RegisterUser(gh<_i22.UserRepository>()));
    gh.lazySingleton<_i48.TripStopDone>(
        () => _i48.TripStopDone(gh<_i11.TripStopsRepository>()));
    gh.lazySingleton<_i49.UpdateDayTrip>(
        () => _i49.UpdateDayTrip(gh<_i29.DayTripsRepository>()));
    gh.lazySingleton<_i50.UpdateDayTripStartTime>(
        () => _i50.UpdateDayTripStartTime(gh<_i29.DayTripsRepository>()));
    gh.lazySingleton<_i51.UpdateDayTripsIndexes>(
        () => _i51.UpdateDayTripsIndexes(gh<_i29.DayTripsRepository>()));
    gh.lazySingleton<_i52.UpdateUserDetails>(
        () => _i52.UpdateUserDetails(gh<_i22.UserRepository>()));
    gh.lazySingleton<_i53.UserCubit>(
        () => _i53.UserCubit(listenUserState: gh<_i41.ListenUser>()));
    gh.factoryParam<_i54.AccountCubit, dynamic, dynamic>((
      user,
      _,
    ) =>
        _i54.AccountCubit(
          user: user,
          logoutUser: gh<_i43.LogoutUser>(),
          reauthenticateUser: gh<_i45.ReauthenticateUser>(),
          updateUserDetails: gh<_i52.UpdateUserDetails>(),
          deleteUser: gh<_i34.DeleteUser>(),
        ));
    gh.lazySingleton<_i55.CreateDayTrip>(
        () => _i55.CreateDayTrip(gh<_i29.DayTripsRepository>()));
    gh.factoryParam<_i56.DayTripCubit, _i57.Trip, _i58.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i56.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i49.UpdateDayTrip>(),
          deleteDayTrip: gh<_i31.DeleteDayTrip>(),
          listenTripStops: gh<_i39.ListenTripStops>(),
          updateDayTripStartTime: gh<_i50.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i20.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i16.UpdateTravelTime>(),
          tripStopDone: gh<_i48.TripStopDone>(),
          crashlytics: gh<_i6.FirebaseCrashlytics>(),
        ));
    gh.lazySingleton<_i59.FetchPlaceDetails>(
        () => _i59.FetchPlaceDetails(gh<_i36.GooglePlacesRepository>()));
    gh.lazySingleton<_i60.FetchSuggestions>(
        () => _i60.FetchSuggestions(gh<_i36.GooglePlacesRepository>()));
    gh.factory<_i61.GooglePlacesCubit>(() => _i61.GooglePlacesCubit(
          fetchSuggestions: gh<_i60.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i59.FetchPlaceDetails>(),
        ));
    gh.factory<_i62.LoginSignupCubit>(() => _i62.LoginSignupCubit(
          registerUser: gh<_i47.RegisterUser>(),
          loginUser: gh<_i42.LoginUser>(),
          recoverPassword: gh<_i46.RecoverPassword>(),
        ));
    gh.factoryParam<_i63.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i63.NewDayTripCubit(
          createDayTrip: gh<_i55.CreateDayTrip>(),
          tripId: tripId,
        ));
    gh.factory<_i64.NewTripCubit>(() => _i64.NewTripCubit(
          gh<_i53.UserCubit>(),
          gh<_i26.CreateTrip>(),
        ));
    gh.factoryParam<_i65.TripCubit, _i57.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i65.TripCubit(
          trip: trip,
          saveTrip: gh<_i17.UpdateTrip>(),
          deleteTrip: gh<_i32.DeleteTrip>(),
          listenDayTrips: gh<_i38.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i51.UpdateDayTripsIndexes>(),
          crashlytics: gh<_i6.FirebaseCrashlytics>(),
        ));
    gh.factoryParam<_i66.TripStopCubit, _i66.TripStopCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i66.TripStopCubit(
          params: params,
          tripStopDone: gh<_i48.TripStopDone>(),
          updateTripStopNote: gh<_i19.UpdateTripStopNote>(),
          deleteTripStop: gh<_i33.DeleteTripStop>(),
          updateTripStop: gh<_i18.UpdateTripStop>(),
        ));
    gh.factory<_i67.TripsCubit>(() => _i67.TripsCubit(
          gh<_i40.ListenTrips>(),
          gh<_i53.UserCubit>(),
          gh<_i6.FirebaseCrashlytics>(),
        ));
    return this;
  }
}

class _$Network extends _i68.Network {}

class _$FirebaseModule extends _i68.FirebaseModule {}

class _$RegisterModule extends _i68.RegisterModule {}
