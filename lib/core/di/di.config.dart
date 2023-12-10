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
import 'package:flutter_bloc/flutter_bloc.dart' as _i35;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i10;
import 'package:logger/logger.dart' as _i11;
import 'package:webview_flutter/webview_flutter.dart' as _i34;

import '../../features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i40;
import '../../features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i42;
import '../../features/day_trips/domain/entities/day_trip.dart' as _i73;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i41;
import '../../features/day_trips/domain/usecases/create_day_trip.dart' as _i70;
import '../../features/day_trips/domain/usecases/delete_day_trip.dart' as _i43;
import '../../features/day_trips/domain/usecases/listen_day_trips.dart' as _i53;
import '../../features/day_trips/domain/usecases/update_day_trip.dart' as _i64;
import '../../features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i65;
import '../../features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i66;
import '../../features/day_trips/presentation/cubit/day_trip/cubit/day_trip_cubit.dart'
    as _i71;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i78;
import '../../features/google_places/data/datasources/google_places_data_source.dart'
    as _i47;
import '../../features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i49;
import '../../features/google_places/domain/repositories/google_places_repository.dart'
    as _i48;
import '../../features/google_places/domain/usecases/fetch_place_details.dart'
    as _i74;
import '../../features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i75;
import '../../features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i76;
import '../../features/import_old_trips/data/datasources/old_trips_data_source.dart'
    as _i13;
import '../../features/import_old_trips/data/repositories/old_trips_repository_impl.dart'
    as _i15;
import '../../features/import_old_trips/domain/repositories/old_trips_repository.dart'
    as _i14;
import '../../features/import_old_trips/domain/usecases/import_old_trip.dart'
    as _i50;
import '../../features/import_old_trips/domain/usecases/read_old_trips.dart'
    as _i16;
import '../../features/import_old_trips/presentation/cubit/import_old_trips_cubit.dart'
    as _i51;
import '../../features/info_contacts/presentation/cubit/info_contacts_cubit.dart'
    as _i9;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i18;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i20;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i19;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i38;
import '../../features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i45;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i54;
import '../../features/trip_stops/domain/usecases/trip_stop_done.dart' as _i63;
import '../../features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i25;
import '../../features/trip_stops/domain/usecases/update_trip_stop.dart'
    as _i27;
import '../../features/trip_stops/domain/usecases/update_trip_stop_note.dart'
    as _i28;
import '../../features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i29;
import '../../features/trip_stops/presentation/cubit/map/cubit/map_cubit.dart'
    as _i12;
import '../../features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart'
    as _i59;
import '../../features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart'
    as _i81;
import '../../features/trips/data/datasources/trips_data_source.dart' as _i22;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i24;
import '../../features/trips/domain/entities/trip.dart' as _i72;
import '../../features/trips/domain/repositories/trips_repository.dart' as _i23;
import '../../features/trips/domain/usecases/create_trip.dart' as _i37;
import '../../features/trips/domain/usecases/delete_trip.dart' as _i44;
import '../../features/trips/domain/usecases/listen_trips.dart' as _i55;
import '../../features/trips/domain/usecases/update_trip.dart' as _i26;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i79;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart' as _i80;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart' as _i82;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i30;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i32;
import '../../features/user_account/domain/entities/user.dart' as _i52;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i31;
import '../../features/user_account/domain/usecases/delete_user.dart' as _i46;
import '../../features/user_account/domain/usecases/listen_user.dart' as _i56;
import '../../features/user_account/domain/usecases/login_user.dart' as _i57;
import '../../features/user_account/domain/usecases/logout_user.dart' as _i58;
import '../../features/user_account/domain/usecases/reauthenticate_user.dart'
    as _i60;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i61;
import '../../features/user_account/domain/usecases/register_user.dart' as _i62;
import '../../features/user_account/domain/usecases/update_user_details.dart'
    as _i67;
import '../../features/user_account/presentation/cubit/account_page/account_cubit.dart'
    as _i69;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i77;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i68;
import '../bloc_observer.dart' as _i36;
import '../db/day_trips_collection_ref.dart' as _i39;
import '../db/trip_stops_collection_ref.dart' as _i17;
import '../db/trips_collection_ref.dart' as _i21;
import '../db/users_collection_ref.dart' as _i33;
import '../routes/app_router.dart' as _i3;
import 'di.dart' as _i83;

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
    gh.factory<_i9.InfoContactsCubit>(() => _i9.InfoContactsCubit());
    gh.lazySingleton<_i10.InternetConnection>(() => network.internetConnection);
    gh.lazySingleton<_i11.Logger>(() => registerModule.logger);
    gh.factory<_i12.MapCubit>(() => _i12.MapCubit());
    gh.lazySingleton<_i13.OldTripsDataSource>(
        () => _i13.OldTripsDataSourceImpl(gh<_i7.FirebaseDatabase>()));
    gh.lazySingleton<_i14.OldTripsRepository>(
        () => _i15.OldTripsRepositoryImpl(gh<_i13.OldTripsDataSource>()));
    gh.lazySingleton<_i16.ReadOldTrips>(
        () => _i16.ReadOldTrips(gh<_i14.OldTripsRepository>()));
    gh.factoryParam<_i17.TripStopsCollectionRef, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i17.TripStopsCollectionRef(
          gh<_i8.FirebaseFirestore>(),
          tripId,
          dayTripId,
        ));
    gh.lazySingleton<_i18.TripStopsDataSource>(
        () => _i18.TripStopsDataSourceImpl(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i19.TripStopsRepository>(
        () => _i20.TripStopsRepositoryImpl(gh<_i18.TripStopsDataSource>()));
    gh.factory<_i21.TripsCollectionRef>(
        () => _i21.TripsCollectionRef(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i22.TripsDataSource>(
        () => _i22.TripsDataSourceImpl(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i23.TripsRepository>(() =>
        _i24.TripsRepositoryImpl(tripsDataSource: gh<_i22.TripsDataSource>()));
    gh.lazySingleton<_i25.UpdateTravelTime>(
        () => _i25.UpdateTravelTime(gh<_i19.TripStopsRepository>()));
    gh.lazySingleton<_i26.UpdateTrip>(
        () => _i26.UpdateTrip(gh<_i23.TripsRepository>()));
    gh.lazySingleton<_i27.UpdateTripStop>(
        () => _i27.UpdateTripStop(gh<_i19.TripStopsRepository>()));
    gh.lazySingleton<_i28.UpdateTripStopNote>(
        () => _i28.UpdateTripStopNote(gh<_i19.TripStopsRepository>()));
    gh.lazySingleton<_i29.UpdateTripStopsIndexes>(
        () => _i29.UpdateTripStopsIndexes(gh<_i19.TripStopsRepository>()));
    gh.lazySingleton<_i30.UserDataSource>(() => _i30.UserDataSourceImpl(
          gh<_i5.FirebaseAuth>(),
          gh<_i8.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i31.UserRepository>(
        () => _i32.UserRepositoryImpl(gh<_i30.UserDataSource>()));
    gh.factory<_i33.UsersCollectionRef>(
        () => _i33.UsersCollectionRef(gh<_i8.FirebaseFirestore>()));
    gh.factory<_i34.WebViewController>(() => network.webViewController);
    gh.lazySingleton<_i35.BlocObserver>(
        () => _i36.SimpleBlocObserver(logger: gh<_i11.Logger>()));
    gh.lazySingleton<_i37.CreateTrip>(
        () => _i37.CreateTrip(gh<_i23.TripsRepository>()));
    gh.lazySingleton<_i38.CreateTripStop>(
        () => _i38.CreateTripStop(gh<_i19.TripStopsRepository>()));
    gh.factoryParam<_i39.DayTripsCollectionRef, String, dynamic>((
      tripId,
      _,
    ) =>
        _i39.DayTripsCollectionRef(
          gh<_i8.FirebaseFirestore>(),
          tripId,
        ));
    gh.lazySingleton<_i40.DayTripsDataSource>(
        () => _i40.DayTripsDataSourceImpl(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i41.DayTripsRepository>(
        () => _i42.DayTripsRepositoryImpl(gh<_i40.DayTripsDataSource>()));
    gh.lazySingleton<_i43.DeleteDayTrip>(
        () => _i43.DeleteDayTrip(gh<_i41.DayTripsRepository>()));
    gh.lazySingleton<_i44.DeleteTrip>(
        () => _i44.DeleteTrip(gh<_i23.TripsRepository>()));
    gh.lazySingleton<_i45.DeleteTripStop>(
        () => _i45.DeleteTripStop(gh<_i19.TripStopsRepository>()));
    gh.lazySingleton<_i46.DeleteUser>(() => _i46.DeleteUser(
          gh<_i31.UserRepository>(),
          gh<_i23.TripsRepository>(),
          gh<_i10.InternetConnection>(),
        ));
    gh.lazySingleton<_i47.GooglePlacesDataSource>(
        () => _i47.GooglePlacesDataSourceImpl(
              gh<_i4.Dio>(),
              gh<_i10.InternetConnection>(),
            ));
    gh.lazySingleton<_i48.GooglePlacesRepository>(() =>
        _i49.GooglePlacesRepositoryImpl(gh<_i47.GooglePlacesDataSource>()));
    gh.lazySingleton<_i50.ImportOldTrips>(
        () => _i50.ImportOldTrips(gh<_i14.OldTripsRepository>()));
    gh.factoryParam<_i51.ImportOldTripsCubit, _i52.User, dynamic>((
      user,
      _,
    ) =>
        _i51.ImportOldTripsCubit(
          user: user,
          readOldTrips: gh<_i16.ReadOldTrips>(),
          importOldTrips: gh<_i50.ImportOldTrips>(),
        ));
    gh.lazySingleton<_i53.ListenDayTrips>(
        () => _i53.ListenDayTrips(gh<_i41.DayTripsRepository>()));
    gh.lazySingleton<_i54.ListenTripStops>(
        () => _i54.ListenTripStops(gh<_i19.TripStopsRepository>()));
    gh.lazySingleton<_i55.ListenTrips>(
        () => _i55.ListenTrips(gh<_i23.TripsRepository>()));
    gh.lazySingleton<_i56.ListenUser>(
        () => _i56.ListenUser(gh<_i31.UserRepository>()));
    gh.lazySingleton<_i57.LoginUser>(
        () => _i57.LoginUser(gh<_i31.UserRepository>()));
    gh.lazySingleton<_i58.LogoutUser>(
        () => _i58.LogoutUser(gh<_i31.UserRepository>()));
    gh.factoryParam<_i59.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i59.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i38.CreateTripStop>(),
        ));
    gh.lazySingleton<_i60.ReauthenticateUser>(
        () => _i60.ReauthenticateUser(gh<_i31.UserRepository>()));
    gh.lazySingleton<_i61.RecoverPassword>(
        () => _i61.RecoverPassword(gh<_i31.UserRepository>()));
    gh.lazySingleton<_i62.RegisterUser>(
        () => _i62.RegisterUser(gh<_i31.UserRepository>()));
    gh.lazySingleton<_i63.TripStopDone>(
        () => _i63.TripStopDone(gh<_i19.TripStopsRepository>()));
    gh.lazySingleton<_i64.UpdateDayTrip>(
        () => _i64.UpdateDayTrip(gh<_i41.DayTripsRepository>()));
    gh.lazySingleton<_i65.UpdateDayTripStartTime>(
        () => _i65.UpdateDayTripStartTime(gh<_i41.DayTripsRepository>()));
    gh.lazySingleton<_i66.UpdateDayTripsIndexes>(
        () => _i66.UpdateDayTripsIndexes(gh<_i41.DayTripsRepository>()));
    gh.lazySingleton<_i67.UpdateUserDetails>(
        () => _i67.UpdateUserDetails(gh<_i31.UserRepository>()));
    gh.lazySingleton<_i68.UserCubit>(
        () => _i68.UserCubit(listenUserState: gh<_i56.ListenUser>()));
    gh.factoryParam<_i69.AccountCubit, dynamic, dynamic>((
      user,
      _,
    ) =>
        _i69.AccountCubit(
          user: user,
          logoutUser: gh<_i58.LogoutUser>(),
          reauthenticateUser: gh<_i60.ReauthenticateUser>(),
          updateUserDetails: gh<_i67.UpdateUserDetails>(),
          deleteUser: gh<_i46.DeleteUser>(),
        ));
    gh.lazySingleton<_i70.CreateDayTrip>(
        () => _i70.CreateDayTrip(gh<_i41.DayTripsRepository>()));
    gh.factoryParam<_i71.DayTripCubit, _i72.Trip, _i73.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i71.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i64.UpdateDayTrip>(),
          deleteDayTrip: gh<_i43.DeleteDayTrip>(),
          listenTripStops: gh<_i54.ListenTripStops>(),
          updateDayTripStartTime: gh<_i65.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i29.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i25.UpdateTravelTime>(),
          tripStopDone: gh<_i63.TripStopDone>(),
          crashlytics: gh<_i6.FirebaseCrashlytics>(),
        ));
    gh.lazySingleton<_i74.FetchPlaceDetails>(
        () => _i74.FetchPlaceDetails(gh<_i48.GooglePlacesRepository>()));
    gh.lazySingleton<_i75.FetchSuggestions>(
        () => _i75.FetchSuggestions(gh<_i48.GooglePlacesRepository>()));
    gh.factory<_i76.GooglePlacesCubit>(() => _i76.GooglePlacesCubit(
          fetchSuggestions: gh<_i75.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i74.FetchPlaceDetails>(),
        ));
    gh.factory<_i77.LoginSignupCubit>(() => _i77.LoginSignupCubit(
          registerUser: gh<_i62.RegisterUser>(),
          loginUser: gh<_i57.LoginUser>(),
          recoverPassword: gh<_i61.RecoverPassword>(),
        ));
    gh.factoryParam<_i78.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i78.NewDayTripCubit(
          createDayTrip: gh<_i70.CreateDayTrip>(),
          tripId: tripId,
        ));
    gh.factory<_i79.NewTripCubit>(() => _i79.NewTripCubit(
          gh<_i68.UserCubit>(),
          gh<_i37.CreateTrip>(),
        ));
    gh.factoryParam<_i80.TripCubit, _i72.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i80.TripCubit(
          trip: trip,
          saveTrip: gh<_i26.UpdateTrip>(),
          deleteTrip: gh<_i44.DeleteTrip>(),
          listenDayTrips: gh<_i53.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i66.UpdateDayTripsIndexes>(),
          crashlytics: gh<_i6.FirebaseCrashlytics>(),
        ));
    gh.factoryParam<_i81.TripStopCubit, _i81.TripStopCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i81.TripStopCubit(
          params: params,
          tripStopDone: gh<_i63.TripStopDone>(),
          updateTripStopNote: gh<_i28.UpdateTripStopNote>(),
          deleteTripStop: gh<_i45.DeleteTripStop>(),
          updateTripStop: gh<_i27.UpdateTripStop>(),
        ));
    gh.factory<_i82.TripsCubit>(() => _i82.TripsCubit(
          gh<_i55.ListenTrips>(),
          gh<_i68.UserCubit>(),
          gh<_i6.FirebaseCrashlytics>(),
        ));
    return this;
  }
}

class _$Network extends _i83.Network {}

class _$FirebaseModule extends _i83.FirebaseModule {}

class _$RegisterModule extends _i83.RegisterModule {}
