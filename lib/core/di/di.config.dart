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
import 'package:flutter_bloc/flutter_bloc.dart' as _i32;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i9;
import 'package:logger/logger.dart' as _i10;

import '../../features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i37;
import '../../features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i39;
import '../../features/day_trips/domain/entities/day_trip.dart' as _i70;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i38;
import '../../features/day_trips/domain/usecases/create_day_trip.dart' as _i67;
import '../../features/day_trips/domain/usecases/delete_day_trip.dart' as _i40;
import '../../features/day_trips/domain/usecases/listen_day_trips.dart' as _i50;
import '../../features/day_trips/domain/usecases/update_day_trip.dart' as _i61;
import '../../features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i62;
import '../../features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i63;
import '../../features/day_trips/presentation/cubit/day_trip/cubit/day_trip_cubit.dart'
    as _i68;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i75;
import '../../features/google_places/data/datasources/google_places_data_source.dart'
    as _i44;
import '../../features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i46;
import '../../features/google_places/domain/repositories/google_places_repository.dart'
    as _i45;
import '../../features/google_places/domain/usecases/fetch_place_details.dart'
    as _i71;
import '../../features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i72;
import '../../features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i73;
import '../../features/import_old_trips/data/datasources/old_trips_data_source.dart'
    as _i11;
import '../../features/import_old_trips/data/repositories/old_trips_repository_impl.dart'
    as _i13;
import '../../features/import_old_trips/domain/repositories/old_trips_repository.dart'
    as _i12;
import '../../features/import_old_trips/domain/usecases/import_old_trip.dart'
    as _i47;
import '../../features/import_old_trips/domain/usecases/read_old_trips.dart'
    as _i14;
import '../../features/import_old_trips/presentation/cubit/import_old_trips_cubit.dart'
    as _i48;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i16;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i18;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i17;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i35;
import '../../features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i42;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i51;
import '../../features/trip_stops/domain/usecases/trip_stop_done.dart' as _i60;
import '../../features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i23;
import '../../features/trip_stops/domain/usecases/update_trip_stop.dart'
    as _i25;
import '../../features/trip_stops/domain/usecases/update_trip_stop_note.dart'
    as _i26;
import '../../features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i27;
import '../../features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart'
    as _i56;
import '../../features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart'
    as _i78;
import '../../features/trips/data/datasources/trips_data_source.dart' as _i20;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i22;
import '../../features/trips/domain/entities/trip.dart' as _i69;
import '../../features/trips/domain/repositories/trips_repository.dart' as _i21;
import '../../features/trips/domain/usecases/create_trip.dart' as _i34;
import '../../features/trips/domain/usecases/delete_trip.dart' as _i41;
import '../../features/trips/domain/usecases/listen_trips.dart' as _i52;
import '../../features/trips/domain/usecases/update_trip.dart' as _i24;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i76;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart' as _i77;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart' as _i79;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i28;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i30;
import '../../features/user_account/domain/entities/user.dart' as _i49;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i29;
import '../../features/user_account/domain/usecases/delete_user.dart' as _i43;
import '../../features/user_account/domain/usecases/listen_user.dart' as _i53;
import '../../features/user_account/domain/usecases/login_user.dart' as _i54;
import '../../features/user_account/domain/usecases/logout_user.dart' as _i55;
import '../../features/user_account/domain/usecases/reauthenticate_user.dart'
    as _i57;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i58;
import '../../features/user_account/domain/usecases/register_user.dart' as _i59;
import '../../features/user_account/domain/usecases/update_user_details.dart'
    as _i64;
import '../../features/user_account/presentation/cubit/account_page/account_cubit.dart'
    as _i66;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i74;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i65;
import '../bloc_observer.dart' as _i33;
import '../db/day_trips_collection_ref.dart' as _i36;
import '../db/trip_stops_collection_ref.dart' as _i15;
import '../db/trips_collection_ref.dart' as _i19;
import '../db/users_collection_ref.dart' as _i31;
import '../routes/app_router.dart' as _i3;
import 'di.dart' as _i80;

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
    gh.lazySingleton<_i11.OldTripsDataSource>(
        () => _i11.OldTripsDataSourceImpl(gh<_i7.FirebaseDatabase>()));
    gh.lazySingleton<_i12.OldTripsRepository>(
        () => _i13.OldTripsRepositoryImpl(gh<_i11.OldTripsDataSource>()));
    gh.lazySingleton<_i14.ReadOldTrips>(
        () => _i14.ReadOldTrips(gh<_i12.OldTripsRepository>()));
    gh.factoryParam<_i15.TripStopsCollectionRef, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i15.TripStopsCollectionRef(
          gh<_i8.FirebaseFirestore>(),
          tripId,
          dayTripId,
        ));
    gh.lazySingleton<_i16.TripStopsDataSource>(
        () => _i16.TripStopsDataSourceImpl(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i17.TripStopsRepository>(
        () => _i18.TripStopsRepositoryImpl(gh<_i16.TripStopsDataSource>()));
    gh.factory<_i19.TripsCollectionRef>(
        () => _i19.TripsCollectionRef(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i20.TripsDataSource>(
        () => _i20.TripsDataSourceImpl(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i21.TripsRepository>(() =>
        _i22.TripsRepositoryImpl(tripsDataSource: gh<_i20.TripsDataSource>()));
    gh.lazySingleton<_i23.UpdateTravelTime>(
        () => _i23.UpdateTravelTime(gh<_i17.TripStopsRepository>()));
    gh.lazySingleton<_i24.UpdateTrip>(
        () => _i24.UpdateTrip(gh<_i21.TripsRepository>()));
    gh.lazySingleton<_i25.UpdateTripStop>(
        () => _i25.UpdateTripStop(gh<_i17.TripStopsRepository>()));
    gh.lazySingleton<_i26.UpdateTripStopNote>(
        () => _i26.UpdateTripStopNote(gh<_i17.TripStopsRepository>()));
    gh.lazySingleton<_i27.UpdateTripStopsIndexes>(
        () => _i27.UpdateTripStopsIndexes(gh<_i17.TripStopsRepository>()));
    gh.lazySingleton<_i28.UserDataSource>(() => _i28.UserDataSourceImpl(
          gh<_i5.FirebaseAuth>(),
          gh<_i8.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i29.UserRepository>(
        () => _i30.UserRepositoryImpl(gh<_i28.UserDataSource>()));
    gh.factory<_i31.UsersCollectionRef>(
        () => _i31.UsersCollectionRef(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i32.BlocObserver>(
        () => _i33.SimpleBlocObserver(logger: gh<_i10.Logger>()));
    gh.lazySingleton<_i34.CreateTrip>(
        () => _i34.CreateTrip(gh<_i21.TripsRepository>()));
    gh.lazySingleton<_i35.CreateTripStop>(
        () => _i35.CreateTripStop(gh<_i17.TripStopsRepository>()));
    gh.factoryParam<_i36.DayTripsCollectionRef, String, dynamic>((
      tripId,
      _,
    ) =>
        _i36.DayTripsCollectionRef(
          gh<_i8.FirebaseFirestore>(),
          tripId,
        ));
    gh.lazySingleton<_i37.DayTripsDataSource>(
        () => _i37.DayTripsDataSourceImpl(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i38.DayTripsRepository>(
        () => _i39.DayTripsRepositoryImpl(gh<_i37.DayTripsDataSource>()));
    gh.lazySingleton<_i40.DeleteDayTrip>(
        () => _i40.DeleteDayTrip(gh<_i38.DayTripsRepository>()));
    gh.lazySingleton<_i41.DeleteTrip>(
        () => _i41.DeleteTrip(gh<_i21.TripsRepository>()));
    gh.lazySingleton<_i42.DeleteTripStop>(
        () => _i42.DeleteTripStop(gh<_i17.TripStopsRepository>()));
    gh.lazySingleton<_i43.DeleteUser>(() => _i43.DeleteUser(
          gh<_i29.UserRepository>(),
          gh<_i21.TripsRepository>(),
          gh<_i9.InternetConnection>(),
        ));
    gh.lazySingleton<_i44.GooglePlacesDataSource>(
        () => _i44.GooglePlacesDataSourceImpl(
              gh<_i4.Dio>(),
              gh<_i9.InternetConnection>(),
            ));
    gh.lazySingleton<_i45.GooglePlacesRepository>(() =>
        _i46.GooglePlacesRepositoryImpl(gh<_i44.GooglePlacesDataSource>()));
    gh.lazySingleton<_i47.ImportOldTrips>(
        () => _i47.ImportOldTrips(gh<_i12.OldTripsRepository>()));
    gh.factoryParam<_i48.ImportOldTripsCubit, _i49.User, dynamic>((
      user,
      _,
    ) =>
        _i48.ImportOldTripsCubit(
          user: user,
          readOldTrips: gh<_i14.ReadOldTrips>(),
          importOldTrips: gh<_i47.ImportOldTrips>(),
        ));
    gh.lazySingleton<_i50.ListenDayTrips>(
        () => _i50.ListenDayTrips(gh<_i38.DayTripsRepository>()));
    gh.lazySingleton<_i51.ListenTripStops>(
        () => _i51.ListenTripStops(gh<_i17.TripStopsRepository>()));
    gh.lazySingleton<_i52.ListenTrips>(
        () => _i52.ListenTrips(gh<_i21.TripsRepository>()));
    gh.lazySingleton<_i53.ListenUser>(
        () => _i53.ListenUser(gh<_i29.UserRepository>()));
    gh.lazySingleton<_i54.LoginUser>(
        () => _i54.LoginUser(gh<_i29.UserRepository>()));
    gh.lazySingleton<_i55.LogoutUser>(
        () => _i55.LogoutUser(gh<_i29.UserRepository>()));
    gh.factoryParam<_i56.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i56.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i35.CreateTripStop>(),
        ));
    gh.lazySingleton<_i57.ReauthenticateUser>(
        () => _i57.ReauthenticateUser(gh<_i29.UserRepository>()));
    gh.lazySingleton<_i58.RecoverPassword>(
        () => _i58.RecoverPassword(gh<_i29.UserRepository>()));
    gh.lazySingleton<_i59.RegisterUser>(
        () => _i59.RegisterUser(gh<_i29.UserRepository>()));
    gh.lazySingleton<_i60.TripStopDone>(
        () => _i60.TripStopDone(gh<_i17.TripStopsRepository>()));
    gh.lazySingleton<_i61.UpdateDayTrip>(
        () => _i61.UpdateDayTrip(gh<_i38.DayTripsRepository>()));
    gh.lazySingleton<_i62.UpdateDayTripStartTime>(
        () => _i62.UpdateDayTripStartTime(gh<_i38.DayTripsRepository>()));
    gh.lazySingleton<_i63.UpdateDayTripsIndexes>(
        () => _i63.UpdateDayTripsIndexes(gh<_i38.DayTripsRepository>()));
    gh.lazySingleton<_i64.UpdateUserDetails>(
        () => _i64.UpdateUserDetails(gh<_i29.UserRepository>()));
    gh.lazySingleton<_i65.UserCubit>(
        () => _i65.UserCubit(listenUserState: gh<_i53.ListenUser>()));
    gh.factoryParam<_i66.AccountCubit, dynamic, dynamic>((
      user,
      _,
    ) =>
        _i66.AccountCubit(
          user: user,
          logoutUser: gh<_i55.LogoutUser>(),
          reauthenticateUser: gh<_i57.ReauthenticateUser>(),
          updateUserDetails: gh<_i64.UpdateUserDetails>(),
          deleteUser: gh<_i43.DeleteUser>(),
        ));
    gh.lazySingleton<_i67.CreateDayTrip>(
        () => _i67.CreateDayTrip(gh<_i38.DayTripsRepository>()));
    gh.factoryParam<_i68.DayTripCubit, _i69.Trip, _i70.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i68.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i61.UpdateDayTrip>(),
          deleteDayTrip: gh<_i40.DeleteDayTrip>(),
          listenTripStops: gh<_i51.ListenTripStops>(),
          updateDayTripStartTime: gh<_i62.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i27.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i23.UpdateTravelTime>(),
          tripStopDone: gh<_i60.TripStopDone>(),
          crashlytics: gh<_i6.FirebaseCrashlytics>(),
        ));
    gh.lazySingleton<_i71.FetchPlaceDetails>(
        () => _i71.FetchPlaceDetails(gh<_i45.GooglePlacesRepository>()));
    gh.lazySingleton<_i72.FetchSuggestions>(
        () => _i72.FetchSuggestions(gh<_i45.GooglePlacesRepository>()));
    gh.factory<_i73.GooglePlacesCubit>(() => _i73.GooglePlacesCubit(
          fetchSuggestions: gh<_i72.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i71.FetchPlaceDetails>(),
        ));
    gh.factory<_i74.LoginSignupCubit>(() => _i74.LoginSignupCubit(
          registerUser: gh<_i59.RegisterUser>(),
          loginUser: gh<_i54.LoginUser>(),
          recoverPassword: gh<_i58.RecoverPassword>(),
        ));
    gh.factoryParam<_i75.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i75.NewDayTripCubit(
          createDayTrip: gh<_i67.CreateDayTrip>(),
          tripId: tripId,
        ));
    gh.factory<_i76.NewTripCubit>(() => _i76.NewTripCubit(
          gh<_i65.UserCubit>(),
          gh<_i34.CreateTrip>(),
        ));
    gh.factoryParam<_i77.TripCubit, _i69.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i77.TripCubit(
          trip: trip,
          saveTrip: gh<_i24.UpdateTrip>(),
          deleteTrip: gh<_i41.DeleteTrip>(),
          listenDayTrips: gh<_i50.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i63.UpdateDayTripsIndexes>(),
          crashlytics: gh<_i6.FirebaseCrashlytics>(),
        ));
    gh.factoryParam<_i78.TripStopCubit, _i78.TripStopCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i78.TripStopCubit(
          params: params,
          tripStopDone: gh<_i60.TripStopDone>(),
          updateTripStopNote: gh<_i26.UpdateTripStopNote>(),
          deleteTripStop: gh<_i42.DeleteTripStop>(),
          updateTripStop: gh<_i25.UpdateTripStop>(),
        ));
    gh.factory<_i79.TripsCubit>(() => _i79.TripsCubit(
          gh<_i52.ListenTrips>(),
          gh<_i65.UserCubit>(),
          gh<_i6.FirebaseCrashlytics>(),
        ));
    return this;
  }
}

class _$Network extends _i80.Network {}

class _$FirebaseModule extends _i80.FirebaseModule {}

class _$RegisterModule extends _i80.RegisterModule {}
