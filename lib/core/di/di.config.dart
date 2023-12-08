// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i8;
import 'package:dio/dio.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i6;
import 'package:firebase_database/firebase_database.dart' as _i7;
import 'package:flutter_bloc/flutter_bloc.dart' as _i33;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i9;
import 'package:logger/logger.dart' as _i10;

import '../../features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i38;
import '../../features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i40;
import '../../features/day_trips/domain/entities/day_trip.dart' as _i71;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i39;
import '../../features/day_trips/domain/usecases/create_day_trip.dart' as _i68;
import '../../features/day_trips/domain/usecases/delete_day_trip.dart' as _i41;
import '../../features/day_trips/domain/usecases/listen_day_trips.dart' as _i51;
import '../../features/day_trips/domain/usecases/update_day_trip.dart' as _i62;
import '../../features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i63;
import '../../features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i64;
import '../../features/day_trips/presentation/cubit/day_trip/cubit/day_trip_cubit.dart'
    as _i69;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i76;
import '../../features/google_places/data/datasources/google_places_data_source.dart'
    as _i45;
import '../../features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i47;
import '../../features/google_places/domain/repositories/google_places_repository.dart'
    as _i46;
import '../../features/google_places/domain/usecases/fetch_place_details.dart'
    as _i72;
import '../../features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i73;
import '../../features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i74;
import '../../features/import_old_trips/data/datasources/old_trips_data_source.dart'
    as _i12;
import '../../features/import_old_trips/data/repositories/old_trips_repository_impl.dart'
    as _i14;
import '../../features/import_old_trips/domain/repositories/old_trips_repository.dart'
    as _i13;
import '../../features/import_old_trips/domain/usecases/import_old_trip.dart'
    as _i48;
import '../../features/import_old_trips/domain/usecases/read_old_trips.dart'
    as _i15;
import '../../features/import_old_trips/presentation/cubit/import_old_trips_cubit.dart'
    as _i49;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i17;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i19;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i18;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i36;
import '../../features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i43;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i52;
import '../../features/trip_stops/domain/usecases/trip_stop_done.dart' as _i61;
import '../../features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i24;
import '../../features/trip_stops/domain/usecases/update_trip_stop.dart'
    as _i26;
import '../../features/trip_stops/domain/usecases/update_trip_stop_note.dart'
    as _i27;
import '../../features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i28;
import '../../features/trip_stops/presentation/cubit/map/cubit/map_cubit.dart'
    as _i11;
import '../../features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart'
    as _i57;
import '../../features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart'
    as _i79;
import '../../features/trips/data/datasources/trips_data_source.dart' as _i21;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i23;
import '../../features/trips/domain/entities/trip.dart' as _i70;
import '../../features/trips/domain/repositories/trips_repository.dart' as _i22;
import '../../features/trips/domain/usecases/create_trip.dart' as _i35;
import '../../features/trips/domain/usecases/delete_trip.dart' as _i42;
import '../../features/trips/domain/usecases/listen_trips.dart' as _i53;
import '../../features/trips/domain/usecases/update_trip.dart' as _i25;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i77;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart' as _i78;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart' as _i80;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i29;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i31;
import '../../features/user_account/domain/entities/user.dart' as _i50;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i30;
import '../../features/user_account/domain/usecases/delete_user.dart' as _i44;
import '../../features/user_account/domain/usecases/listen_user.dart' as _i54;
import '../../features/user_account/domain/usecases/login_user.dart' as _i55;
import '../../features/user_account/domain/usecases/logout_user.dart' as _i56;
import '../../features/user_account/domain/usecases/reauthenticate_user.dart'
    as _i58;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i59;
import '../../features/user_account/domain/usecases/register_user.dart' as _i60;
import '../../features/user_account/domain/usecases/update_user_details.dart'
    as _i65;
import '../../features/user_account/presentation/cubit/account_page/account_cubit.dart'
    as _i67;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i75;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i66;
import '../bloc_observer.dart' as _i34;
import '../db/day_trips_collection_ref.dart' as _i37;
import '../db/trip_stops_collection_ref.dart' as _i16;
import '../db/trips_collection_ref.dart' as _i20;
import '../db/users_collection_ref.dart' as _i32;
import '../routes/app_router.dart' as _i3;
import 'di.dart' as _i81;

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
    gh.lazySingleton<_i7.FirebaseDatabase>(
        () => firebaseModule.firebaseDatabase);
    gh.lazySingleton<_i8.FirebaseFirestore>(
        () => firebaseModule.firebaseFirestore);
    gh.lazySingleton<_i9.InternetConnection>(() => network.internetConnection);
    gh.lazySingleton<_i10.Logger>(() => registerModule.logger);
    gh.factory<_i11.MapCubit>(() => _i11.MapCubit());
    gh.lazySingleton<_i12.OldTripsDataSource>(
        () => _i12.OldTripsDataSourceImpl(gh<_i7.FirebaseDatabase>()));
    gh.lazySingleton<_i13.OldTripsRepository>(
        () => _i14.OldTripsRepositoryImpl(gh<_i12.OldTripsDataSource>()));
    gh.lazySingleton<_i15.ReadOldTrips>(
        () => _i15.ReadOldTrips(gh<_i13.OldTripsRepository>()));
    gh.factoryParam<_i16.TripStopsCollectionRef, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i16.TripStopsCollectionRef(
          gh<_i8.FirebaseFirestore>(),
          tripId,
          dayTripId,
        ));
    gh.lazySingleton<_i17.TripStopsDataSource>(
        () => _i17.TripStopsDataSourceImpl(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i18.TripStopsRepository>(
        () => _i19.TripStopsRepositoryImpl(gh<_i17.TripStopsDataSource>()));
    gh.factory<_i20.TripsCollectionRef>(
        () => _i20.TripsCollectionRef(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i21.TripsDataSource>(
        () => _i21.TripsDataSourceImpl(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i22.TripsRepository>(() =>
        _i23.TripsRepositoryImpl(tripsDataSource: gh<_i21.TripsDataSource>()));
    gh.lazySingleton<_i24.UpdateTravelTime>(
        () => _i24.UpdateTravelTime(gh<_i18.TripStopsRepository>()));
    gh.lazySingleton<_i25.UpdateTrip>(
        () => _i25.UpdateTrip(gh<_i22.TripsRepository>()));
    gh.lazySingleton<_i26.UpdateTripStop>(
        () => _i26.UpdateTripStop(gh<_i18.TripStopsRepository>()));
    gh.lazySingleton<_i27.UpdateTripStopNote>(
        () => _i27.UpdateTripStopNote(gh<_i18.TripStopsRepository>()));
    gh.lazySingleton<_i28.UpdateTripStopsIndexes>(
        () => _i28.UpdateTripStopsIndexes(gh<_i18.TripStopsRepository>()));
    gh.lazySingleton<_i29.UserDataSource>(() => _i29.UserDataSourceImpl(
          gh<_i5.FirebaseAuth>(),
          gh<_i8.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i30.UserRepository>(
        () => _i31.UserRepositoryImpl(gh<_i29.UserDataSource>()));
    gh.factory<_i32.UsersCollectionRef>(
        () => _i32.UsersCollectionRef(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i33.BlocObserver>(
        () => _i34.SimpleBlocObserver(logger: gh<_i10.Logger>()));
    gh.lazySingleton<_i35.CreateTrip>(
        () => _i35.CreateTrip(gh<_i22.TripsRepository>()));
    gh.lazySingleton<_i36.CreateTripStop>(
        () => _i36.CreateTripStop(gh<_i18.TripStopsRepository>()));
    gh.factoryParam<_i37.DayTripsCollectionRef, String, dynamic>((
      tripId,
      _,
    ) =>
        _i37.DayTripsCollectionRef(
          gh<_i8.FirebaseFirestore>(),
          tripId,
        ));
    gh.lazySingleton<_i38.DayTripsDataSource>(
        () => _i38.DayTripsDataSourceImpl(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i39.DayTripsRepository>(
        () => _i40.DayTripsRepositoryImpl(gh<_i38.DayTripsDataSource>()));
    gh.lazySingleton<_i41.DeleteDayTrip>(
        () => _i41.DeleteDayTrip(gh<_i39.DayTripsRepository>()));
    gh.lazySingleton<_i42.DeleteTrip>(
        () => _i42.DeleteTrip(gh<_i22.TripsRepository>()));
    gh.lazySingleton<_i43.DeleteTripStop>(
        () => _i43.DeleteTripStop(gh<_i18.TripStopsRepository>()));
    gh.lazySingleton<_i44.DeleteUser>(() => _i44.DeleteUser(
          gh<_i30.UserRepository>(),
          gh<_i22.TripsRepository>(),
          gh<_i9.InternetConnection>(),
        ));
    gh.lazySingleton<_i45.GooglePlacesDataSource>(
        () => _i45.GooglePlacesDataSourceImpl(
              gh<_i4.Dio>(),
              gh<_i9.InternetConnection>(),
            ));
    gh.lazySingleton<_i46.GooglePlacesRepository>(() =>
        _i47.GooglePlacesRepositoryImpl(gh<_i45.GooglePlacesDataSource>()));
    gh.lazySingleton<_i48.ImportOldTrips>(
        () => _i48.ImportOldTrips(gh<_i13.OldTripsRepository>()));
    gh.factoryParam<_i49.ImportOldTripsCubit, _i50.User, dynamic>((
      user,
      _,
    ) =>
        _i49.ImportOldTripsCubit(
          user: user,
          readOldTrips: gh<_i15.ReadOldTrips>(),
          importOldTrips: gh<_i48.ImportOldTrips>(),
        ));
    gh.lazySingleton<_i51.ListenDayTrips>(
        () => _i51.ListenDayTrips(gh<_i39.DayTripsRepository>()));
    gh.lazySingleton<_i52.ListenTripStops>(
        () => _i52.ListenTripStops(gh<_i18.TripStopsRepository>()));
    gh.lazySingleton<_i53.ListenTrips>(
        () => _i53.ListenTrips(gh<_i22.TripsRepository>()));
    gh.lazySingleton<_i54.ListenUser>(
        () => _i54.ListenUser(gh<_i30.UserRepository>()));
    gh.lazySingleton<_i55.LoginUser>(
        () => _i55.LoginUser(gh<_i30.UserRepository>()));
    gh.lazySingleton<_i56.LogoutUser>(
        () => _i56.LogoutUser(gh<_i30.UserRepository>()));
    gh.factoryParam<_i57.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i57.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i36.CreateTripStop>(),
        ));
    gh.lazySingleton<_i58.ReauthenticateUser>(
        () => _i58.ReauthenticateUser(gh<_i30.UserRepository>()));
    gh.lazySingleton<_i59.RecoverPassword>(
        () => _i59.RecoverPassword(gh<_i30.UserRepository>()));
    gh.lazySingleton<_i60.RegisterUser>(
        () => _i60.RegisterUser(gh<_i30.UserRepository>()));
    gh.lazySingleton<_i61.TripStopDone>(
        () => _i61.TripStopDone(gh<_i18.TripStopsRepository>()));
    gh.lazySingleton<_i62.UpdateDayTrip>(
        () => _i62.UpdateDayTrip(gh<_i39.DayTripsRepository>()));
    gh.lazySingleton<_i63.UpdateDayTripStartTime>(
        () => _i63.UpdateDayTripStartTime(gh<_i39.DayTripsRepository>()));
    gh.lazySingleton<_i64.UpdateDayTripsIndexes>(
        () => _i64.UpdateDayTripsIndexes(gh<_i39.DayTripsRepository>()));
    gh.lazySingleton<_i65.UpdateUserDetails>(
        () => _i65.UpdateUserDetails(gh<_i30.UserRepository>()));
    gh.lazySingleton<_i66.UserCubit>(
        () => _i66.UserCubit(listenUserState: gh<_i54.ListenUser>()));
    gh.factoryParam<_i67.AccountCubit, dynamic, dynamic>((
      user,
      _,
    ) =>
        _i67.AccountCubit(
          user: user,
          logoutUser: gh<_i56.LogoutUser>(),
          reauthenticateUser: gh<_i58.ReauthenticateUser>(),
          updateUserDetails: gh<_i65.UpdateUserDetails>(),
          deleteUser: gh<_i44.DeleteUser>(),
        ));
    gh.lazySingleton<_i68.CreateDayTrip>(
        () => _i68.CreateDayTrip(gh<_i39.DayTripsRepository>()));
    gh.factoryParam<_i69.DayTripCubit, _i70.Trip, _i71.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i69.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i62.UpdateDayTrip>(),
          deleteDayTrip: gh<_i41.DeleteDayTrip>(),
          listenTripStops: gh<_i52.ListenTripStops>(),
          updateDayTripStartTime: gh<_i63.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i28.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i24.UpdateTravelTime>(),
          tripStopDone: gh<_i61.TripStopDone>(),
          crashlytics: gh<_i6.FirebaseCrashlytics>(),
        ));
    gh.lazySingleton<_i72.FetchPlaceDetails>(
        () => _i72.FetchPlaceDetails(gh<_i46.GooglePlacesRepository>()));
    gh.lazySingleton<_i73.FetchSuggestions>(
        () => _i73.FetchSuggestions(gh<_i46.GooglePlacesRepository>()));
    gh.factory<_i74.GooglePlacesCubit>(() => _i74.GooglePlacesCubit(
          fetchSuggestions: gh<_i73.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i72.FetchPlaceDetails>(),
        ));
    gh.factory<_i75.LoginSignupCubit>(() => _i75.LoginSignupCubit(
          registerUser: gh<_i60.RegisterUser>(),
          loginUser: gh<_i55.LoginUser>(),
          recoverPassword: gh<_i59.RecoverPassword>(),
        ));
    gh.factoryParam<_i76.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i76.NewDayTripCubit(
          createDayTrip: gh<_i68.CreateDayTrip>(),
          tripId: tripId,
        ));
    gh.factory<_i77.NewTripCubit>(() => _i77.NewTripCubit(
          gh<_i66.UserCubit>(),
          gh<_i35.CreateTrip>(),
        ));
    gh.factoryParam<_i78.TripCubit, _i70.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i78.TripCubit(
          trip: trip,
          saveTrip: gh<_i25.UpdateTrip>(),
          deleteTrip: gh<_i42.DeleteTrip>(),
          listenDayTrips: gh<_i51.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i64.UpdateDayTripsIndexes>(),
          crashlytics: gh<_i6.FirebaseCrashlytics>(),
        ));
    gh.factoryParam<_i79.TripStopCubit, _i79.TripStopCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i79.TripStopCubit(
          params: params,
          tripStopDone: gh<_i61.TripStopDone>(),
          updateTripStopNote: gh<_i27.UpdateTripStopNote>(),
          deleteTripStop: gh<_i43.DeleteTripStop>(),
          updateTripStop: gh<_i26.UpdateTripStop>(),
        ));
    gh.factory<_i80.TripsCubit>(() => _i80.TripsCubit(
          gh<_i53.ListenTrips>(),
          gh<_i66.UserCubit>(),
          gh<_i6.FirebaseCrashlytics>(),
        ));
    return this;
  }
}

class _$Network extends _i81.Network {}

class _$FirebaseModule extends _i81.FirebaseModule {}

class _$RegisterModule extends _i81.RegisterModule {}
