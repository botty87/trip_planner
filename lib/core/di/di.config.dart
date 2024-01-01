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
import 'package:flutter_bloc/flutter_bloc.dart' as _i36;
import 'package:flutter_polyline_points/flutter_polyline_points.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i10;
import 'package:logger/logger.dart' as _i11;
import 'package:webview_flutter/webview_flutter.dart' as _i35;

import '../../features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i41;
import '../../features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i43;
import '../../features/day_trips/domain/entities/day_trip.dart' as _i76;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i42;
import '../../features/day_trips/domain/usecases/create_day_trip.dart' as _i73;
import '../../features/day_trips/domain/usecases/delete_day_trip.dart' as _i44;
import '../../features/day_trips/domain/usecases/listen_day_trip.dart' as _i54;
import '../../features/day_trips/domain/usecases/listen_day_trips.dart' as _i55;
import '../../features/day_trips/domain/usecases/save_trip_stops_directions.dart'
    as _i64;
import '../../features/day_trips/domain/usecases/update_day_trip.dart' as _i66;
import '../../features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i67;
import '../../features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i68;
import '../../features/day_trips/domain/usecases/update_trip_stops_directions_up_to_date.dart'
    as _i69;
import '../../features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart'
    as _i74;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i82;
import '../../features/day_trips/presentation/cubit/trip_stops_map/trip_stops_map_cubit.dart'
    as _i87;
import '../../features/google_places/data/datasources/google_places_data_source.dart'
    as _i48;
import '../../features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i50;
import '../../features/google_places/domain/repositories/google_places_repository.dart'
    as _i49;
import '../../features/google_places/domain/usecases/fetch_place_details.dart'
    as _i77;
import '../../features/google_places/domain/usecases/fetch_polyline_points.dart'
    as _i79;
import '../../features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i78;
import '../../features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i80;
import '../../features/import_old_trips/data/datasources/old_trips_data_source.dart'
    as _i13;
import '../../features/import_old_trips/data/repositories/old_trips_repository_impl.dart'
    as _i15;
import '../../features/import_old_trips/domain/repositories/old_trips_repository.dart'
    as _i14;
import '../../features/import_old_trips/domain/usecases/import_old_trip.dart'
    as _i51;
import '../../features/import_old_trips/domain/usecases/read_old_trips.dart'
    as _i17;
import '../../features/import_old_trips/presentation/cubit/import_old_trips_cubit.dart'
    as _i52;
import '../../features/info_contacts/presentation/cubit/info_contacts_cubit.dart'
    as _i9;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i19;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i21;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i20;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i39;
import '../../features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i46;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i56;
import '../../features/trip_stops/domain/usecases/trip_stop_done.dart' as _i65;
import '../../features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i26;
import '../../features/trip_stops/domain/usecases/update_trip_stop.dart'
    as _i28;
import '../../features/trip_stops/domain/usecases/update_trip_stop_note.dart'
    as _i29;
import '../../features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i30;
import '../../features/trip_stops/presentation/cubit/map/cubit/map_cubit.dart'
    as _i12;
import '../../features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart'
    as _i84;
import '../../features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart'
    as _i86;
import '../../features/trips/data/datasources/trips_data_source.dart' as _i23;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i25;
import '../../features/trips/domain/entities/trip.dart' as _i75;
import '../../features/trips/domain/repositories/trips_repository.dart' as _i24;
import '../../features/trips/domain/usecases/create_trip.dart' as _i38;
import '../../features/trips/domain/usecases/delete_trip.dart' as _i45;
import '../../features/trips/domain/usecases/listen_trips.dart' as _i57;
import '../../features/trips/domain/usecases/update_trip.dart' as _i27;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i83;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart' as _i85;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart' as _i88;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i31;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i33;
import '../../features/user_account/domain/entities/user.dart' as _i53;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i32;
import '../../features/user_account/domain/usecases/delete_user.dart' as _i47;
import '../../features/user_account/domain/usecases/listen_user.dart' as _i58;
import '../../features/user_account/domain/usecases/login_user.dart' as _i59;
import '../../features/user_account/domain/usecases/logout_user.dart' as _i60;
import '../../features/user_account/domain/usecases/reauthenticate_user.dart'
    as _i61;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i62;
import '../../features/user_account/domain/usecases/register_user.dart' as _i63;
import '../../features/user_account/domain/usecases/update_user_details.dart'
    as _i70;
import '../../features/user_account/presentation/cubit/account_page/account_cubit.dart'
    as _i72;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i81;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i71;
import '../bloc_observer.dart' as _i37;
import '../db/day_trips_collection_ref.dart' as _i40;
import '../db/trip_stops_collection_ref.dart' as _i18;
import '../db/trips_collection_ref.dart' as _i22;
import '../db/users_collection_ref.dart' as _i34;
import '../routes/app_router.dart' as _i3;
import 'di.dart' as _i89;

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
    final googlePlacesModule = _$GooglePlacesModule();
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
    gh.lazySingleton<_i16.PolylinePoints>(
        () => googlePlacesModule.polylinePoints);
    gh.lazySingleton<_i17.ReadOldTrips>(
        () => _i17.ReadOldTrips(gh<_i14.OldTripsRepository>()));
    gh.lazySingleton<String>(
      () => googlePlacesModule.proxyUrl,
      instanceName: 'proxyUrl',
    );
    gh.lazySingleton<String>(
      () => googlePlacesModule.googleMapKey,
      instanceName: 'googleMapKey',
    );
    gh.lazySingleton<String>(
      () => googlePlacesModule.googlePlacesKey,
      instanceName: 'googlePlacesKey',
    );
    gh.factoryParam<_i18.TripStopsCollectionRef, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i18.TripStopsCollectionRef(
          gh<_i8.FirebaseFirestore>(),
          tripId,
          dayTripId,
        ));
    gh.lazySingleton<_i19.TripStopsDataSource>(
        () => _i19.TripStopsDataSourceImpl(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i20.TripStopsRepository>(
        () => _i21.TripStopsRepositoryImpl(gh<_i19.TripStopsDataSource>()));
    gh.factory<_i22.TripsCollectionRef>(
        () => _i22.TripsCollectionRef(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i23.TripsDataSource>(
        () => _i23.TripsDataSourceImpl(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i24.TripsRepository>(() =>
        _i25.TripsRepositoryImpl(tripsDataSource: gh<_i23.TripsDataSource>()));
    gh.lazySingleton<_i26.UpdateTravelTime>(
        () => _i26.UpdateTravelTime(gh<_i20.TripStopsRepository>()));
    gh.lazySingleton<_i27.UpdateTrip>(
        () => _i27.UpdateTrip(gh<_i24.TripsRepository>()));
    gh.lazySingleton<_i28.UpdateTripStop>(
        () => _i28.UpdateTripStop(gh<_i20.TripStopsRepository>()));
    gh.lazySingleton<_i29.UpdateTripStopNote>(
        () => _i29.UpdateTripStopNote(gh<_i20.TripStopsRepository>()));
    gh.lazySingleton<_i30.UpdateTripStopsIndexes>(
        () => _i30.UpdateTripStopsIndexes(gh<_i20.TripStopsRepository>()));
    gh.lazySingleton<_i31.UserDataSource>(() => _i31.UserDataSourceImpl(
          gh<_i5.FirebaseAuth>(),
          gh<_i8.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i32.UserRepository>(
        () => _i33.UserRepositoryImpl(gh<_i31.UserDataSource>()));
    gh.factory<_i34.UsersCollectionRef>(
        () => _i34.UsersCollectionRef(gh<_i8.FirebaseFirestore>()));
    gh.factory<_i35.WebViewController>(() => network.webViewController);
    gh.lazySingleton<_i36.BlocObserver>(
        () => _i37.SimpleBlocObserver(logger: gh<_i11.Logger>()));
    gh.lazySingleton<_i38.CreateTrip>(
        () => _i38.CreateTrip(gh<_i24.TripsRepository>()));
    gh.lazySingleton<_i39.CreateTripStop>(
        () => _i39.CreateTripStop(gh<_i20.TripStopsRepository>()));
    gh.factoryParam<_i40.DayTripsCollectionRef, String, dynamic>((
      tripId,
      _,
    ) =>
        _i40.DayTripsCollectionRef(
          gh<_i8.FirebaseFirestore>(),
          tripId,
        ));
    gh.lazySingleton<_i41.DayTripsDataSource>(
        () => _i41.DayTripsDataSourceImpl(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i42.DayTripsRepository>(
        () => _i43.DayTripsRepositoryImpl(gh<_i41.DayTripsDataSource>()));
    gh.lazySingleton<_i44.DeleteDayTrip>(
        () => _i44.DeleteDayTrip(gh<_i42.DayTripsRepository>()));
    gh.lazySingleton<_i45.DeleteTrip>(
        () => _i45.DeleteTrip(gh<_i24.TripsRepository>()));
    gh.lazySingleton<_i46.DeleteTripStop>(
        () => _i46.DeleteTripStop(gh<_i20.TripStopsRepository>()));
    gh.lazySingleton<_i47.DeleteUser>(() => _i47.DeleteUser(
          gh<_i32.UserRepository>(),
          gh<_i24.TripsRepository>(),
          gh<_i10.InternetConnection>(),
        ));
    gh.lazySingleton<_i48.GooglePlacesDataSource>(
        () => _i48.GooglePlacesDataSourceImpl(
              gh<_i4.Dio>(),
              gh<_i10.InternetConnection>(),
              gh<_i16.PolylinePoints>(),
              gh<String>(instanceName: 'googlePlacesKey'),
              gh<String>(instanceName: 'proxyUrl'),
            ));
    gh.lazySingleton<_i49.GooglePlacesRepository>(() =>
        _i50.GooglePlacesRepositoryImpl(gh<_i48.GooglePlacesDataSource>()));
    gh.lazySingleton<_i51.ImportOldTrips>(
        () => _i51.ImportOldTrips(gh<_i14.OldTripsRepository>()));
    gh.factoryParam<_i52.ImportOldTripsCubit, _i53.User, dynamic>((
      user,
      _,
    ) =>
        _i52.ImportOldTripsCubit(
          user: user,
          readOldTrips: gh<_i17.ReadOldTrips>(),
          importOldTrips: gh<_i51.ImportOldTrips>(),
        ));
    gh.lazySingleton<_i54.ListenDayTrip>(
        () => _i54.ListenDayTrip(gh<_i42.DayTripsRepository>()));
    gh.lazySingleton<_i55.ListenDayTrips>(
        () => _i55.ListenDayTrips(gh<_i42.DayTripsRepository>()));
    gh.lazySingleton<_i56.ListenTripStops>(
        () => _i56.ListenTripStops(gh<_i20.TripStopsRepository>()));
    gh.lazySingleton<_i57.ListenTrips>(
        () => _i57.ListenTrips(gh<_i24.TripsRepository>()));
    gh.lazySingleton<_i58.ListenUser>(
        () => _i58.ListenUser(gh<_i32.UserRepository>()));
    gh.lazySingleton<_i59.LoginUser>(
        () => _i59.LoginUser(gh<_i32.UserRepository>()));
    gh.lazySingleton<_i60.LogoutUser>(
        () => _i60.LogoutUser(gh<_i32.UserRepository>()));
    gh.lazySingleton<_i61.ReauthenticateUser>(
        () => _i61.ReauthenticateUser(gh<_i32.UserRepository>()));
    gh.lazySingleton<_i62.RecoverPassword>(
        () => _i62.RecoverPassword(gh<_i32.UserRepository>()));
    gh.lazySingleton<_i63.RegisterUser>(
        () => _i63.RegisterUser(gh<_i32.UserRepository>()));
    gh.lazySingleton<_i64.SaveTripStopsDirections>(
        () => _i64.SaveTripStopsDirections(gh<_i42.DayTripsRepository>()));
    gh.lazySingleton<_i65.TripStopDone>(
        () => _i65.TripStopDone(gh<_i20.TripStopsRepository>()));
    gh.lazySingleton<_i66.UpdateDayTrip>(
        () => _i66.UpdateDayTrip(gh<_i42.DayTripsRepository>()));
    gh.lazySingleton<_i67.UpdateDayTripStartTime>(
        () => _i67.UpdateDayTripStartTime(gh<_i42.DayTripsRepository>()));
    gh.lazySingleton<_i68.UpdateDayTripsIndexes>(
        () => _i68.UpdateDayTripsIndexes(gh<_i42.DayTripsRepository>()));
    gh.lazySingleton<_i69.UpdateTripStopsDirectionsUpToDate>(() =>
        _i69.UpdateTripStopsDirectionsUpToDate(gh<_i42.DayTripsRepository>()));
    gh.lazySingleton<_i70.UpdateUserDetails>(
        () => _i70.UpdateUserDetails(gh<_i32.UserRepository>()));
    gh.lazySingleton<_i71.UserCubit>(
        () => _i71.UserCubit(listenUserState: gh<_i58.ListenUser>()));
    gh.factoryParam<_i72.AccountCubit, dynamic, dynamic>((
      user,
      _,
    ) =>
        _i72.AccountCubit(
          user: user,
          logoutUser: gh<_i60.LogoutUser>(),
          reauthenticateUser: gh<_i61.ReauthenticateUser>(),
          updateUserDetails: gh<_i70.UpdateUserDetails>(),
          deleteUser: gh<_i47.DeleteUser>(),
        ));
    gh.lazySingleton<_i73.CreateDayTrip>(
        () => _i73.CreateDayTrip(gh<_i42.DayTripsRepository>()));
    gh.factoryParam<_i74.DayTripCubit, _i75.Trip, _i76.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i74.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i66.UpdateDayTrip>(),
          deleteDayTrip: gh<_i44.DeleteDayTrip>(),
          listenTripStops: gh<_i56.ListenTripStops>(),
          updateDayTripStartTime: gh<_i67.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i30.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i26.UpdateTravelTime>(),
          tripStopDone: gh<_i65.TripStopDone>(),
          listenDayTrip: gh<_i54.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i69.UpdateTripStopsDirectionsUpToDate>(),
          crashlytics: gh<_i6.FirebaseCrashlytics>(),
        ));
    gh.lazySingleton<_i77.FetchPlaceDetails>(
        () => _i77.FetchPlaceDetails(gh<_i49.GooglePlacesRepository>()));
    gh.lazySingleton<_i78.FetchSuggestions>(
        () => _i78.FetchSuggestions(gh<_i49.GooglePlacesRepository>()));
    gh.lazySingleton<_i79.FetchTripStopsDirections>(
        () => _i79.FetchTripStopsDirections(gh<_i49.GooglePlacesRepository>()));
    gh.factory<_i80.GooglePlacesCubit>(() => _i80.GooglePlacesCubit(
          fetchSuggestions: gh<_i78.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i77.FetchPlaceDetails>(),
        ));
    gh.factory<_i81.LoginSignupCubit>(() => _i81.LoginSignupCubit(
          registerUser: gh<_i63.RegisterUser>(),
          loginUser: gh<_i59.LoginUser>(),
          recoverPassword: gh<_i62.RecoverPassword>(),
        ));
    gh.factoryParam<_i82.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i82.NewDayTripCubit(
          createDayTrip: gh<_i73.CreateDayTrip>(),
          tripId: tripId,
        ));
    gh.factory<_i83.NewTripCubit>(() => _i83.NewTripCubit(
          gh<_i71.UserCubit>(),
          gh<_i38.CreateTrip>(),
        ));
    gh.factoryParam<_i84.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i84.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i39.CreateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i69.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.factoryParam<_i85.TripCubit, _i75.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i85.TripCubit(
          trip: trip,
          saveTrip: gh<_i27.UpdateTrip>(),
          deleteTrip: gh<_i45.DeleteTrip>(),
          listenDayTrips: gh<_i55.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i68.UpdateDayTripsIndexes>(),
          crashlytics: gh<_i6.FirebaseCrashlytics>(),
        ));
    gh.factoryParam<_i86.TripStopCubit, _i86.TripStopCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i86.TripStopCubit(
          params: params,
          tripStopDone: gh<_i65.TripStopDone>(),
          updateTripStopNote: gh<_i29.UpdateTripStopNote>(),
          deleteTripStop: gh<_i46.DeleteTripStop>(),
          updateTripStop: gh<_i28.UpdateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i69.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.factoryParam<_i87.TripStopsMapCubit, _i75.Trip, _i76.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i87.TripStopsMapCubit(
          fetchPolylinePoints: gh<_i79.FetchTripStopsDirections>(),
          saveTripStopsDirections: gh<_i64.SaveTripStopsDirections>(),
          listenDayTrip: gh<_i54.ListenDayTrip>(),
          crashlytics: gh<_i6.FirebaseCrashlytics>(),
          trip: trip,
          dayTrip: dayTrip,
        ));
    gh.factory<_i88.TripsCubit>(() => _i88.TripsCubit(
          gh<_i57.ListenTrips>(),
          gh<_i71.UserCubit>(),
          gh<_i6.FirebaseCrashlytics>(),
        ));
    return this;
  }
}

class _$Network extends _i89.Network {}

class _$FirebaseModule extends _i89.FirebaseModule {}

class _$RegisterModule extends _i89.RegisterModule {}

class _$GooglePlacesModule extends _i89.GooglePlacesModule {}
