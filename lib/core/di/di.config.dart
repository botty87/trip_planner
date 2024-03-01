// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i20;

import 'package:cloud_firestore/cloud_firestore.dart' as _i13;
import 'package:dio/dio.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i10;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i11;
import 'package:firebase_database/firebase_database.dart' as _i12;
import 'package:firebase_storage/firebase_storage.dart' as _i14;
import 'package:flutter_bloc/flutter_bloc.dart' as _i50;
import 'package:flutter_polyline_points/flutter_polyline_points.dart' as _i27;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i19;
import 'package:logger/logger.dart' as _i21;
import 'package:webview_flutter/webview_flutter.dart' as _i48;

import '../../features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i56;
import '../../features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i58;
import '../../features/day_trips/domain/entities/day_trip.dart' as _i99;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i57;
import '../../features/day_trips/domain/usecases/create_day_trip.dart' as _i96;
import '../../features/day_trips/domain/usecases/delete_day_trip.dart' as _i59;
import '../../features/day_trips/domain/usecases/listen_day_trip.dart' as _i72;
import '../../features/day_trips/domain/usecases/listen_day_trips.dart' as _i73;
import '../../features/day_trips/domain/usecases/save_trip_stops_directions.dart'
    as _i82;
import '../../features/day_trips/domain/usecases/update_day_trip.dart' as _i85;
import '../../features/day_trips/domain/usecases/update_day_trip_show_directions.dart'
    as _i86;
import '../../features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i87;
import '../../features/day_trips/domain/usecases/update_day_trip_use_different_directions_colors.dart'
    as _i88;
import '../../features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i89;
import '../../features/day_trips/domain/usecases/update_trip_stops_directions_up_to_date.dart'
    as _i91;
import '../../features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart'
    as _i97;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i105;
import '../../features/day_trips/presentation/cubit/trip_stops_map/trip_stops_map_cubit.dart'
    as _i111;
import '../../features/discover_new_trips/data/datasources/discover_trips_data_source.dart'
    as _i7;
import '../../features/discover_new_trips/data/repositories/discover_trips_repository_impl.dart'
    as _i9;
import '../../features/discover_new_trips/domain/repositories/discover_trips_repository.dart'
    as _i8;
import '../../features/discover_new_trips/domain/usecases/get_public_day_trips.dart'
    as _i15;
import '../../features/discover_new_trips/domain/usecases/get_public_trip_stops.dart'
    as _i16;
import '../../features/discover_new_trips/domain/usecases/get_public_trips.dart'
    as _i17;
import '../../features/discover_new_trips/presentation/cubit/daily_trips/discover_new_daily_trips_cubit.dart'
    as _i63;
import '../../features/discover_new_trips/presentation/cubit/trip_stop/discover_new_trip_stop_cubit.dart'
    as _i5;
import '../../features/discover_new_trips/presentation/cubit/trip_stops/discover_new_trip_stops_cubit.dart'
    as _i64;
import '../../features/discover_new_trips/presentation/cubit/trips/discover_new_trips_cubit.dart'
    as _i65;
import '../../features/google_places/data/datasources/google_places_data_source.dart'
    as _i66;
import '../../features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i68;
import '../../features/google_places/domain/repositories/google_places_repository.dart'
    as _i67;
import '../../features/google_places/domain/usecases/fetch_place_details.dart'
    as _i100;
import '../../features/google_places/domain/usecases/fetch_polyline_points.dart'
    as _i102;
import '../../features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i101;
import '../../features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i103;
import '../../features/import_old_trips/data/datasources/old_trips_data_source.dart'
    as _i24;
import '../../features/import_old_trips/data/repositories/old_trips_repository_impl.dart'
    as _i26;
import '../../features/import_old_trips/domain/repositories/old_trips_repository.dart'
    as _i25;
import '../../features/import_old_trips/domain/usecases/import_old_trip.dart'
    as _i69;
import '../../features/import_old_trips/domain/usecases/read_old_trips.dart'
    as _i28;
import '../../features/import_old_trips/presentation/cubit/import_old_trips_cubit.dart'
    as _i70;
import '../../features/info_contacts/presentation/cubit/info_contacts_cubit.dart'
    as _i18;
import '../../features/map/presentation/cubit/map_cubit.dart' as _i22;
import '../../features/settings/domain/entities/settings.dart' as _i29;
import '../../features/settings/domain/usecases/update_settings.dart' as _i90;
import '../../features/settings/presentation/cubit/settings_cubit.dart'
    as _i108;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i32;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i34;
import '../../features/trip_stops/domain/entities/trip_stop.dart' as _i6;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i33;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i54;
import '../../features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i61;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i74;
import '../../features/trip_stops/domain/usecases/trip_stop_done.dart' as _i83;
import '../../features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i39;
import '../../features/trip_stops/domain/usecases/update_trip_stop.dart'
    as _i41;
import '../../features/trip_stops/domain/usecases/update_trip_stop_note.dart'
    as _i42;
import '../../features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i43;
import '../../features/trip_stops/presentation/cubit/map/cubit/map_cubit.dart'
    as _i23;
import '../../features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart'
    as _i107;
import '../../features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart'
    as _i110;
import '../../features/trips/data/datasources/trips_data_source.dart' as _i36;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i38;
import '../../features/trips/domain/entities/trip.dart' as _i98;
import '../../features/trips/domain/repositories/trips_repository.dart' as _i37;
import '../../features/trips/domain/usecases/create_from_existing_trip.dart'
    as _i52;
import '../../features/trips/domain/usecases/create_trip.dart' as _i53;
import '../../features/trips/domain/usecases/delete_trip.dart' as _i60;
import '../../features/trips/domain/usecases/listen_trips.dart' as _i75;
import '../../features/trips/domain/usecases/update_trip.dart' as _i40;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i106;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart' as _i109;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart' as _i84;
import '../../features/tutorial/domain/usecases/update_tutorials_data.dart'
    as _i92;
import '../../features/tutorial/presentation/cubit/tutorial_cubit.dart'
    as _i112;
import '../../features/ui/presentation/cubit/backgrounds_cubit.dart' as _i49;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i44;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i46;
import '../../features/user_account/domain/entities/user.dart' as _i71;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i45;
import '../../features/user_account/domain/usecases/delete_user.dart' as _i62;
import '../../features/user_account/domain/usecases/listen_user.dart' as _i76;
import '../../features/user_account/domain/usecases/login_user.dart' as _i77;
import '../../features/user_account/domain/usecases/logout_user.dart' as _i78;
import '../../features/user_account/domain/usecases/reauthenticate_user.dart'
    as _i79;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i80;
import '../../features/user_account/domain/usecases/register_user.dart' as _i81;
import '../../features/user_account/domain/usecases/update_user_details.dart'
    as _i93;
import '../../features/user_account/presentation/cubit/account_page/account_cubit.dart'
    as _i95;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i104;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i94;
import '../bloc_observer.dart' as _i51;
import '../db/day_trips_collection_ref.dart' as _i55;
import '../db/settings_collection_ref.dart' as _i30;
import '../db/trip_stops_collection_ref.dart' as _i31;
import '../db/trips_collection_ref.dart' as _i35;
import '../db/users_collection_ref.dart' as _i47;
import '../routes/app_router.dart' as _i3;
import 'di.dart' as _i113;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final network = _$Network();
    final firebaseModule = _$FirebaseModule();
    final deviceModule = _$DeviceModule();
    final registerModule = _$RegisterModule();
    final googlePlacesModule = _$GooglePlacesModule();
    final settingsModule = _$SettingsModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.lazySingleton<_i4.Dio>(() => network.client);
    gh.factoryParam<_i5.DiscoverNewTripStopCubit, _i6.TripStop, dynamic>((
      tripStop,
      _,
    ) =>
        _i5.DiscoverNewTripStopCubit(tripStop: tripStop));
    gh.lazySingleton<_i7.DiscoverTripsDataSource>(
        () => _i7.DiscoverTripsDataSourceImpl());
    gh.lazySingleton<_i8.DiscoverTripsRepository>(() =>
        _i9.DiscoverTripsRepositoryImpl(gh<_i7.DiscoverTripsDataSource>()));
    gh.lazySingleton<_i10.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.lazySingleton<_i11.FirebaseCrashlytics>(
        () => firebaseModule.firebaseCrashlytics);
    gh.lazySingleton<_i12.FirebaseDatabase>(
        () => firebaseModule.firebaseDatabase);
    gh.lazySingleton<_i13.FirebaseFirestore>(
        () => firebaseModule.firebaseFirestore);
    gh.lazySingleton<_i14.FirebaseStorage>(
        () => firebaseModule.firebaseStorage);
    gh.lazySingleton<_i15.GetPublicDayTrips>(
        () => _i15.GetPublicDayTrips(gh<_i8.DiscoverTripsRepository>()));
    gh.lazySingleton<_i16.GetPublicTripStops>(
        () => _i16.GetPublicTripStops(gh<_i8.DiscoverTripsRepository>()));
    gh.lazySingleton<_i17.GetPublicTrips>(
        () => _i17.GetPublicTrips(gh<_i8.DiscoverTripsRepository>()));
    gh.factory<_i18.InfoContactsCubit>(() => _i18.InfoContactsCubit());
    gh.lazySingleton<_i19.InternetConnection>(() => network.internetConnection);
    await gh.factoryAsync<_i20.Locale>(
      () => deviceModule.deviceLocale,
      instanceName: 'deviceLocale',
      preResolve: true,
    );
    gh.lazySingleton<_i21.Logger>(() => registerModule.logger);
    gh.factoryParam<_i22.MapCubit, _i22.MapStateType, dynamic>((
      mapStateType,
      _,
    ) =>
        _i22.MapCubit(mapStateType: mapStateType));
    gh.factory<_i23.MapCubit>(() => _i23.MapCubit());
    gh.lazySingleton<_i24.OldTripsDataSource>(
        () => _i24.OldTripsDataSourceImpl(gh<_i12.FirebaseDatabase>()));
    gh.lazySingleton<_i25.OldTripsRepository>(
        () => _i26.OldTripsRepositoryImpl(gh<_i24.OldTripsDataSource>()));
    gh.lazySingleton<_i27.PolylinePoints>(
        () => googlePlacesModule.polylinePoints);
    gh.lazySingleton<_i28.ReadOldTrips>(
        () => _i28.ReadOldTrips(gh<_i25.OldTripsRepository>()));
    gh.factory<_i29.Settings>(() => settingsModule.settings);
    gh.factory<_i30.SettingsCollectionRef>(
        () => _i30.SettingsCollectionRef(gh<_i13.FirebaseFirestore>()));
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
    gh.factoryParam<_i31.TripStopsCollectionRef, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i31.TripStopsCollectionRef(
          gh<_i13.FirebaseFirestore>(),
          tripId,
          dayTripId,
        ));
    gh.lazySingleton<_i32.TripStopsDataSource>(
        () => _i32.TripStopsDataSourceImpl(gh<_i13.FirebaseFirestore>()));
    gh.lazySingleton<_i33.TripStopsRepository>(
        () => _i34.TripStopsRepositoryImpl(gh<_i32.TripStopsDataSource>()));
    gh.factory<_i35.TripsCollectionRef>(
        () => _i35.TripsCollectionRef(gh<_i13.FirebaseFirestore>()));
    gh.lazySingleton<_i36.TripsDataSource>(() => _i36.TripsDataSourceImpl(
          gh<_i13.FirebaseFirestore>(),
          gh<_i19.InternetConnection>(),
        ));
    gh.lazySingleton<_i37.TripsRepository>(() =>
        _i38.TripsRepositoryImpl(tripsDataSource: gh<_i36.TripsDataSource>()));
    gh.lazySingleton<_i39.UpdateTravelTime>(
        () => _i39.UpdateTravelTime(gh<_i33.TripStopsRepository>()));
    gh.lazySingleton<_i40.UpdateTrip>(
        () => _i40.UpdateTrip(gh<_i37.TripsRepository>()));
    gh.lazySingleton<_i41.UpdateTripStop>(
        () => _i41.UpdateTripStop(gh<_i33.TripStopsRepository>()));
    gh.lazySingleton<_i42.UpdateTripStopNote>(
        () => _i42.UpdateTripStopNote(gh<_i33.TripStopsRepository>()));
    gh.lazySingleton<_i43.UpdateTripStopsIndexes>(
        () => _i43.UpdateTripStopsIndexes(gh<_i33.TripStopsRepository>()));
    gh.lazySingleton<_i44.UserDataSource>(() => _i44.UserDataSourceImpl(
          gh<_i10.FirebaseAuth>(),
          gh<_i13.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i45.UserRepository>(
        () => _i46.UserRepositoryImpl(gh<_i44.UserDataSource>()));
    gh.factory<_i47.UsersCollectionRef>(
        () => _i47.UsersCollectionRef(gh<_i13.FirebaseFirestore>()));
    gh.factory<_i48.WebViewController>(() => network.webViewController);
    gh.factory<_i49.BackgroundsCubit>(() =>
        _i49.BackgroundsCubit(firebaseStorage: gh<_i14.FirebaseStorage>()));
    gh.lazySingleton<_i50.BlocObserver>(
        () => _i51.SimpleBlocObserver(logger: gh<_i21.Logger>()));
    gh.lazySingleton<_i52.CreateFromExistingTrip>(
        () => _i52.CreateFromExistingTrip(gh<_i37.TripsRepository>()));
    gh.lazySingleton<_i53.CreateTrip>(
        () => _i53.CreateTrip(gh<_i37.TripsRepository>()));
    gh.lazySingleton<_i54.CreateTripStop>(
        () => _i54.CreateTripStop(gh<_i33.TripStopsRepository>()));
    gh.factoryParam<_i55.DayTripsCollectionRef, String, dynamic>((
      tripId,
      _,
    ) =>
        _i55.DayTripsCollectionRef(
          gh<_i13.FirebaseFirestore>(),
          tripId,
        ));
    gh.lazySingleton<_i56.DayTripsDataSource>(
        () => _i56.DayTripsDataSourceImpl(gh<_i13.FirebaseFirestore>()));
    gh.lazySingleton<_i57.DayTripsRepository>(
        () => _i58.DayTripsRepositoryImpl(gh<_i56.DayTripsDataSource>()));
    gh.lazySingleton<_i59.DeleteDayTrip>(
        () => _i59.DeleteDayTrip(gh<_i57.DayTripsRepository>()));
    gh.lazySingleton<_i60.DeleteTrip>(
        () => _i60.DeleteTrip(gh<_i37.TripsRepository>()));
    gh.lazySingleton<_i61.DeleteTripStop>(
        () => _i61.DeleteTripStop(gh<_i33.TripStopsRepository>()));
    gh.lazySingleton<_i62.DeleteUser>(() => _i62.DeleteUser(
          gh<_i45.UserRepository>(),
          gh<_i37.TripsRepository>(),
          gh<_i19.InternetConnection>(),
        ));
    gh.factoryParam<_i63.DiscoverNewDailyTripsCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i63.DiscoverNewDailyTripsCubit(
          tripId: tripId,
          getPublicDayTrips: gh<_i15.GetPublicDayTrips>(),
        ));
    gh.factoryParam<_i64.DiscoverNewTripStopsCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i64.DiscoverNewTripStopsCubit(
          getPublicTripStops: gh<_i16.GetPublicTripStops>(),
          tripId: tripId,
          dayTripId: dayTripId,
        ));
    gh.factoryParam<_i65.DiscoverNewTripsCubit, String, dynamic>((
      userId,
      _,
    ) =>
        _i65.DiscoverNewTripsCubit(
          getPublicTrips: gh<_i17.GetPublicTrips>(),
          userId: userId,
        ));
    gh.lazySingleton<_i66.GooglePlacesDataSource>(
        () => _i66.GooglePlacesDataSourceImpl(
              gh<_i4.Dio>(),
              gh<_i19.InternetConnection>(),
              gh<_i27.PolylinePoints>(),
              gh<String>(instanceName: 'googlePlacesKey'),
              gh<String>(instanceName: 'proxyUrl'),
            ));
    gh.lazySingleton<_i67.GooglePlacesRepository>(() =>
        _i68.GooglePlacesRepositoryImpl(gh<_i66.GooglePlacesDataSource>()));
    gh.lazySingleton<_i69.ImportOldTrips>(
        () => _i69.ImportOldTrips(gh<_i25.OldTripsRepository>()));
    gh.factoryParam<_i70.ImportOldTripsCubit, _i71.User, dynamic>((
      user,
      _,
    ) =>
        _i70.ImportOldTripsCubit(
          user: user,
          readOldTrips: gh<_i28.ReadOldTrips>(),
          importOldTrips: gh<_i69.ImportOldTrips>(),
        ));
    gh.lazySingleton<_i72.ListenDayTrip>(
        () => _i72.ListenDayTrip(gh<_i57.DayTripsRepository>()));
    gh.lazySingleton<_i73.ListenDayTrips>(
        () => _i73.ListenDayTrips(gh<_i57.DayTripsRepository>()));
    gh.lazySingleton<_i74.ListenTripStops>(
        () => _i74.ListenTripStops(gh<_i33.TripStopsRepository>()));
    gh.lazySingleton<_i75.ListenTrips>(
        () => _i75.ListenTrips(gh<_i37.TripsRepository>()));
    gh.lazySingleton<_i76.ListenUser>(
        () => _i76.ListenUser(gh<_i45.UserRepository>()));
    gh.lazySingleton<_i77.LoginUser>(
        () => _i77.LoginUser(gh<_i45.UserRepository>()));
    gh.lazySingleton<_i78.LogoutUser>(
        () => _i78.LogoutUser(gh<_i45.UserRepository>()));
    gh.lazySingleton<_i79.ReauthenticateUser>(
        () => _i79.ReauthenticateUser(gh<_i45.UserRepository>()));
    gh.lazySingleton<_i80.RecoverPassword>(
        () => _i80.RecoverPassword(gh<_i45.UserRepository>()));
    gh.lazySingleton<_i81.RegisterUser>(
        () => _i81.RegisterUser(gh<_i45.UserRepository>()));
    gh.lazySingleton<_i82.SaveTripStopsDirections>(
        () => _i82.SaveTripStopsDirections(gh<_i57.DayTripsRepository>()));
    gh.lazySingleton<_i83.TripStopDone>(
        () => _i83.TripStopDone(gh<_i33.TripStopsRepository>()));
    gh.factoryParam<_i84.TripsCubit, String, dynamic>((
      userId,
      _,
    ) =>
        _i84.TripsCubit(
          listenTrips: gh<_i75.ListenTrips>(),
          crashlytics: gh<_i11.FirebaseCrashlytics>(),
          userId: userId,
        ));
    gh.lazySingleton<_i85.UpdateDayTrip>(
        () => _i85.UpdateDayTrip(gh<_i57.DayTripsRepository>()));
    gh.lazySingleton<_i86.UpdateDayTripShowDirections>(
        () => _i86.UpdateDayTripShowDirections(gh<_i57.DayTripsRepository>()));
    gh.lazySingleton<_i87.UpdateDayTripStartTime>(
        () => _i87.UpdateDayTripStartTime(gh<_i57.DayTripsRepository>()));
    gh.lazySingleton<_i88.UpdateDayTripUseDifferentDirectionsColors>(() =>
        _i88.UpdateDayTripUseDifferentDirectionsColors(
            gh<_i57.DayTripsRepository>()));
    gh.lazySingleton<_i89.UpdateDayTripsIndexes>(
        () => _i89.UpdateDayTripsIndexes(gh<_i57.DayTripsRepository>()));
    gh.lazySingleton<_i90.UpdateSettings>(
        () => _i90.UpdateSettings(gh<_i45.UserRepository>()));
    gh.lazySingleton<_i91.UpdateTripStopsDirectionsUpToDate>(() =>
        _i91.UpdateTripStopsDirectionsUpToDate(gh<_i57.DayTripsRepository>()));
    gh.lazySingleton<_i92.UpdateTutorialsData>(
        () => _i92.UpdateTutorialsData(gh<_i45.UserRepository>()));
    gh.lazySingleton<_i93.UpdateUserDetails>(
        () => _i93.UpdateUserDetails(gh<_i45.UserRepository>()));
    gh.lazySingleton<_i94.UserCubit>(
        () => _i94.UserCubit(listenUserState: gh<_i76.ListenUser>()));
    gh.factoryParam<_i95.AccountCubit, dynamic, dynamic>((
      user,
      _,
    ) =>
        _i95.AccountCubit(
          user: user,
          logoutUser: gh<_i78.LogoutUser>(),
          reauthenticateUser: gh<_i79.ReauthenticateUser>(),
          updateUserDetails: gh<_i93.UpdateUserDetails>(),
          deleteUser: gh<_i62.DeleteUser>(),
        ));
    gh.lazySingleton<_i96.CreateDayTrip>(
        () => _i96.CreateDayTrip(gh<_i57.DayTripsRepository>()));
    gh.factoryParam<_i97.DayTripCubit, _i98.Trip, _i99.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i97.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i85.UpdateDayTrip>(),
          deleteDayTrip: gh<_i59.DeleteDayTrip>(),
          listenTripStops: gh<_i74.ListenTripStops>(),
          updateDayTripStartTime: gh<_i87.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i43.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i39.UpdateTravelTime>(),
          tripStopDone: gh<_i83.TripStopDone>(),
          listenDayTrip: gh<_i72.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i91.UpdateTripStopsDirectionsUpToDate>(),
          deleteTripStop: gh<_i61.DeleteTripStop>(),
          crashlytics: gh<_i11.FirebaseCrashlytics>(),
        ));
    gh.lazySingleton<_i100.FetchPlaceDetails>(
        () => _i100.FetchPlaceDetails(gh<_i67.GooglePlacesRepository>()));
    gh.lazySingleton<_i101.FetchSuggestions>(
        () => _i101.FetchSuggestions(gh<_i67.GooglePlacesRepository>()));
    gh.lazySingleton<_i102.FetchTripStopsDirections>(() =>
        _i102.FetchTripStopsDirections(gh<_i67.GooglePlacesRepository>()));
    gh.factory<_i103.GooglePlacesCubit>(() => _i103.GooglePlacesCubit(
          fetchSuggestions: gh<_i101.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i100.FetchPlaceDetails>(),
        ));
    gh.factory<_i104.LoginSignupCubit>(() => _i104.LoginSignupCubit(
          registerUser: gh<_i81.RegisterUser>(),
          loginUser: gh<_i77.LoginUser>(),
          recoverPassword: gh<_i80.RecoverPassword>(),
        ));
    gh.factoryParam<_i105.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i105.NewDayTripCubit(
          createDayTrip: gh<_i96.CreateDayTrip>(),
          settings: gh<_i29.Settings>(),
          tripId: tripId,
        ));
    gh.factoryParam<_i106.NewTripCubit, _i98.Trip?, dynamic>((
      existingTrip,
      _,
    ) =>
        _i106.NewTripCubit(
          userCubit: gh<_i94.UserCubit>(),
          createTrip: gh<_i53.CreateTrip>(),
          createFromExistingTrip: gh<_i52.CreateFromExistingTrip>(),
          settings: gh<_i29.Settings>(),
          deviceLocale: gh<_i20.Locale>(instanceName: 'deviceLocale'),
          existingTrip: existingTrip,
        ));
    gh.factoryParam<_i107.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i107.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i54.CreateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i91.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.factory<_i108.SettingsCubit>(
        () => _i108.SettingsCubit(updateSettings: gh<_i90.UpdateSettings>()));
    gh.factoryParam<_i109.TripCubit, _i98.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i109.TripCubit(
          trip: trip,
          saveTrip: gh<_i40.UpdateTrip>(),
          deleteTrip: gh<_i60.DeleteTrip>(),
          listenDayTrips: gh<_i73.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i89.UpdateDayTripsIndexes>(),
          crashlytics: gh<_i11.FirebaseCrashlytics>(),
        ));
    gh.factoryParam<_i110.TripStopCubit, _i110.TripStopCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i110.TripStopCubit(
          params: params,
          tripStopDone: gh<_i83.TripStopDone>(),
          updateTripStopNote: gh<_i42.UpdateTripStopNote>(),
          deleteTripStop: gh<_i61.DeleteTripStop>(),
          updateTripStop: gh<_i41.UpdateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i91.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.factoryParam<_i111.TripStopsMapCubit, _i98.Trip, _i99.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i111.TripStopsMapCubit(
          fetchPolylinePoints: gh<_i102.FetchTripStopsDirections>(),
          saveTripStopsDirections: gh<_i82.SaveTripStopsDirections>(),
          listenDayTrip: gh<_i72.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i91.UpdateTripStopsDirectionsUpToDate>(),
          updateDayTripShowDirections: gh<_i86.UpdateDayTripShowDirections>(),
          updateDayTripUseDifferentDirectionsColors:
              gh<_i88.UpdateDayTripUseDifferentDirectionsColors>(),
          crashlytics: gh<_i11.FirebaseCrashlytics>(),
          trip: trip,
          dayTrip: dayTrip,
        ));
    gh.factory<_i112.TutorialCubit>(() =>
        _i112.TutorialCubit(hideShowWelcome: gh<_i92.UpdateTutorialsData>()));
    return this;
  }
}

class _$Network extends _i113.Network {}

class _$FirebaseModule extends _i113.FirebaseModule {}

class _$DeviceModule extends _i113.DeviceModule {}

class _$RegisterModule extends _i113.RegisterModule {}

class _$GooglePlacesModule extends _i113.GooglePlacesModule {}

class _$SettingsModule extends _i108.SettingsModule {}
