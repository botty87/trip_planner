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
import 'package:flutter_bloc/flutter_bloc.dart' as _i37;
import 'package:flutter_polyline_points/flutter_polyline_points.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i10;
import 'package:logger/logger.dart' as _i11;
import 'package:webview_flutter/webview_flutter.dart' as _i36;

import '../../features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i42;
import '../../features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i44;
import '../../features/day_trips/domain/entities/day_trip.dart' as _i78;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i43;
import '../../features/day_trips/domain/usecases/create_day_trip.dart' as _i75;
import '../../features/day_trips/domain/usecases/delete_day_trip.dart' as _i45;
import '../../features/day_trips/domain/usecases/listen_day_trip.dart' as _i55;
import '../../features/day_trips/domain/usecases/listen_day_trips.dart' as _i56;
import '../../features/day_trips/domain/usecases/save_trip_stops_directions.dart'
    as _i65;
import '../../features/day_trips/domain/usecases/update_day_trip.dart' as _i67;
import '../../features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i68;
import '../../features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i69;
import '../../features/day_trips/domain/usecases/update_trip_stops_directions_up_to_date.dart'
    as _i71;
import '../../features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart'
    as _i76;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i84;
import '../../features/day_trips/presentation/cubit/trip_stops_map/trip_stops_map_cubit.dart'
    as _i90;
import '../../features/google_places/data/datasources/google_places_data_source.dart'
    as _i49;
import '../../features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i51;
import '../../features/google_places/domain/repositories/google_places_repository.dart'
    as _i50;
import '../../features/google_places/domain/usecases/fetch_place_details.dart'
    as _i79;
import '../../features/google_places/domain/usecases/fetch_polyline_points.dart'
    as _i81;
import '../../features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i80;
import '../../features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i82;
import '../../features/import_old_trips/data/datasources/old_trips_data_source.dart'
    as _i13;
import '../../features/import_old_trips/data/repositories/old_trips_repository_impl.dart'
    as _i15;
import '../../features/import_old_trips/domain/repositories/old_trips_repository.dart'
    as _i14;
import '../../features/import_old_trips/domain/usecases/import_old_trip.dart'
    as _i52;
import '../../features/import_old_trips/domain/usecases/read_old_trips.dart'
    as _i17;
import '../../features/import_old_trips/presentation/cubit/import_old_trips_cubit.dart'
    as _i53;
import '../../features/info_contacts/presentation/cubit/info_contacts_cubit.dart'
    as _i9;
import '../../features/settings/domain/usecases/update_settings.dart' as _i70;
import '../../features/settings/presentation/cubit/settings_cubit.dart' as _i87;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i20;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i22;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i21;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i40;
import '../../features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i47;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i57;
import '../../features/trip_stops/domain/usecases/trip_stop_done.dart' as _i66;
import '../../features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i27;
import '../../features/trip_stops/domain/usecases/update_trip_stop.dart'
    as _i29;
import '../../features/trip_stops/domain/usecases/update_trip_stop_note.dart'
    as _i30;
import '../../features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i31;
import '../../features/trip_stops/presentation/cubit/map/cubit/map_cubit.dart'
    as _i12;
import '../../features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart'
    as _i86;
import '../../features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart'
    as _i89;
import '../../features/trips/data/datasources/trips_data_source.dart' as _i24;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i26;
import '../../features/trips/domain/entities/trip.dart' as _i77;
import '../../features/trips/domain/repositories/trips_repository.dart' as _i25;
import '../../features/trips/domain/usecases/create_trip.dart' as _i39;
import '../../features/trips/domain/usecases/delete_trip.dart' as _i46;
import '../../features/trips/domain/usecases/listen_trips.dart' as _i58;
import '../../features/trips/domain/usecases/update_trip.dart' as _i28;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i85;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart' as _i88;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart' as _i91;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i32;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i34;
import '../../features/user_account/domain/entities/user.dart' as _i54;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i33;
import '../../features/user_account/domain/usecases/delete_user.dart' as _i48;
import '../../features/user_account/domain/usecases/listen_user.dart' as _i59;
import '../../features/user_account/domain/usecases/login_user.dart' as _i60;
import '../../features/user_account/domain/usecases/logout_user.dart' as _i61;
import '../../features/user_account/domain/usecases/reauthenticate_user.dart'
    as _i62;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i63;
import '../../features/user_account/domain/usecases/register_user.dart' as _i64;
import '../../features/user_account/domain/usecases/update_user_details.dart'
    as _i72;
import '../../features/user_account/presentation/cubit/account_page/account_cubit.dart'
    as _i74;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i83;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i73;
import '../bloc_observer.dart' as _i38;
import '../db/day_trips_collection_ref.dart' as _i41;
import '../db/settings_collection_ref.dart' as _i18;
import '../db/trip_stops_collection_ref.dart' as _i19;
import '../db/trips_collection_ref.dart' as _i23;
import '../db/users_collection_ref.dart' as _i35;
import '../routes/app_router.dart' as _i3;
import 'di.dart' as _i92;

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
    gh.factory<_i18.SettingsCollectionRef>(
        () => _i18.SettingsCollectionRef(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<String>(
      () => googlePlacesModule.googleMapKey,
      instanceName: 'googleMapKey',
    );
    gh.lazySingleton<String>(
      () => googlePlacesModule.proxyUrl,
      instanceName: 'proxyUrl',
    );
    gh.lazySingleton<String>(
      () => googlePlacesModule.googlePlacesKey,
      instanceName: 'googlePlacesKey',
    );
    gh.factoryParam<_i19.TripStopsCollectionRef, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i19.TripStopsCollectionRef(
          gh<_i8.FirebaseFirestore>(),
          tripId,
          dayTripId,
        ));
    gh.lazySingleton<_i20.TripStopsDataSource>(
        () => _i20.TripStopsDataSourceImpl(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i21.TripStopsRepository>(
        () => _i22.TripStopsRepositoryImpl(gh<_i20.TripStopsDataSource>()));
    gh.factory<_i23.TripsCollectionRef>(
        () => _i23.TripsCollectionRef(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i24.TripsDataSource>(
        () => _i24.TripsDataSourceImpl(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i25.TripsRepository>(() =>
        _i26.TripsRepositoryImpl(tripsDataSource: gh<_i24.TripsDataSource>()));
    gh.lazySingleton<_i27.UpdateTravelTime>(
        () => _i27.UpdateTravelTime(gh<_i21.TripStopsRepository>()));
    gh.lazySingleton<_i28.UpdateTrip>(
        () => _i28.UpdateTrip(gh<_i25.TripsRepository>()));
    gh.lazySingleton<_i29.UpdateTripStop>(
        () => _i29.UpdateTripStop(gh<_i21.TripStopsRepository>()));
    gh.lazySingleton<_i30.UpdateTripStopNote>(
        () => _i30.UpdateTripStopNote(gh<_i21.TripStopsRepository>()));
    gh.lazySingleton<_i31.UpdateTripStopsIndexes>(
        () => _i31.UpdateTripStopsIndexes(gh<_i21.TripStopsRepository>()));
    gh.lazySingleton<_i32.UserDataSource>(() => _i32.UserDataSourceImpl(
          gh<_i5.FirebaseAuth>(),
          gh<_i8.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i33.UserRepository>(
        () => _i34.UserRepositoryImpl(gh<_i32.UserDataSource>()));
    gh.factory<_i35.UsersCollectionRef>(
        () => _i35.UsersCollectionRef(gh<_i8.FirebaseFirestore>()));
    gh.factory<_i36.WebViewController>(() => network.webViewController);
    gh.lazySingleton<_i37.BlocObserver>(
        () => _i38.SimpleBlocObserver(logger: gh<_i11.Logger>()));
    gh.lazySingleton<_i39.CreateTrip>(
        () => _i39.CreateTrip(gh<_i25.TripsRepository>()));
    gh.lazySingleton<_i40.CreateTripStop>(
        () => _i40.CreateTripStop(gh<_i21.TripStopsRepository>()));
    gh.factoryParam<_i41.DayTripsCollectionRef, String, dynamic>((
      tripId,
      _,
    ) =>
        _i41.DayTripsCollectionRef(
          gh<_i8.FirebaseFirestore>(),
          tripId,
        ));
    gh.lazySingleton<_i42.DayTripsDataSource>(
        () => _i42.DayTripsDataSourceImpl(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i43.DayTripsRepository>(
        () => _i44.DayTripsRepositoryImpl(gh<_i42.DayTripsDataSource>()));
    gh.lazySingleton<_i45.DeleteDayTrip>(
        () => _i45.DeleteDayTrip(gh<_i43.DayTripsRepository>()));
    gh.lazySingleton<_i46.DeleteTrip>(
        () => _i46.DeleteTrip(gh<_i25.TripsRepository>()));
    gh.lazySingleton<_i47.DeleteTripStop>(
        () => _i47.DeleteTripStop(gh<_i21.TripStopsRepository>()));
    gh.lazySingleton<_i48.DeleteUser>(() => _i48.DeleteUser(
          gh<_i33.UserRepository>(),
          gh<_i25.TripsRepository>(),
          gh<_i10.InternetConnection>(),
        ));
    gh.lazySingleton<_i49.GooglePlacesDataSource>(
        () => _i49.GooglePlacesDataSourceImpl(
              gh<_i4.Dio>(),
              gh<_i10.InternetConnection>(),
              gh<_i16.PolylinePoints>(),
              gh<String>(instanceName: 'googlePlacesKey'),
              gh<String>(instanceName: 'proxyUrl'),
            ));
    gh.lazySingleton<_i50.GooglePlacesRepository>(() =>
        _i51.GooglePlacesRepositoryImpl(gh<_i49.GooglePlacesDataSource>()));
    gh.lazySingleton<_i52.ImportOldTrips>(
        () => _i52.ImportOldTrips(gh<_i14.OldTripsRepository>()));
    gh.factoryParam<_i53.ImportOldTripsCubit, _i54.User, dynamic>((
      user,
      _,
    ) =>
        _i53.ImportOldTripsCubit(
          user: user,
          readOldTrips: gh<_i17.ReadOldTrips>(),
          importOldTrips: gh<_i52.ImportOldTrips>(),
        ));
    gh.lazySingleton<_i55.ListenDayTrip>(
        () => _i55.ListenDayTrip(gh<_i43.DayTripsRepository>()));
    gh.lazySingleton<_i56.ListenDayTrips>(
        () => _i56.ListenDayTrips(gh<_i43.DayTripsRepository>()));
    gh.lazySingleton<_i57.ListenTripStops>(
        () => _i57.ListenTripStops(gh<_i21.TripStopsRepository>()));
    gh.lazySingleton<_i58.ListenTrips>(
        () => _i58.ListenTrips(gh<_i25.TripsRepository>()));
    gh.lazySingleton<_i59.ListenUser>(
        () => _i59.ListenUser(gh<_i33.UserRepository>()));
    gh.lazySingleton<_i60.LoginUser>(
        () => _i60.LoginUser(gh<_i33.UserRepository>()));
    gh.lazySingleton<_i61.LogoutUser>(
        () => _i61.LogoutUser(gh<_i33.UserRepository>()));
    gh.lazySingleton<_i62.ReauthenticateUser>(
        () => _i62.ReauthenticateUser(gh<_i33.UserRepository>()));
    gh.lazySingleton<_i63.RecoverPassword>(
        () => _i63.RecoverPassword(gh<_i33.UserRepository>()));
    gh.lazySingleton<_i64.RegisterUser>(
        () => _i64.RegisterUser(gh<_i33.UserRepository>()));
    gh.lazySingleton<_i65.SaveTripStopsDirections>(
        () => _i65.SaveTripStopsDirections(gh<_i43.DayTripsRepository>()));
    gh.lazySingleton<_i66.TripStopDone>(
        () => _i66.TripStopDone(gh<_i21.TripStopsRepository>()));
    gh.lazySingleton<_i67.UpdateDayTrip>(
        () => _i67.UpdateDayTrip(gh<_i43.DayTripsRepository>()));
    gh.lazySingleton<_i68.UpdateDayTripStartTime>(
        () => _i68.UpdateDayTripStartTime(gh<_i43.DayTripsRepository>()));
    gh.lazySingleton<_i69.UpdateDayTripsIndexes>(
        () => _i69.UpdateDayTripsIndexes(gh<_i43.DayTripsRepository>()));
    gh.lazySingleton<_i70.UpdateSettings>(
        () => _i70.UpdateSettings(gh<_i33.UserRepository>()));
    gh.lazySingleton<_i71.UpdateTripStopsDirectionsUpToDate>(() =>
        _i71.UpdateTripStopsDirectionsUpToDate(gh<_i43.DayTripsRepository>()));
    gh.lazySingleton<_i72.UpdateUserDetails>(
        () => _i72.UpdateUserDetails(gh<_i33.UserRepository>()));
    gh.lazySingleton<_i73.UserCubit>(
        () => _i73.UserCubit(listenUserState: gh<_i59.ListenUser>()));
    gh.factoryParam<_i74.AccountCubit, dynamic, dynamic>((
      user,
      _,
    ) =>
        _i74.AccountCubit(
          user: user,
          logoutUser: gh<_i61.LogoutUser>(),
          reauthenticateUser: gh<_i62.ReauthenticateUser>(),
          updateUserDetails: gh<_i72.UpdateUserDetails>(),
          deleteUser: gh<_i48.DeleteUser>(),
        ));
    gh.lazySingleton<_i75.CreateDayTrip>(
        () => _i75.CreateDayTrip(gh<_i43.DayTripsRepository>()));
    gh.factoryParam<_i76.DayTripCubit, _i77.Trip, _i78.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i76.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i67.UpdateDayTrip>(),
          deleteDayTrip: gh<_i45.DeleteDayTrip>(),
          listenTripStops: gh<_i57.ListenTripStops>(),
          updateDayTripStartTime: gh<_i68.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i31.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i27.UpdateTravelTime>(),
          tripStopDone: gh<_i66.TripStopDone>(),
          listenDayTrip: gh<_i55.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i71.UpdateTripStopsDirectionsUpToDate>(),
          crashlytics: gh<_i6.FirebaseCrashlytics>(),
        ));
    gh.lazySingleton<_i79.FetchPlaceDetails>(
        () => _i79.FetchPlaceDetails(gh<_i50.GooglePlacesRepository>()));
    gh.lazySingleton<_i80.FetchSuggestions>(
        () => _i80.FetchSuggestions(gh<_i50.GooglePlacesRepository>()));
    gh.lazySingleton<_i81.FetchTripStopsDirections>(
        () => _i81.FetchTripStopsDirections(gh<_i50.GooglePlacesRepository>()));
    gh.factory<_i82.GooglePlacesCubit>(() => _i82.GooglePlacesCubit(
          fetchSuggestions: gh<_i80.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i79.FetchPlaceDetails>(),
        ));
    gh.factory<_i83.LoginSignupCubit>(() => _i83.LoginSignupCubit(
          registerUser: gh<_i64.RegisterUser>(),
          loginUser: gh<_i60.LoginUser>(),
          recoverPassword: gh<_i63.RecoverPassword>(),
        ));
    gh.factoryParam<_i84.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i84.NewDayTripCubit(
          createDayTrip: gh<_i75.CreateDayTrip>(),
          tripId: tripId,
        ));
    gh.factory<_i85.NewTripCubit>(() => _i85.NewTripCubit(
          gh<_i73.UserCubit>(),
          gh<_i39.CreateTrip>(),
        ));
    gh.factoryParam<_i86.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i86.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i40.CreateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i71.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.lazySingleton<_i87.SettingsCubit>(() => _i87.SettingsCubit(
          updateSettings: gh<_i70.UpdateSettings>(),
          userCubit: gh<_i73.UserCubit>(),
        ));
    gh.factoryParam<_i88.TripCubit, _i77.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i88.TripCubit(
          trip: trip,
          saveTrip: gh<_i28.UpdateTrip>(),
          deleteTrip: gh<_i46.DeleteTrip>(),
          listenDayTrips: gh<_i56.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i69.UpdateDayTripsIndexes>(),
          crashlytics: gh<_i6.FirebaseCrashlytics>(),
        ));
    gh.factoryParam<_i89.TripStopCubit, _i89.TripStopCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i89.TripStopCubit(
          params: params,
          tripStopDone: gh<_i66.TripStopDone>(),
          updateTripStopNote: gh<_i30.UpdateTripStopNote>(),
          deleteTripStop: gh<_i47.DeleteTripStop>(),
          updateTripStop: gh<_i29.UpdateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i71.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.factoryParam<_i90.TripStopsMapCubit, _i77.Trip, _i78.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i90.TripStopsMapCubit(
          fetchPolylinePoints: gh<_i81.FetchTripStopsDirections>(),
          saveTripStopsDirections: gh<_i65.SaveTripStopsDirections>(),
          listenDayTrip: gh<_i55.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i71.UpdateTripStopsDirectionsUpToDate>(),
          crashlytics: gh<_i6.FirebaseCrashlytics>(),
          trip: trip,
          dayTrip: dayTrip,
        ));
    gh.factory<_i91.TripsCubit>(() => _i91.TripsCubit(
          gh<_i58.ListenTrips>(),
          gh<_i73.UserCubit>(),
          gh<_i6.FirebaseCrashlytics>(),
        ));
    return this;
  }
}

class _$Network extends _i92.Network {}

class _$FirebaseModule extends _i92.FirebaseModule {}

class _$RegisterModule extends _i92.RegisterModule {}

class _$GooglePlacesModule extends _i92.GooglePlacesModule {}
