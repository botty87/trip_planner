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
import 'package:flutter_bloc/flutter_bloc.dart' as _i38;
import 'package:flutter_polyline_points/flutter_polyline_points.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i10;
import 'package:logger/logger.dart' as _i11;
import 'package:webview_flutter/webview_flutter.dart' as _i37;

import '../../features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i43;
import '../../features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i45;
import '../../features/day_trips/domain/entities/day_trip.dart' as _i81;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i44;
import '../../features/day_trips/domain/usecases/create_day_trip.dart' as _i78;
import '../../features/day_trips/domain/usecases/delete_day_trip.dart' as _i46;
import '../../features/day_trips/domain/usecases/listen_day_trip.dart' as _i56;
import '../../features/day_trips/domain/usecases/listen_day_trips.dart' as _i57;
import '../../features/day_trips/domain/usecases/save_trip_stops_directions.dart'
    as _i66;
import '../../features/day_trips/domain/usecases/update_day_trip.dart' as _i68;
import '../../features/day_trips/domain/usecases/update_day_trip_show_directions.dart'
    as _i69;
import '../../features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i70;
import '../../features/day_trips/domain/usecases/update_day_trip_use_different_directions_colors.dart'
    as _i71;
import '../../features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i72;
import '../../features/day_trips/domain/usecases/update_trip_stops_directions_up_to_date.dart'
    as _i74;
import '../../features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart'
    as _i79;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i87;
import '../../features/day_trips/presentation/cubit/trip_stops_map/trip_stops_map_cubit.dart'
    as _i93;
import '../../features/google_places/data/datasources/google_places_data_source.dart'
    as _i50;
import '../../features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i52;
import '../../features/google_places/domain/repositories/google_places_repository.dart'
    as _i51;
import '../../features/google_places/domain/usecases/fetch_place_details.dart'
    as _i82;
import '../../features/google_places/domain/usecases/fetch_polyline_points.dart'
    as _i84;
import '../../features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i83;
import '../../features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i85;
import '../../features/import_old_trips/data/datasources/old_trips_data_source.dart'
    as _i13;
import '../../features/import_old_trips/data/repositories/old_trips_repository_impl.dart'
    as _i15;
import '../../features/import_old_trips/domain/repositories/old_trips_repository.dart'
    as _i14;
import '../../features/import_old_trips/domain/usecases/import_old_trip.dart'
    as _i53;
import '../../features/import_old_trips/domain/usecases/read_old_trips.dart'
    as _i17;
import '../../features/import_old_trips/presentation/cubit/import_old_trips_cubit.dart'
    as _i54;
import '../../features/info_contacts/presentation/cubit/info_contacts_cubit.dart'
    as _i9;
import '../../features/settings/domain/entities/settings.dart' as _i18;
import '../../features/settings/domain/usecases/update_settings.dart' as _i73;
import '../../features/settings/presentation/cubit/settings_cubit.dart' as _i90;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i21;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i23;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i22;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i41;
import '../../features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i48;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i58;
import '../../features/trip_stops/domain/usecases/trip_stop_done.dart' as _i67;
import '../../features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i28;
import '../../features/trip_stops/domain/usecases/update_trip_stop.dart'
    as _i30;
import '../../features/trip_stops/domain/usecases/update_trip_stop_note.dart'
    as _i31;
import '../../features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i32;
import '../../features/trip_stops/presentation/cubit/map/cubit/map_cubit.dart'
    as _i12;
import '../../features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart'
    as _i89;
import '../../features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart'
    as _i92;
import '../../features/trips/data/datasources/trips_data_source.dart' as _i25;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i27;
import '../../features/trips/domain/entities/trip.dart' as _i80;
import '../../features/trips/domain/repositories/trips_repository.dart' as _i26;
import '../../features/trips/domain/usecases/create_trip.dart' as _i40;
import '../../features/trips/domain/usecases/delete_trip.dart' as _i47;
import '../../features/trips/domain/usecases/listen_trips.dart' as _i59;
import '../../features/trips/domain/usecases/update_trip.dart' as _i29;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i88;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart' as _i91;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart' as _i94;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i33;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i35;
import '../../features/user_account/domain/entities/user.dart' as _i55;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i34;
import '../../features/user_account/domain/usecases/delete_user.dart' as _i49;
import '../../features/user_account/domain/usecases/listen_user.dart' as _i60;
import '../../features/user_account/domain/usecases/login_user.dart' as _i61;
import '../../features/user_account/domain/usecases/logout_user.dart' as _i62;
import '../../features/user_account/domain/usecases/reauthenticate_user.dart'
    as _i63;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i64;
import '../../features/user_account/domain/usecases/register_user.dart' as _i65;
import '../../features/user_account/domain/usecases/update_user_details.dart'
    as _i75;
import '../../features/user_account/presentation/cubit/account_page/account_cubit.dart'
    as _i77;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i86;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i76;
import '../bloc_observer.dart' as _i39;
import '../db/day_trips_collection_ref.dart' as _i42;
import '../db/settings_collection_ref.dart' as _i19;
import '../db/trip_stops_collection_ref.dart' as _i20;
import '../db/trips_collection_ref.dart' as _i24;
import '../db/users_collection_ref.dart' as _i36;
import '../routes/app_router.dart' as _i3;
import 'di.dart' as _i95;

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
    final settingsModule = _$SettingsModule();
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
    gh.factory<_i18.Settings>(() => settingsModule.settings);
    gh.factory<_i19.SettingsCollectionRef>(
        () => _i19.SettingsCollectionRef(gh<_i8.FirebaseFirestore>()));
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
    gh.factoryParam<_i20.TripStopsCollectionRef, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i20.TripStopsCollectionRef(
          gh<_i8.FirebaseFirestore>(),
          tripId,
          dayTripId,
        ));
    gh.lazySingleton<_i21.TripStopsDataSource>(
        () => _i21.TripStopsDataSourceImpl(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i22.TripStopsRepository>(
        () => _i23.TripStopsRepositoryImpl(gh<_i21.TripStopsDataSource>()));
    gh.factory<_i24.TripsCollectionRef>(
        () => _i24.TripsCollectionRef(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i25.TripsDataSource>(
        () => _i25.TripsDataSourceImpl(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i26.TripsRepository>(() =>
        _i27.TripsRepositoryImpl(tripsDataSource: gh<_i25.TripsDataSource>()));
    gh.lazySingleton<_i28.UpdateTravelTime>(
        () => _i28.UpdateTravelTime(gh<_i22.TripStopsRepository>()));
    gh.lazySingleton<_i29.UpdateTrip>(
        () => _i29.UpdateTrip(gh<_i26.TripsRepository>()));
    gh.lazySingleton<_i30.UpdateTripStop>(
        () => _i30.UpdateTripStop(gh<_i22.TripStopsRepository>()));
    gh.lazySingleton<_i31.UpdateTripStopNote>(
        () => _i31.UpdateTripStopNote(gh<_i22.TripStopsRepository>()));
    gh.lazySingleton<_i32.UpdateTripStopsIndexes>(
        () => _i32.UpdateTripStopsIndexes(gh<_i22.TripStopsRepository>()));
    gh.lazySingleton<_i33.UserDataSource>(() => _i33.UserDataSourceImpl(
          gh<_i5.FirebaseAuth>(),
          gh<_i8.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i34.UserRepository>(
        () => _i35.UserRepositoryImpl(gh<_i33.UserDataSource>()));
    gh.factory<_i36.UsersCollectionRef>(
        () => _i36.UsersCollectionRef(gh<_i8.FirebaseFirestore>()));
    gh.factory<_i37.WebViewController>(() => network.webViewController);
    gh.lazySingleton<_i38.BlocObserver>(
        () => _i39.SimpleBlocObserver(logger: gh<_i11.Logger>()));
    gh.lazySingleton<_i40.CreateTrip>(
        () => _i40.CreateTrip(gh<_i26.TripsRepository>()));
    gh.lazySingleton<_i41.CreateTripStop>(
        () => _i41.CreateTripStop(gh<_i22.TripStopsRepository>()));
    gh.factoryParam<_i42.DayTripsCollectionRef, String, dynamic>((
      tripId,
      _,
    ) =>
        _i42.DayTripsCollectionRef(
          gh<_i8.FirebaseFirestore>(),
          tripId,
        ));
    gh.lazySingleton<_i43.DayTripsDataSource>(
        () => _i43.DayTripsDataSourceImpl(gh<_i8.FirebaseFirestore>()));
    gh.lazySingleton<_i44.DayTripsRepository>(
        () => _i45.DayTripsRepositoryImpl(gh<_i43.DayTripsDataSource>()));
    gh.lazySingleton<_i46.DeleteDayTrip>(
        () => _i46.DeleteDayTrip(gh<_i44.DayTripsRepository>()));
    gh.lazySingleton<_i47.DeleteTrip>(
        () => _i47.DeleteTrip(gh<_i26.TripsRepository>()));
    gh.lazySingleton<_i48.DeleteTripStop>(
        () => _i48.DeleteTripStop(gh<_i22.TripStopsRepository>()));
    gh.lazySingleton<_i49.DeleteUser>(() => _i49.DeleteUser(
          gh<_i34.UserRepository>(),
          gh<_i26.TripsRepository>(),
          gh<_i10.InternetConnection>(),
        ));
    gh.lazySingleton<_i50.GooglePlacesDataSource>(
        () => _i50.GooglePlacesDataSourceImpl(
              gh<_i4.Dio>(),
              gh<_i10.InternetConnection>(),
              gh<_i16.PolylinePoints>(),
              gh<String>(instanceName: 'googlePlacesKey'),
              gh<String>(instanceName: 'proxyUrl'),
            ));
    gh.lazySingleton<_i51.GooglePlacesRepository>(() =>
        _i52.GooglePlacesRepositoryImpl(gh<_i50.GooglePlacesDataSource>()));
    gh.lazySingleton<_i53.ImportOldTrips>(
        () => _i53.ImportOldTrips(gh<_i14.OldTripsRepository>()));
    gh.factoryParam<_i54.ImportOldTripsCubit, _i55.User, dynamic>((
      user,
      _,
    ) =>
        _i54.ImportOldTripsCubit(
          user: user,
          readOldTrips: gh<_i17.ReadOldTrips>(),
          importOldTrips: gh<_i53.ImportOldTrips>(),
        ));
    gh.lazySingleton<_i56.ListenDayTrip>(
        () => _i56.ListenDayTrip(gh<_i44.DayTripsRepository>()));
    gh.lazySingleton<_i57.ListenDayTrips>(
        () => _i57.ListenDayTrips(gh<_i44.DayTripsRepository>()));
    gh.lazySingleton<_i58.ListenTripStops>(
        () => _i58.ListenTripStops(gh<_i22.TripStopsRepository>()));
    gh.lazySingleton<_i59.ListenTrips>(
        () => _i59.ListenTrips(gh<_i26.TripsRepository>()));
    gh.lazySingleton<_i60.ListenUser>(
        () => _i60.ListenUser(gh<_i34.UserRepository>()));
    gh.lazySingleton<_i61.LoginUser>(
        () => _i61.LoginUser(gh<_i34.UserRepository>()));
    gh.lazySingleton<_i62.LogoutUser>(
        () => _i62.LogoutUser(gh<_i34.UserRepository>()));
    gh.lazySingleton<_i63.ReauthenticateUser>(
        () => _i63.ReauthenticateUser(gh<_i34.UserRepository>()));
    gh.lazySingleton<_i64.RecoverPassword>(
        () => _i64.RecoverPassword(gh<_i34.UserRepository>()));
    gh.lazySingleton<_i65.RegisterUser>(
        () => _i65.RegisterUser(gh<_i34.UserRepository>()));
    gh.lazySingleton<_i66.SaveTripStopsDirections>(
        () => _i66.SaveTripStopsDirections(gh<_i44.DayTripsRepository>()));
    gh.lazySingleton<_i67.TripStopDone>(
        () => _i67.TripStopDone(gh<_i22.TripStopsRepository>()));
    gh.lazySingleton<_i68.UpdateDayTrip>(
        () => _i68.UpdateDayTrip(gh<_i44.DayTripsRepository>()));
    gh.lazySingleton<_i69.UpdateDayTripShowDirections>(
        () => _i69.UpdateDayTripShowDirections(gh<_i44.DayTripsRepository>()));
    gh.lazySingleton<_i70.UpdateDayTripStartTime>(
        () => _i70.UpdateDayTripStartTime(gh<_i44.DayTripsRepository>()));
    gh.lazySingleton<_i71.UpdateDayTripUseDifferentDirectionsColors>(() =>
        _i71.UpdateDayTripUseDifferentDirectionsColors(
            gh<_i44.DayTripsRepository>()));
    gh.lazySingleton<_i72.UpdateDayTripsIndexes>(
        () => _i72.UpdateDayTripsIndexes(gh<_i44.DayTripsRepository>()));
    gh.lazySingleton<_i73.UpdateSettings>(
        () => _i73.UpdateSettings(gh<_i34.UserRepository>()));
    gh.lazySingleton<_i74.UpdateTripStopsDirectionsUpToDate>(() =>
        _i74.UpdateTripStopsDirectionsUpToDate(gh<_i44.DayTripsRepository>()));
    gh.lazySingleton<_i75.UpdateUserDetails>(
        () => _i75.UpdateUserDetails(gh<_i34.UserRepository>()));
    gh.lazySingleton<_i76.UserCubit>(
        () => _i76.UserCubit(listenUserState: gh<_i60.ListenUser>()));
    gh.factoryParam<_i77.AccountCubit, dynamic, dynamic>((
      user,
      _,
    ) =>
        _i77.AccountCubit(
          user: user,
          logoutUser: gh<_i62.LogoutUser>(),
          reauthenticateUser: gh<_i63.ReauthenticateUser>(),
          updateUserDetails: gh<_i75.UpdateUserDetails>(),
          deleteUser: gh<_i49.DeleteUser>(),
        ));
    gh.lazySingleton<_i78.CreateDayTrip>(
        () => _i78.CreateDayTrip(gh<_i44.DayTripsRepository>()));
    gh.factoryParam<_i79.DayTripCubit, _i80.Trip, _i81.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i79.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i68.UpdateDayTrip>(),
          deleteDayTrip: gh<_i46.DeleteDayTrip>(),
          listenTripStops: gh<_i58.ListenTripStops>(),
          updateDayTripStartTime: gh<_i70.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i32.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i28.UpdateTravelTime>(),
          tripStopDone: gh<_i67.TripStopDone>(),
          listenDayTrip: gh<_i56.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i74.UpdateTripStopsDirectionsUpToDate>(),
          crashlytics: gh<_i6.FirebaseCrashlytics>(),
        ));
    gh.lazySingleton<_i82.FetchPlaceDetails>(
        () => _i82.FetchPlaceDetails(gh<_i51.GooglePlacesRepository>()));
    gh.lazySingleton<_i83.FetchSuggestions>(
        () => _i83.FetchSuggestions(gh<_i51.GooglePlacesRepository>()));
    gh.lazySingleton<_i84.FetchTripStopsDirections>(
        () => _i84.FetchTripStopsDirections(gh<_i51.GooglePlacesRepository>()));
    gh.factory<_i85.GooglePlacesCubit>(() => _i85.GooglePlacesCubit(
          fetchSuggestions: gh<_i83.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i82.FetchPlaceDetails>(),
        ));
    gh.factory<_i86.LoginSignupCubit>(() => _i86.LoginSignupCubit(
          registerUser: gh<_i65.RegisterUser>(),
          loginUser: gh<_i61.LoginUser>(),
          recoverPassword: gh<_i64.RecoverPassword>(),
        ));
    gh.factoryParam<_i87.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i87.NewDayTripCubit(
          createDayTrip: gh<_i78.CreateDayTrip>(),
          settings: gh<_i18.Settings>(),
          tripId: tripId,
        ));
    gh.factory<_i88.NewTripCubit>(() => _i88.NewTripCubit(
          gh<_i76.UserCubit>(),
          gh<_i40.CreateTrip>(),
        ));
    gh.factoryParam<_i89.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i89.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i41.CreateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i74.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.lazySingleton<_i90.SettingsCubit>(() => _i90.SettingsCubit(
          updateSettings: gh<_i73.UpdateSettings>(),
          userCubit: gh<_i76.UserCubit>(),
        ));
    gh.factoryParam<_i91.TripCubit, _i80.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i91.TripCubit(
          trip: trip,
          saveTrip: gh<_i29.UpdateTrip>(),
          deleteTrip: gh<_i47.DeleteTrip>(),
          listenDayTrips: gh<_i57.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i72.UpdateDayTripsIndexes>(),
          crashlytics: gh<_i6.FirebaseCrashlytics>(),
        ));
    gh.factoryParam<_i92.TripStopCubit, _i92.TripStopCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i92.TripStopCubit(
          params: params,
          tripStopDone: gh<_i67.TripStopDone>(),
          updateTripStopNote: gh<_i31.UpdateTripStopNote>(),
          deleteTripStop: gh<_i48.DeleteTripStop>(),
          updateTripStop: gh<_i30.UpdateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i74.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.factoryParam<_i93.TripStopsMapCubit, _i80.Trip, _i81.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i93.TripStopsMapCubit(
          fetchPolylinePoints: gh<_i84.FetchTripStopsDirections>(),
          saveTripStopsDirections: gh<_i66.SaveTripStopsDirections>(),
          listenDayTrip: gh<_i56.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i74.UpdateTripStopsDirectionsUpToDate>(),
          updateDayTripShowDirections: gh<_i69.UpdateDayTripShowDirections>(),
          updateDayTripUseDifferentDirectionsColors:
              gh<_i71.UpdateDayTripUseDifferentDirectionsColors>(),
          crashlytics: gh<_i6.FirebaseCrashlytics>(),
          trip: trip,
          dayTrip: dayTrip,
        ));
    gh.factory<_i94.TripsCubit>(() => _i94.TripsCubit(
          gh<_i59.ListenTrips>(),
          gh<_i76.UserCubit>(),
          gh<_i6.FirebaseCrashlytics>(),
        ));
    return this;
  }
}

class _$Network extends _i95.Network {}

class _$FirebaseModule extends _i95.FirebaseModule {}

class _$RegisterModule extends _i95.RegisterModule {}

class _$GooglePlacesModule extends _i95.GooglePlacesModule {}

class _$SettingsModule extends _i90.SettingsModule {}
