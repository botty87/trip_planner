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
import 'package:flutter_bloc/flutter_bloc.dart' as _i51;
import 'package:flutter_polyline_points/flutter_polyline_points.dart' as _i28;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i19;
import 'package:logger/logger.dart' as _i21;
import 'package:package_info_plus/package_info_plus.dart' as _i27;
import 'package:webview_flutter/webview_flutter.dart' as _i49;

import '../../features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i57;
import '../../features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i59;
import '../../features/day_trips/domain/entities/day_trip.dart' as _i100;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i58;
import '../../features/day_trips/domain/usecases/create_day_trip.dart' as _i97;
import '../../features/day_trips/domain/usecases/delete_day_trip.dart' as _i60;
import '../../features/day_trips/domain/usecases/listen_day_trip.dart' as _i73;
import '../../features/day_trips/domain/usecases/listen_day_trips.dart' as _i74;
import '../../features/day_trips/domain/usecases/save_trip_stops_directions.dart'
    as _i83;
import '../../features/day_trips/domain/usecases/update_day_trip.dart' as _i86;
import '../../features/day_trips/domain/usecases/update_day_trip_show_directions.dart'
    as _i87;
import '../../features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i88;
import '../../features/day_trips/domain/usecases/update_day_trip_use_different_directions_colors.dart'
    as _i89;
import '../../features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i90;
import '../../features/day_trips/domain/usecases/update_trip_stops_directions_up_to_date.dart'
    as _i92;
import '../../features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart'
    as _i98;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i106;
import '../../features/day_trips/presentation/cubit/trip_stops_map/trip_stops_map_cubit.dart'
    as _i112;
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
    as _i64;
import '../../features/discover_new_trips/presentation/cubit/trip_stop/discover_new_trip_stop_cubit.dart'
    as _i5;
import '../../features/discover_new_trips/presentation/cubit/trip_stops/discover_new_trip_stops_cubit.dart'
    as _i65;
import '../../features/discover_new_trips/presentation/cubit/trips/discover_new_trips_cubit.dart'
    as _i66;
import '../../features/google_places/data/datasources/google_places_data_source.dart'
    as _i67;
import '../../features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i69;
import '../../features/google_places/domain/repositories/google_places_repository.dart'
    as _i68;
import '../../features/google_places/domain/usecases/fetch_place_details.dart'
    as _i101;
import '../../features/google_places/domain/usecases/fetch_polyline_points.dart'
    as _i103;
import '../../features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i102;
import '../../features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i104;
import '../../features/import_old_trips/data/datasources/old_trips_data_source.dart'
    as _i24;
import '../../features/import_old_trips/data/repositories/old_trips_repository_impl.dart'
    as _i26;
import '../../features/import_old_trips/domain/repositories/old_trips_repository.dart'
    as _i25;
import '../../features/import_old_trips/domain/usecases/import_old_trip.dart'
    as _i70;
import '../../features/import_old_trips/domain/usecases/read_old_trips.dart'
    as _i29;
import '../../features/import_old_trips/presentation/cubit/import_old_trips_cubit.dart'
    as _i71;
import '../../features/info_contacts/presentation/cubit/info_contacts_cubit.dart'
    as _i18;
import '../../features/map/presentation/cubit/map_cubit.dart' as _i23;
import '../../features/settings/domain/entities/settings.dart' as _i30;
import '../../features/settings/domain/usecases/update_settings.dart' as _i91;
import '../../features/settings/presentation/cubit/settings_cubit.dart'
    as _i109;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i33;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i35;
import '../../features/trip_stops/domain/entities/trip_stop.dart' as _i6;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i34;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i55;
import '../../features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i62;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i75;
import '../../features/trip_stops/domain/usecases/trip_stop_done.dart' as _i84;
import '../../features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i40;
import '../../features/trip_stops/domain/usecases/update_trip_stop.dart'
    as _i42;
import '../../features/trip_stops/domain/usecases/update_trip_stop_note.dart'
    as _i43;
import '../../features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i44;
import '../../features/trip_stops/presentation/cubit/map/cubit/map_cubit.dart'
    as _i22;
import '../../features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart'
    as _i108;
import '../../features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart'
    as _i111;
import '../../features/trips/data/datasources/trips_data_source.dart' as _i37;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i39;
import '../../features/trips/domain/entities/trip.dart' as _i99;
import '../../features/trips/domain/repositories/trips_repository.dart' as _i38;
import '../../features/trips/domain/usecases/create_from_existing_trip.dart'
    as _i53;
import '../../features/trips/domain/usecases/create_trip.dart' as _i54;
import '../../features/trips/domain/usecases/delete_trip.dart' as _i61;
import '../../features/trips/domain/usecases/listen_trips.dart' as _i76;
import '../../features/trips/domain/usecases/update_trip.dart' as _i41;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i107;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart' as _i110;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart' as _i85;
import '../../features/tutorial/domain/usecases/update_tutorials_data.dart'
    as _i93;
import '../../features/tutorial/presentation/cubit/tutorial_cubit.dart'
    as _i113;
import '../../features/ui/presentation/cubit/backgrounds_cubit.dart' as _i50;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i45;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i47;
import '../../features/user_account/domain/entities/user.dart' as _i72;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i46;
import '../../features/user_account/domain/usecases/delete_user.dart' as _i63;
import '../../features/user_account/domain/usecases/listen_user.dart' as _i77;
import '../../features/user_account/domain/usecases/login_user.dart' as _i78;
import '../../features/user_account/domain/usecases/logout_user.dart' as _i79;
import '../../features/user_account/domain/usecases/reauthenticate_user.dart'
    as _i80;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i81;
import '../../features/user_account/domain/usecases/register_user.dart' as _i82;
import '../../features/user_account/domain/usecases/update_user_details.dart'
    as _i94;
import '../../features/user_account/presentation/cubit/account_page/account_cubit.dart'
    as _i96;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i105;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i95;
import '../bloc_observer.dart' as _i52;
import '../db/day_trips_collection_ref.dart' as _i56;
import '../db/settings_collection_ref.dart' as _i31;
import '../db/trip_stops_collection_ref.dart' as _i32;
import '../db/trips_collection_ref.dart' as _i36;
import '../db/users_collection_ref.dart' as _i48;
import '../routes/app_router.dart' as _i3;
import 'di.dart' as _i114;

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
    gh.factory<_i22.MapCubit>(() => _i22.MapCubit());
    gh.factoryParam<_i23.MapCubit, _i23.MapStateType, dynamic>((
      mapStateType,
      _,
    ) =>
        _i23.MapCubit(mapStateType: mapStateType));
    gh.lazySingleton<_i24.OldTripsDataSource>(
        () => _i24.OldTripsDataSourceImpl(gh<_i12.FirebaseDatabase>()));
    gh.lazySingleton<_i25.OldTripsRepository>(
        () => _i26.OldTripsRepositoryImpl(gh<_i24.OldTripsDataSource>()));
    await gh.factoryAsync<_i27.PackageInfo>(
      () => deviceModule.packageInfo,
      preResolve: true,
    );
    gh.lazySingleton<_i28.PolylinePoints>(
        () => googlePlacesModule.polylinePoints);
    gh.lazySingleton<_i29.ReadOldTrips>(
        () => _i29.ReadOldTrips(gh<_i25.OldTripsRepository>()));
    gh.factory<_i30.Settings>(() => settingsModule.settings);
    gh.factory<_i31.SettingsCollectionRef>(
        () => _i31.SettingsCollectionRef(gh<_i13.FirebaseFirestore>()));
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
    gh.factoryParam<_i32.TripStopsCollectionRef, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i32.TripStopsCollectionRef(
          gh<_i13.FirebaseFirestore>(),
          tripId,
          dayTripId,
        ));
    gh.lazySingleton<_i33.TripStopsDataSource>(
        () => _i33.TripStopsDataSourceImpl(gh<_i13.FirebaseFirestore>()));
    gh.lazySingleton<_i34.TripStopsRepository>(
        () => _i35.TripStopsRepositoryImpl(gh<_i33.TripStopsDataSource>()));
    gh.factory<_i36.TripsCollectionRef>(
        () => _i36.TripsCollectionRef(gh<_i13.FirebaseFirestore>()));
    gh.lazySingleton<_i37.TripsDataSource>(() => _i37.TripsDataSourceImpl(
          gh<_i13.FirebaseFirestore>(),
          gh<_i19.InternetConnection>(),
        ));
    gh.lazySingleton<_i38.TripsRepository>(() =>
        _i39.TripsRepositoryImpl(tripsDataSource: gh<_i37.TripsDataSource>()));
    gh.lazySingleton<_i40.UpdateTravelTime>(
        () => _i40.UpdateTravelTime(gh<_i34.TripStopsRepository>()));
    gh.lazySingleton<_i41.UpdateTrip>(
        () => _i41.UpdateTrip(gh<_i38.TripsRepository>()));
    gh.lazySingleton<_i42.UpdateTripStop>(
        () => _i42.UpdateTripStop(gh<_i34.TripStopsRepository>()));
    gh.lazySingleton<_i43.UpdateTripStopNote>(
        () => _i43.UpdateTripStopNote(gh<_i34.TripStopsRepository>()));
    gh.lazySingleton<_i44.UpdateTripStopsIndexes>(
        () => _i44.UpdateTripStopsIndexes(gh<_i34.TripStopsRepository>()));
    gh.lazySingleton<_i45.UserDataSource>(() => _i45.UserDataSourceImpl(
          gh<_i10.FirebaseAuth>(),
          gh<_i13.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i46.UserRepository>(
        () => _i47.UserRepositoryImpl(gh<_i45.UserDataSource>()));
    gh.factory<_i48.UsersCollectionRef>(
        () => _i48.UsersCollectionRef(gh<_i13.FirebaseFirestore>()));
    gh.factory<_i49.WebViewController>(() => network.webViewController);
    gh.factory<_i50.BackgroundsCubit>(() =>
        _i50.BackgroundsCubit(firebaseStorage: gh<_i14.FirebaseStorage>()));
    gh.lazySingleton<_i51.BlocObserver>(
        () => _i52.SimpleBlocObserver(logger: gh<_i21.Logger>()));
    gh.lazySingleton<_i53.CreateFromExistingTrip>(
        () => _i53.CreateFromExistingTrip(gh<_i38.TripsRepository>()));
    gh.lazySingleton<_i54.CreateTrip>(
        () => _i54.CreateTrip(gh<_i38.TripsRepository>()));
    gh.lazySingleton<_i55.CreateTripStop>(
        () => _i55.CreateTripStop(gh<_i34.TripStopsRepository>()));
    gh.factoryParam<_i56.DayTripsCollectionRef, String, dynamic>((
      tripId,
      _,
    ) =>
        _i56.DayTripsCollectionRef(
          gh<_i13.FirebaseFirestore>(),
          tripId,
        ));
    gh.lazySingleton<_i57.DayTripsDataSource>(
        () => _i57.DayTripsDataSourceImpl(gh<_i13.FirebaseFirestore>()));
    gh.lazySingleton<_i58.DayTripsRepository>(
        () => _i59.DayTripsRepositoryImpl(gh<_i57.DayTripsDataSource>()));
    gh.lazySingleton<_i60.DeleteDayTrip>(
        () => _i60.DeleteDayTrip(gh<_i58.DayTripsRepository>()));
    gh.lazySingleton<_i61.DeleteTrip>(
        () => _i61.DeleteTrip(gh<_i38.TripsRepository>()));
    gh.lazySingleton<_i62.DeleteTripStop>(
        () => _i62.DeleteTripStop(gh<_i34.TripStopsRepository>()));
    gh.lazySingleton<_i63.DeleteUser>(() => _i63.DeleteUser(
          gh<_i46.UserRepository>(),
          gh<_i38.TripsRepository>(),
          gh<_i19.InternetConnection>(),
        ));
    gh.factoryParam<_i64.DiscoverNewDailyTripsCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i64.DiscoverNewDailyTripsCubit(
          tripId: tripId,
          getPublicDayTrips: gh<_i15.GetPublicDayTrips>(),
        ));
    gh.factoryParam<_i65.DiscoverNewTripStopsCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i65.DiscoverNewTripStopsCubit(
          getPublicTripStops: gh<_i16.GetPublicTripStops>(),
          tripId: tripId,
          dayTripId: dayTripId,
        ));
    gh.factoryParam<_i66.DiscoverNewTripsCubit, String, dynamic>((
      userId,
      _,
    ) =>
        _i66.DiscoverNewTripsCubit(
          getPublicTrips: gh<_i17.GetPublicTrips>(),
          userId: userId,
        ));
    gh.lazySingleton<_i67.GooglePlacesDataSource>(
        () => _i67.GooglePlacesDataSourceImpl(
              gh<_i4.Dio>(),
              gh<_i19.InternetConnection>(),
              gh<_i28.PolylinePoints>(),
              gh<String>(instanceName: 'googlePlacesKey'),
              gh<String>(instanceName: 'proxyUrl'),
            ));
    gh.lazySingleton<_i68.GooglePlacesRepository>(() =>
        _i69.GooglePlacesRepositoryImpl(gh<_i67.GooglePlacesDataSource>()));
    gh.lazySingleton<_i70.ImportOldTrips>(
        () => _i70.ImportOldTrips(gh<_i25.OldTripsRepository>()));
    gh.factoryParam<_i71.ImportOldTripsCubit, _i72.User, dynamic>((
      user,
      _,
    ) =>
        _i71.ImportOldTripsCubit(
          user: user,
          readOldTrips: gh<_i29.ReadOldTrips>(),
          importOldTrips: gh<_i70.ImportOldTrips>(),
        ));
    gh.lazySingleton<_i73.ListenDayTrip>(
        () => _i73.ListenDayTrip(gh<_i58.DayTripsRepository>()));
    gh.lazySingleton<_i74.ListenDayTrips>(
        () => _i74.ListenDayTrips(gh<_i58.DayTripsRepository>()));
    gh.lazySingleton<_i75.ListenTripStops>(
        () => _i75.ListenTripStops(gh<_i34.TripStopsRepository>()));
    gh.lazySingleton<_i76.ListenTrips>(
        () => _i76.ListenTrips(gh<_i38.TripsRepository>()));
    gh.lazySingleton<_i77.ListenUser>(
        () => _i77.ListenUser(gh<_i46.UserRepository>()));
    gh.lazySingleton<_i78.LoginUser>(
        () => _i78.LoginUser(gh<_i46.UserRepository>()));
    gh.lazySingleton<_i79.LogoutUser>(
        () => _i79.LogoutUser(gh<_i46.UserRepository>()));
    gh.lazySingleton<_i80.ReauthenticateUser>(
        () => _i80.ReauthenticateUser(gh<_i46.UserRepository>()));
    gh.lazySingleton<_i81.RecoverPassword>(
        () => _i81.RecoverPassword(gh<_i46.UserRepository>()));
    gh.lazySingleton<_i82.RegisterUser>(
        () => _i82.RegisterUser(gh<_i46.UserRepository>()));
    gh.lazySingleton<_i83.SaveTripStopsDirections>(
        () => _i83.SaveTripStopsDirections(gh<_i58.DayTripsRepository>()));
    gh.lazySingleton<_i84.TripStopDone>(
        () => _i84.TripStopDone(gh<_i34.TripStopsRepository>()));
    gh.factoryParam<_i85.TripsCubit, String, dynamic>((
      userId,
      _,
    ) =>
        _i85.TripsCubit(
          listenTrips: gh<_i76.ListenTrips>(),
          crashlytics: gh<_i11.FirebaseCrashlytics>(),
          userId: userId,
        ));
    gh.lazySingleton<_i86.UpdateDayTrip>(
        () => _i86.UpdateDayTrip(gh<_i58.DayTripsRepository>()));
    gh.lazySingleton<_i87.UpdateDayTripShowDirections>(
        () => _i87.UpdateDayTripShowDirections(gh<_i58.DayTripsRepository>()));
    gh.lazySingleton<_i88.UpdateDayTripStartTime>(
        () => _i88.UpdateDayTripStartTime(gh<_i58.DayTripsRepository>()));
    gh.lazySingleton<_i89.UpdateDayTripUseDifferentDirectionsColors>(() =>
        _i89.UpdateDayTripUseDifferentDirectionsColors(
            gh<_i58.DayTripsRepository>()));
    gh.lazySingleton<_i90.UpdateDayTripsIndexes>(
        () => _i90.UpdateDayTripsIndexes(gh<_i58.DayTripsRepository>()));
    gh.lazySingleton<_i91.UpdateSettings>(
        () => _i91.UpdateSettings(gh<_i46.UserRepository>()));
    gh.lazySingleton<_i92.UpdateTripStopsDirectionsUpToDate>(() =>
        _i92.UpdateTripStopsDirectionsUpToDate(gh<_i58.DayTripsRepository>()));
    gh.lazySingleton<_i93.UpdateTutorialsData>(
        () => _i93.UpdateTutorialsData(gh<_i46.UserRepository>()));
    gh.lazySingleton<_i94.UpdateUserDetails>(
        () => _i94.UpdateUserDetails(gh<_i46.UserRepository>()));
    gh.lazySingleton<_i95.UserCubit>(
        () => _i95.UserCubit(listenUserState: gh<_i77.ListenUser>()));
    gh.factoryParam<_i96.AccountCubit, dynamic, dynamic>((
      user,
      _,
    ) =>
        _i96.AccountCubit(
          user: user,
          logoutUser: gh<_i79.LogoutUser>(),
          reauthenticateUser: gh<_i80.ReauthenticateUser>(),
          updateUserDetails: gh<_i94.UpdateUserDetails>(),
          deleteUser: gh<_i63.DeleteUser>(),
        ));
    gh.lazySingleton<_i97.CreateDayTrip>(
        () => _i97.CreateDayTrip(gh<_i58.DayTripsRepository>()));
    gh.factoryParam<_i98.DayTripCubit, _i99.Trip, _i100.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i98.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i86.UpdateDayTrip>(),
          deleteDayTrip: gh<_i60.DeleteDayTrip>(),
          listenTripStops: gh<_i75.ListenTripStops>(),
          updateDayTripStartTime: gh<_i88.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i44.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i40.UpdateTravelTime>(),
          tripStopDone: gh<_i84.TripStopDone>(),
          listenDayTrip: gh<_i73.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i92.UpdateTripStopsDirectionsUpToDate>(),
          deleteTripStop: gh<_i62.DeleteTripStop>(),
          crashlytics: gh<_i11.FirebaseCrashlytics>(),
        ));
    gh.lazySingleton<_i101.FetchPlaceDetails>(
        () => _i101.FetchPlaceDetails(gh<_i68.GooglePlacesRepository>()));
    gh.lazySingleton<_i102.FetchSuggestions>(
        () => _i102.FetchSuggestions(gh<_i68.GooglePlacesRepository>()));
    gh.lazySingleton<_i103.FetchTripStopsDirections>(() =>
        _i103.FetchTripStopsDirections(gh<_i68.GooglePlacesRepository>()));
    gh.factory<_i104.GooglePlacesCubit>(() => _i104.GooglePlacesCubit(
          fetchSuggestions: gh<_i102.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i101.FetchPlaceDetails>(),
        ));
    gh.factory<_i105.LoginSignupCubit>(() => _i105.LoginSignupCubit(
          registerUser: gh<_i82.RegisterUser>(),
          loginUser: gh<_i78.LoginUser>(),
          recoverPassword: gh<_i81.RecoverPassword>(),
        ));
    gh.factoryParam<_i106.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i106.NewDayTripCubit(
          createDayTrip: gh<_i97.CreateDayTrip>(),
          settings: gh<_i30.Settings>(),
          tripId: tripId,
        ));
    gh.factoryParam<_i107.NewTripCubit, _i99.Trip?, dynamic>((
      existingTrip,
      _,
    ) =>
        _i107.NewTripCubit(
          userCubit: gh<_i95.UserCubit>(),
          createTrip: gh<_i54.CreateTrip>(),
          createFromExistingTrip: gh<_i53.CreateFromExistingTrip>(),
          settings: gh<_i30.Settings>(),
          deviceLocale: gh<_i20.Locale>(instanceName: 'deviceLocale'),
          existingTrip: existingTrip,
        ));
    gh.factoryParam<_i108.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i108.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i55.CreateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i92.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.factory<_i109.SettingsCubit>(
        () => _i109.SettingsCubit(updateSettings: gh<_i91.UpdateSettings>()));
    gh.factoryParam<_i110.TripCubit, _i99.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i110.TripCubit(
          trip: trip,
          saveTrip: gh<_i41.UpdateTrip>(),
          deleteTrip: gh<_i61.DeleteTrip>(),
          listenDayTrips: gh<_i74.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i90.UpdateDayTripsIndexes>(),
          crashlytics: gh<_i11.FirebaseCrashlytics>(),
        ));
    gh.factoryParam<_i111.TripStopCubit, _i111.TripStopCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i111.TripStopCubit(
          params: params,
          tripStopDone: gh<_i84.TripStopDone>(),
          updateTripStopNote: gh<_i43.UpdateTripStopNote>(),
          deleteTripStop: gh<_i62.DeleteTripStop>(),
          updateTripStop: gh<_i42.UpdateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i92.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.factoryParam<_i112.TripStopsMapCubit, _i99.Trip, _i100.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i112.TripStopsMapCubit(
          fetchPolylinePoints: gh<_i103.FetchTripStopsDirections>(),
          saveTripStopsDirections: gh<_i83.SaveTripStopsDirections>(),
          listenDayTrip: gh<_i73.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i92.UpdateTripStopsDirectionsUpToDate>(),
          updateDayTripShowDirections: gh<_i87.UpdateDayTripShowDirections>(),
          updateDayTripUseDifferentDirectionsColors:
              gh<_i89.UpdateDayTripUseDifferentDirectionsColors>(),
          crashlytics: gh<_i11.FirebaseCrashlytics>(),
          trip: trip,
          dayTrip: dayTrip,
        ));
    gh.factory<_i113.TutorialCubit>(() =>
        _i113.TutorialCubit(hideShowWelcome: gh<_i93.UpdateTutorialsData>()));
    return this;
  }
}

class _$Network extends _i114.Network {}

class _$FirebaseModule extends _i114.FirebaseModule {}

class _$DeviceModule extends _i114.DeviceModule {}

class _$RegisterModule extends _i114.RegisterModule {}

class _$GooglePlacesModule extends _i114.GooglePlacesModule {}

class _$SettingsModule extends _i109.SettingsModule {}
