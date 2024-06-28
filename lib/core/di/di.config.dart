// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i23;

import 'package:cloud_firestore/cloud_firestore.dart' as _i12;
import 'package:dio/dio.dart' as _i9;
import 'package:firebase_auth/firebase_auth.dart' as _i11;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i13;
import 'package:firebase_database/firebase_database.dart' as _i14;
import 'package:firebase_storage/firebase_storage.dart' as _i15;
import 'package:flutter_bloc/flutter_bloc.dart' as _i17;
import 'package:flutter_polyline_points/flutter_polyline_points.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i10;
import 'package:package_info_plus/package_info_plus.dart' as _i4;
import 'package:talker_flutter/talker_flutter.dart' as _i18;
import 'package:webview_flutter/webview_flutter.dart' as _i3;

import '../../features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i20;
import '../../features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i22;
import '../../features/day_trips/domain/entities/day_trip.dart' as _i70;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i21;
import '../../features/day_trips/domain/usecases/create_day_trip.dart' as _i53;
import '../../features/day_trips/domain/usecases/delete_day_trip.dart' as _i48;
import '../../features/day_trips/domain/usecases/listen_day_trip.dart' as _i49;
import '../../features/day_trips/domain/usecases/listen_day_trips.dart' as _i55;
import '../../features/day_trips/domain/usecases/save_trip_stops_directions.dart'
    as _i50;
import '../../features/day_trips/domain/usecases/update_day_trip.dart' as _i54;
import '../../features/day_trips/domain/usecases/update_day_trip_show_directions.dart'
    as _i52;
import '../../features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i51;
import '../../features/day_trips/domain/usecases/update_day_trip_use_different_directions_colors.dart'
    as _i57;
import '../../features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i66;
import '../../features/day_trips/domain/usecases/update_trip_stops_directions_up_to_date.dart'
    as _i56;
import '../../features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart'
    as _i68;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i88;
import '../../features/day_trips/presentation/cubit/trip_stops_map/trip_stops_map_cubit.dart'
    as _i98;
import '../../features/discover_new_trips/data/datasources/discover_trips_data_source.dart'
    as _i24;
import '../../features/discover_new_trips/data/repositories/discover_trips_repository_impl.dart'
    as _i41;
import '../../features/discover_new_trips/domain/repositories/discover_trips_repository.dart'
    as _i40;
import '../../features/discover_new_trips/domain/usecases/get_public_day_trips.dart'
    as _i77;
import '../../features/discover_new_trips/domain/usecases/get_public_trip_stops.dart'
    as _i78;
import '../../features/discover_new_trips/domain/usecases/get_public_trips.dart'
    as _i79;
import '../../features/discover_new_trips/presentation/cubit/daily_trips/discover_new_daily_trips_cubit.dart'
    as _i103;
import '../../features/discover_new_trips/presentation/cubit/trip_stop/discover_new_trip_stop_cubit.dart'
    as _i25;
import '../../features/discover_new_trips/presentation/cubit/trip_stops/discover_new_trip_stops_cubit.dart'
    as _i93;
import '../../features/discover_new_trips/presentation/cubit/trips/discover_new_trips_cubit.dart'
    as _i101;
import '../../features/google_places/data/datasources/google_places_data_source.dart'
    as _i34;
import '../../features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i72;
import '../../features/google_places/domain/repositories/google_places_repository.dart'
    as _i71;
import '../../features/google_places/domain/usecases/fetch_place_details.dart'
    as _i75;
import '../../features/google_places/domain/usecases/fetch_polyline_points.dart'
    as _i74;
import '../../features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i73;
import '../../features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i91;
import '../../features/import_old_trips/data/datasources/old_trips_data_source.dart'
    as _i63;
import '../../features/import_old_trips/data/repositories/old_trips_repository_impl.dart'
    as _i90;
import '../../features/import_old_trips/domain/repositories/old_trips_repository.dart'
    as _i89;
import '../../features/import_old_trips/domain/usecases/import_old_trip.dart'
    as _i95;
import '../../features/import_old_trips/domain/usecases/read_old_trips.dart'
    as _i94;
import '../../features/import_old_trips/presentation/cubit/import_old_trips_cubit.dart'
    as _i99;
import '../../features/info_contacts/presentation/cubit/info_contacts_cubit.dart'
    as _i6;
import '../../features/map/presentation/cubit/map_cubit.dart' as _i45;
import '../../features/settings/domain/entities/settings.dart' as _i5;
import '../../features/settings/domain/usecases/update_settings.dart' as _i104;
import '../../features/settings/presentation/cubit/settings_cubit.dart'
    as _i117;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i27;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i33;
import '../../features/trip_stops/domain/entities/trip_stop.dart' as _i26;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i32;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i60;
import '../../features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i39;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i37;
import '../../features/trip_stops/domain/usecases/trip_stop_done.dart' as _i43;
import '../../features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i58;
import '../../features/trip_stops/domain/usecases/update_trip_stop.dart'
    as _i38;
import '../../features/trip_stops/domain/usecases/update_trip_stop_note.dart'
    as _i61;
import '../../features/trip_stops/domain/usecases/update_trip_stop_placeholder.dart'
    as _i59;
import '../../features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i62;
import '../../features/trip_stops/presentation/cubit/map/cubit/map_cubit.dart'
    as _i7;
import '../../features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart'
    as _i67;
import '../../features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart'
    as _i92;
import '../../features/trips/data/datasources/trips_data_source.dart' as _i19;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i47;
import '../../features/trips/domain/entities/trip.dart' as _i69;
import '../../features/trips/domain/repositories/trips_repository.dart' as _i46;
import '../../features/trips/domain/usecases/add_user_for_share.dart' as _i84;
import '../../features/trips/domain/usecases/create_from_existing_trip.dart'
    as _i83;
import '../../features/trips/domain/usecases/create_trip.dart' as _i80;
import '../../features/trips/domain/usecases/delete_trip.dart' as _i85;
import '../../features/trips/domain/usecases/listen_trip.dart' as _i65;
import '../../features/trips/domain/usecases/listen_trips.dart' as _i64;
import '../../features/trips/domain/usecases/remove_user_for_share.dart'
    as _i82;
import '../../features/trips/domain/usecases/update_trip.dart' as _i81;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i87;
import '../../features/trips/presentation/cubit/share/share_cubit.dart'
    as _i119;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart' as _i86;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart' as _i76;
import '../../features/tutorials/domain/usecases/update_tutorials_data.dart'
    as _i112;
import '../../features/tutorials/presentation/cubit/tutorial_cubit.dart'
    as _i116;
import '../../features/ui/presentation/cubit/backgrounds_cubit.dart' as _i42;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i44;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i97;
import '../../features/user_account/domain/entities/user.dart' as _i100;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i96;
import '../../features/user_account/domain/usecases/delete_user.dart' as _i102;
import '../../features/user_account/domain/usecases/get_users_names.dart'
    as _i110;
import '../../features/user_account/domain/usecases/listen_user.dart' as _i106;
import '../../features/user_account/domain/usecases/login_user.dart' as _i111;
import '../../features/user_account/domain/usecases/logout_user.dart' as _i105;
import '../../features/user_account/domain/usecases/reauthenticate_user.dart'
    as _i107;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i109;
import '../../features/user_account/domain/usecases/register_user.dart'
    as _i108;
import '../../features/user_account/domain/usecases/update_user_details.dart'
    as _i113;
import '../../features/user_account/presentation/cubit/account_page/account_cubit.dart'
    as _i114;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i115;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i118;
import '../db/day_trips_collection_ref.dart' as _i28;
import '../db/settings_collection_ref.dart' as _i29;
import '../db/trip_stops_collection_ref.dart' as _i35;
import '../db/trips_collection_ref.dart' as _i31;
import '../db/users_collection_ref.dart' as _i30;
import '../routes/app_router.dart' as _i8;
import '../utilities/logger.dart' as _i36;
import 'di.dart' as _i120;

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
    final deviceModule = _$DeviceModule();
    final settingsModule = _$SettingsModule();
    final firebaseModule = _$FirebaseModule();
    final googlePlacesModule = _$GooglePlacesModule();
    final blocObserModule = _$BlocObserModule();
    final talkerModule = _$TalkerModule();
    gh.factory<_i3.WebViewController>(() => network.webViewController);
    await gh.factoryAsync<_i4.PackageInfo>(
      () => deviceModule.packageInfo(),
      preResolve: true,
    );
    gh.factory<_i5.Settings>(() => settingsModule.settings);
    gh.factory<_i6.InfoContactsCubit>(() => _i6.InfoContactsCubit());
    gh.factory<_i7.MapCubit>(() => _i7.MapCubit());
    gh.singleton<_i8.AppRouter>(() => _i8.AppRouter());
    gh.lazySingleton<_i9.Dio>(() => network.client);
    gh.lazySingleton<_i10.InternetConnection>(() => network.internetConnection);
    gh.lazySingleton<_i11.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.lazySingleton<_i12.FirebaseFirestore>(
        () => firebaseModule.firebaseFirestore);
    gh.lazySingleton<_i13.FirebaseCrashlytics>(
        () => firebaseModule.firebaseCrashlytics);
    gh.lazySingleton<_i14.FirebaseDatabase>(
        () => firebaseModule.firebaseDatabase);
    gh.lazySingleton<_i15.FirebaseStorage>(
        () => firebaseModule.firebaseStorage);
    gh.lazySingleton<_i16.PolylinePoints>(
        () => googlePlacesModule.polylinePoints);
    gh.lazySingleton<_i17.BlocObserver>(() => blocObserModule.blocObserver);
    gh.lazySingleton<_i18.Talker>(() => talkerModule.talker);
    gh.lazySingleton<_i19.TripsDataSource>(() => _i19.TripsDataSourceImpl(
          gh<_i12.FirebaseFirestore>(),
          gh<_i10.InternetConnection>(),
        ));
    gh.lazySingleton<_i20.DayTripsDataSource>(
        () => _i20.DayTripsDataSourceImpl(gh<_i12.FirebaseFirestore>()));
    gh.lazySingleton<_i21.DayTripsRepository>(() => _i22.DayTripsRepositoryImpl(
          gh<_i20.DayTripsDataSource>(),
          gh<_i13.FirebaseCrashlytics>(),
        ));
    await gh.factoryAsync<_i23.Locale>(
      () => deviceModule.deviceLocale(),
      instanceName: 'deviceLocale',
      preResolve: true,
    );
    gh.lazySingleton<_i24.DiscoverTripsDataSource>(
        () => _i24.DiscoverTripsDataSourceImpl());
    gh.factoryParam<_i25.DiscoverNewTripStopCubit, _i26.TripStop, dynamic>((
      tripStop,
      _,
    ) =>
        _i25.DiscoverNewTripStopCubit(tripStop: tripStop));
    gh.lazySingleton<_i27.TripStopsDataSource>(
        () => _i27.TripStopsDataSourceImpl(gh<_i12.FirebaseFirestore>()));
    gh.lazySingleton<String>(
      () => googlePlacesModule.proxyUrl,
      instanceName: 'proxyUrl',
    );
    gh.factoryParam<_i28.DayTripsCollectionRef, String, dynamic>((
      tripId,
      _,
    ) =>
        _i28.DayTripsCollectionRef(
          gh<_i12.FirebaseFirestore>(),
          tripId,
        ));
    gh.lazySingleton<String>(
      () => googlePlacesModule.googlePlacesKey,
      instanceName: 'googlePlacesKey',
    );
    gh.factory<_i29.SettingsCollectionRef>(
        () => _i29.SettingsCollectionRef(gh<_i12.FirebaseFirestore>()));
    gh.factory<_i30.UsersCollectionRef>(
        () => _i30.UsersCollectionRef(gh<_i12.FirebaseFirestore>()));
    gh.factory<_i31.TripsCollectionRef>(
        () => _i31.TripsCollectionRef(gh<_i12.FirebaseFirestore>()));
    gh.lazySingleton<_i32.TripStopsRepository>(
        () => _i33.TripStopsRepositoryImpl(
              gh<_i27.TripStopsDataSource>(),
              gh<_i13.FirebaseCrashlytics>(),
            ));
    gh.lazySingleton<_i34.GooglePlacesDataSource>(
        () => _i34.GooglePlacesDataSourceImpl(
              gh<_i9.Dio>(),
              gh<_i10.InternetConnection>(),
              gh<_i16.PolylinePoints>(),
              gh<String>(instanceName: 'googlePlacesKey'),
              gh<String>(instanceName: 'proxyUrl'),
            ));
    gh.factoryParam<_i35.TripStopsCollectionRef, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i35.TripStopsCollectionRef(
          gh<_i12.FirebaseFirestore>(),
          tripId,
          dayTripId,
        ));
    gh.lazySingleton<String>(
      () => googlePlacesModule.googleMapKey,
      instanceName: 'googleMapKey',
    );
    gh.lazySingleton<_i36.CrashlyticsTalkerObserver>(
        () => _i36.CrashlyticsTalkerObserver(gh<_i13.FirebaseCrashlytics>()));
    gh.lazySingleton<_i37.ListenTripStops>(
        () => _i37.ListenTripStops(gh<_i32.TripStopsRepository>()));
    gh.lazySingleton<_i38.UpdateTripStop>(
        () => _i38.UpdateTripStop(gh<_i32.TripStopsRepository>()));
    gh.lazySingleton<_i39.DeleteTripStop>(
        () => _i39.DeleteTripStop(gh<_i32.TripStopsRepository>()));
    gh.lazySingleton<_i36.Logger>(() => _i36.LoggerTalker(gh<_i18.Talker>()));
    gh.lazySingleton<_i40.DiscoverTripsRepository>(
        () => _i41.DiscoverTripsRepositoryImpl(
              gh<_i24.DiscoverTripsDataSource>(),
              gh<_i13.FirebaseCrashlytics>(),
            ));
    gh.factory<_i42.BackgroundsCubit>(() =>
        _i42.BackgroundsCubit(firebaseStorage: gh<_i15.FirebaseStorage>()));
    gh.lazySingleton<_i43.TripStopDone>(
        () => _i43.TripStopDone(gh<_i32.TripStopsRepository>()));
    gh.lazySingleton<_i44.UserDataSource>(() => _i44.UserDataSourceImpl(
          gh<_i11.FirebaseAuth>(),
          gh<_i12.FirebaseFirestore>(),
          gh<_i10.InternetConnection>(),
        ));
    gh.factoryParam<_i45.MapCubit, _i45.MapStateType, dynamic>((
      mapStateType,
      _,
    ) =>
        _i45.MapCubit(mapStateType: mapStateType));
    gh.lazySingleton<_i46.TripsRepository>(() => _i47.TripsRepositoryImpl(
          gh<_i19.TripsDataSource>(),
          gh<_i13.FirebaseCrashlytics>(),
        ));
    gh.lazySingleton<_i48.DeleteDayTrip>(
        () => _i48.DeleteDayTrip(gh<_i21.DayTripsRepository>()));
    gh.lazySingleton<_i49.ListenDayTrip>(
        () => _i49.ListenDayTrip(gh<_i21.DayTripsRepository>()));
    gh.lazySingleton<_i50.SaveTripStopsDirections>(
        () => _i50.SaveTripStopsDirections(gh<_i21.DayTripsRepository>()));
    gh.lazySingleton<_i51.UpdateDayTripStartTime>(
        () => _i51.UpdateDayTripStartTime(gh<_i21.DayTripsRepository>()));
    gh.lazySingleton<_i52.UpdateDayTripShowDirections>(
        () => _i52.UpdateDayTripShowDirections(gh<_i21.DayTripsRepository>()));
    gh.lazySingleton<_i53.CreateDayTrip>(
        () => _i53.CreateDayTrip(gh<_i21.DayTripsRepository>()));
    gh.lazySingleton<_i54.UpdateDayTrip>(
        () => _i54.UpdateDayTrip(gh<_i21.DayTripsRepository>()));
    gh.lazySingleton<_i55.ListenDayTrips>(
        () => _i55.ListenDayTrips(gh<_i21.DayTripsRepository>()));
    gh.lazySingleton<_i56.UpdateTripStopsDirectionsUpToDate>(() =>
        _i56.UpdateTripStopsDirectionsUpToDate(gh<_i21.DayTripsRepository>()));
    gh.lazySingleton<_i57.UpdateDayTripUseDifferentDirectionsColors>(() =>
        _i57.UpdateDayTripUseDifferentDirectionsColors(
            gh<_i21.DayTripsRepository>()));
    gh.lazySingleton<_i58.UpdateTravelTime>(
        () => _i58.UpdateTravelTime(gh<_i32.TripStopsRepository>()));
    gh.lazySingleton<_i59.UpdateTripStopPlaceholder>(
        () => _i59.UpdateTripStopPlaceholder(gh<_i32.TripStopsRepository>()));
    gh.lazySingleton<_i60.CreateTripStop>(
        () => _i60.CreateTripStop(gh<_i32.TripStopsRepository>()));
    gh.lazySingleton<_i61.UpdateTripStopNote>(
        () => _i61.UpdateTripStopNote(gh<_i32.TripStopsRepository>()));
    gh.lazySingleton<_i62.UpdateTripStopsIndexes>(
        () => _i62.UpdateTripStopsIndexes(gh<_i32.TripStopsRepository>()));
    gh.lazySingleton<_i63.OldTripsDataSource>(
        () => _i63.OldTripsDataSourceImpl(gh<_i14.FirebaseDatabase>()));
    gh.lazySingleton<_i64.ListenUserTrips>(
        () => _i64.ListenUserTrips(gh<_i46.TripsRepository>()));
    gh.lazySingleton<_i64.ListenSharedTrips>(
        () => _i64.ListenSharedTrips(gh<_i46.TripsRepository>()));
    gh.lazySingleton<_i65.ListenTrip>(
        () => _i65.ListenTrip(gh<_i46.TripsRepository>()));
    gh.lazySingleton<_i66.UpdateDayTripsIndexes>(
        () => _i66.UpdateDayTripsIndexes(gh<_i21.DayTripsRepository>()));
    gh.factoryParam<_i67.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i67.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i60.CreateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i56.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.factoryParam<_i68.DayTripCubit, _i69.Trip, _i70.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i68.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i54.UpdateDayTrip>(),
          deleteDayTrip: gh<_i48.DeleteDayTrip>(),
          listenTripStops: gh<_i37.ListenTripStops>(),
          updateDayTripStartTime: gh<_i51.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i62.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i58.UpdateTravelTime>(),
          tripStopDone: gh<_i43.TripStopDone>(),
          listenDayTrip: gh<_i49.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i56.UpdateTripStopsDirectionsUpToDate>(),
          deleteTripStop: gh<_i39.DeleteTripStop>(),
          updateTripStopPlaceholder: gh<_i59.UpdateTripStopPlaceholder>(),
          crashlytics: gh<_i13.FirebaseCrashlytics>(),
        ));
    gh.lazySingleton<_i71.GooglePlacesRepository>(
        () => _i72.GooglePlacesRepositoryImpl(
              gh<_i34.GooglePlacesDataSource>(),
              gh<_i13.FirebaseCrashlytics>(),
            ));
    gh.lazySingleton<_i73.FetchSuggestions>(
        () => _i73.FetchSuggestions(gh<_i71.GooglePlacesRepository>()));
    gh.lazySingleton<_i74.FetchTripStopsDirections>(
        () => _i74.FetchTripStopsDirections(gh<_i71.GooglePlacesRepository>()));
    gh.lazySingleton<_i75.FetchPlaceDetails>(
        () => _i75.FetchPlaceDetails(gh<_i71.GooglePlacesRepository>()));
    gh.factoryParam<_i76.TripsCubit, String, dynamic>((
      userId,
      _,
    ) =>
        _i76.TripsCubit(
          listenUserTrips: gh<_i64.ListenUserTrips>(),
          listenSharedTrips: gh<_i64.ListenSharedTrips>(),
          crashlytics: gh<_i13.FirebaseCrashlytics>(),
          userId: userId,
        ));
    gh.lazySingleton<_i77.GetPublicDayTrips>(
        () => _i77.GetPublicDayTrips(gh<_i40.DiscoverTripsRepository>()));
    gh.lazySingleton<_i78.GetPublicTripStops>(
        () => _i78.GetPublicTripStops(gh<_i40.DiscoverTripsRepository>()));
    gh.lazySingleton<_i79.GetPublicTrips>(
        () => _i79.GetPublicTrips(gh<_i40.DiscoverTripsRepository>()));
    gh.lazySingleton<_i80.CreateTrip>(
        () => _i80.CreateTrip(gh<_i46.TripsRepository>()));
    gh.lazySingleton<_i81.UpdateTrip>(
        () => _i81.UpdateTrip(gh<_i46.TripsRepository>()));
    gh.lazySingleton<_i82.RemoveUserForShare>(
        () => _i82.RemoveUserForShare(gh<_i46.TripsRepository>()));
    gh.lazySingleton<_i83.CreateFromExistingTrip>(
        () => _i83.CreateFromExistingTrip(gh<_i46.TripsRepository>()));
    gh.lazySingleton<_i84.AddUserForShare>(
        () => _i84.AddUserForShare(gh<_i46.TripsRepository>()));
    gh.lazySingleton<_i85.DeleteTrip>(
        () => _i85.DeleteTrip(gh<_i46.TripsRepository>()));
    gh.factoryParam<_i86.TripCubit, _i69.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i86.TripCubit(
          trip: trip,
          saveTrip: gh<_i81.UpdateTrip>(),
          deleteTrip: gh<_i85.DeleteTrip>(),
          listenDayTrips: gh<_i55.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i66.UpdateDayTripsIndexes>(),
          listenTrip: gh<_i65.ListenTrip>(),
          removeUserForShare: gh<_i82.RemoveUserForShare>(),
          crashlytics: gh<_i13.FirebaseCrashlytics>(),
        ));
    gh.factoryParam<_i87.NewTripCubit, _i69.Trip?, String>((
      existingTrip,
      userId,
    ) =>
        _i87.NewTripCubit(
          createTrip: gh<_i80.CreateTrip>(),
          createFromExistingTrip: gh<_i83.CreateFromExistingTrip>(),
          settings: gh<_i5.Settings>(),
          deviceLocale: gh<_i23.Locale>(instanceName: 'deviceLocale'),
          existingTrip: existingTrip,
          userId: userId,
        ));
    gh.factoryParam<_i88.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i88.NewDayTripCubit(
          createDayTrip: gh<_i53.CreateDayTrip>(),
          settings: gh<_i5.Settings>(),
          tripId: tripId,
        ));
    gh.lazySingleton<_i89.OldTripsRepository>(() => _i90.OldTripsRepositoryImpl(
          gh<_i63.OldTripsDataSource>(),
          gh<_i13.FirebaseCrashlytics>(),
        ));
    gh.factory<_i91.GooglePlacesCubit>(() => _i91.GooglePlacesCubit(
          fetchSuggestions: gh<_i73.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i75.FetchPlaceDetails>(),
        ));
    gh.factoryParam<_i92.TripStopCubit, _i92.TripStopCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i92.TripStopCubit(
          params: params,
          tripStopDone: gh<_i43.TripStopDone>(),
          updateTripStopNote: gh<_i61.UpdateTripStopNote>(),
          deleteTripStop: gh<_i39.DeleteTripStop>(),
          updateTripStop: gh<_i38.UpdateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i56.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.factoryParam<_i93.DiscoverNewTripStopsCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i93.DiscoverNewTripStopsCubit(
          getPublicTripStops: gh<_i78.GetPublicTripStops>(),
          tripId: tripId,
          dayTripId: dayTripId,
        ));
    gh.lazySingleton<_i94.ReadOldTrips>(
        () => _i94.ReadOldTrips(gh<_i89.OldTripsRepository>()));
    gh.lazySingleton<_i95.ImportOldTrips>(
        () => _i95.ImportOldTrips(gh<_i89.OldTripsRepository>()));
    gh.lazySingleton<_i96.UserRepository>(() => _i97.UserRepositoryImpl(
          gh<_i44.UserDataSource>(),
          gh<_i13.FirebaseCrashlytics>(),
        ));
    gh.factoryParam<_i98.TripStopsMapCubit, _i69.Trip, _i70.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i98.TripStopsMapCubit(
          fetchPolylinePoints: gh<_i74.FetchTripStopsDirections>(),
          saveTripStopsDirections: gh<_i50.SaveTripStopsDirections>(),
          listenDayTrip: gh<_i49.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i56.UpdateTripStopsDirectionsUpToDate>(),
          updateDayTripShowDirections: gh<_i52.UpdateDayTripShowDirections>(),
          updateDayTripUseDifferentDirectionsColors:
              gh<_i57.UpdateDayTripUseDifferentDirectionsColors>(),
          crashlytics: gh<_i13.FirebaseCrashlytics>(),
          trip: trip,
          dayTrip: dayTrip,
        ));
    gh.factoryParam<_i99.ImportOldTripsCubit, _i100.User, dynamic>((
      user,
      _,
    ) =>
        _i99.ImportOldTripsCubit(
          user: user,
          readOldTrips: gh<_i94.ReadOldTrips>(),
          importOldTrips: gh<_i95.ImportOldTrips>(),
        ));
    gh.factoryParam<_i101.DiscoverNewTripsCubit, String, dynamic>((
      userId,
      _,
    ) =>
        _i101.DiscoverNewTripsCubit(
          getPublicTrips: gh<_i79.GetPublicTrips>(),
          userId: userId,
        ));
    gh.lazySingleton<_i102.DeleteUser>(() => _i102.DeleteUser(
          gh<_i96.UserRepository>(),
          gh<_i46.TripsRepository>(),
          gh<_i10.InternetConnection>(),
        ));
    gh.factoryParam<_i103.DiscoverNewDailyTripsCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i103.DiscoverNewDailyTripsCubit(
          tripId: tripId,
          getPublicDayTrips: gh<_i77.GetPublicDayTrips>(),
        ));
    gh.lazySingleton<_i104.UpdateSettings>(
        () => _i104.UpdateSettings(gh<_i96.UserRepository>()));
    gh.lazySingleton<_i105.LogoutUser>(
        () => _i105.LogoutUser(gh<_i96.UserRepository>()));
    gh.lazySingleton<_i106.ListenUser>(
        () => _i106.ListenUser(gh<_i96.UserRepository>()));
    gh.lazySingleton<_i107.ReauthenticateUser>(
        () => _i107.ReauthenticateUser(gh<_i96.UserRepository>()));
    gh.lazySingleton<_i108.RegisterUser>(
        () => _i108.RegisterUser(gh<_i96.UserRepository>()));
    gh.lazySingleton<_i109.RecoverPassword>(
        () => _i109.RecoverPassword(gh<_i96.UserRepository>()));
    gh.lazySingleton<_i110.GetUsersNames>(
        () => _i110.GetUsersNames(gh<_i96.UserRepository>()));
    gh.lazySingleton<_i111.LoginUser>(
        () => _i111.LoginUser(gh<_i96.UserRepository>()));
    gh.lazySingleton<_i112.UpdateTutorialsData>(
        () => _i112.UpdateTutorialsData(gh<_i96.UserRepository>()));
    gh.lazySingleton<_i113.UpdateUserDetails>(
        () => _i113.UpdateUserDetails(gh<_i96.UserRepository>()));
    gh.factoryParam<_i114.AccountCubit, dynamic, dynamic>((
      user,
      _,
    ) =>
        _i114.AccountCubit(
          user: user,
          logoutUser: gh<_i105.LogoutUser>(),
          reauthenticateUser: gh<_i107.ReauthenticateUser>(),
          updateUserDetails: gh<_i113.UpdateUserDetails>(),
          deleteUser: gh<_i102.DeleteUser>(),
        ));
    gh.factory<_i115.LoginSignupCubit>(() => _i115.LoginSignupCubit(
          registerUser: gh<_i108.RegisterUser>(),
          loginUser: gh<_i111.LoginUser>(),
          recoverPassword: gh<_i109.RecoverPassword>(),
        ));
    gh.factory<_i116.TutorialCubit>(() => _i116.TutorialCubit(
        updateTutorialsData: gh<_i112.UpdateTutorialsData>()));
    gh.factory<_i117.SettingsCubit>(
        () => _i117.SettingsCubit(updateSettings: gh<_i104.UpdateSettings>()));
    gh.lazySingleton<_i118.UserCubit>(
        () => _i118.UserCubit(listenUserState: gh<_i106.ListenUser>()));
    gh.factoryParam<_i119.ShareCubit, _i119.ShareCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i119.ShareCubit(
          params: params,
          addUserForShare: gh<_i84.AddUserForShare>(),
          removeUserForShare: gh<_i82.RemoveUserForShare>(),
          getUsersNames: gh<_i110.GetUsersNames>(),
        ));
    return this;
  }
}

class _$Network extends _i120.Network {}

class _$DeviceModule extends _i120.DeviceModule {}

class _$SettingsModule extends _i117.SettingsModule {}

class _$FirebaseModule extends _i120.FirebaseModule {}

class _$GooglePlacesModule extends _i120.GooglePlacesModule {}

class _$BlocObserModule extends _i120.BlocObserModule {}

class _$TalkerModule extends _i36.TalkerModule {}
