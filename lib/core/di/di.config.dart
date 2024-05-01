// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i24;

import 'package:cloud_firestore/cloud_firestore.dart' as _i13;
import 'package:dio/dio.dart' as _i10;
import 'package:firebase_auth/firebase_auth.dart' as _i12;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i14;
import 'package:firebase_database/firebase_database.dart' as _i15;
import 'package:firebase_storage/firebase_storage.dart' as _i16;
import 'package:flutter_bloc/flutter_bloc.dart' as _i18;
import 'package:flutter_polyline_points/flutter_polyline_points.dart' as _i17;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i11;
import 'package:logger/logger.dart' as _i9;
import 'package:package_info_plus/package_info_plus.dart' as _i4;
import 'package:webview_flutter/webview_flutter.dart' as _i3;

import '../../features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i21;
import '../../features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i23;
import '../../features/day_trips/domain/entities/day_trip.dart' as _i107;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i22;
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
    as _i67;
import '../../features/day_trips/domain/usecases/update_trip_stops_directions_up_to_date.dart'
    as _i56;
import '../../features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart'
    as _i106;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i98;
import '../../features/day_trips/presentation/cubit/trip_stops_map/trip_stops_map_cubit.dart'
    as _i108;
import '../../features/discover_new_trips/data/datasources/discover_trips_data_source.dart'
    as _i25;
import '../../features/discover_new_trips/data/repositories/discover_trips_repository_impl.dart'
    as _i41;
import '../../features/discover_new_trips/domain/repositories/discover_trips_repository.dart'
    as _i40;
import '../../features/discover_new_trips/domain/usecases/get_public_day_trips.dart'
    as _i76;
import '../../features/discover_new_trips/domain/usecases/get_public_trip_stops.dart'
    as _i77;
import '../../features/discover_new_trips/domain/usecases/get_public_trips.dart'
    as _i78;
import '../../features/discover_new_trips/presentation/cubit/daily_trips/discover_new_daily_trips_cubit.dart'
    as _i115;
import '../../features/discover_new_trips/presentation/cubit/trip_stop/discover_new_trip_stop_cubit.dart'
    as _i26;
import '../../features/discover_new_trips/presentation/cubit/trip_stops/discover_new_trip_stops_cubit.dart'
    as _i103;
import '../../features/discover_new_trips/presentation/cubit/trips/discover_new_trips_cubit.dart'
    as _i112;
import '../../features/google_places/data/datasources/google_places_data_source.dart'
    as _i35;
import '../../features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i71;
import '../../features/google_places/domain/repositories/google_places_repository.dart'
    as _i70;
import '../../features/google_places/domain/usecases/fetch_place_details.dart'
    as _i74;
import '../../features/google_places/domain/usecases/fetch_polyline_points.dart'
    as _i73;
import '../../features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i72;
import '../../features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i101;
import '../../features/import_old_trips/data/datasources/old_trips_data_source.dart'
    as _i64;
import '../../features/import_old_trips/data/repositories/old_trips_repository_impl.dart'
    as _i100;
import '../../features/import_old_trips/domain/repositories/old_trips_repository.dart'
    as _i99;
import '../../features/import_old_trips/domain/usecases/import_old_trip.dart'
    as _i105;
import '../../features/import_old_trips/domain/usecases/read_old_trips.dart'
    as _i104;
import '../../features/import_old_trips/presentation/cubit/import_old_trips_cubit.dart'
    as _i109;
import '../../features/info_contacts/presentation/cubit/info_contacts_cubit.dart'
    as _i6;
import '../../features/map/presentation/cubit/map_cubit.dart' as _i45;
import '../../features/settings/domain/entities/settings.dart' as _i5;
import '../../features/settings/domain/usecases/update_settings.dart' as _i87;
import '../../features/settings/presentation/cubit/settings_cubit.dart'
    as _i116;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i28;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i34;
import '../../features/trip_stops/domain/entities/trip_stop.dart' as _i27;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i33;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i61;
import '../../features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i39;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i37;
import '../../features/trip_stops/domain/usecases/trip_stop_done.dart' as _i43;
import '../../features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i60;
import '../../features/trip_stops/domain/usecases/update_trip_stop.dart'
    as _i38;
import '../../features/trip_stops/domain/usecases/update_trip_stop_note.dart'
    as _i62;
import '../../features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i63;
import '../../features/trip_stops/presentation/cubit/map/cubit/map_cubit.dart'
    as _i7;
import '../../features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart'
    as _i68;
import '../../features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart'
    as _i102;
import '../../features/trips/data/datasources/trips_data_source.dart' as _i20;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i47;
import '../../features/trips/domain/entities/trip.dart' as _i86;
import '../../features/trips/domain/repositories/trips_repository.dart' as _i46;
import '../../features/trips/domain/usecases/add_user_for_share.dart' as _i83;
import '../../features/trips/domain/usecases/create_from_existing_trip.dart'
    as _i82;
import '../../features/trips/domain/usecases/create_trip.dart' as _i79;
import '../../features/trips/domain/usecases/delete_trip.dart' as _i84;
import '../../features/trips/domain/usecases/listen_trip.dart' as _i66;
import '../../features/trips/domain/usecases/listen_trips.dart' as _i65;
import '../../features/trips/domain/usecases/remove_user_for_share.dart'
    as _i81;
import '../../features/trips/domain/usecases/update_trip.dart' as _i80;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i97;
import '../../features/trips/presentation/cubit/share/share_cubit.dart'
    as _i118;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart' as _i85;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart' as _i75;
import '../../features/tutorials/domain/usecases/update_tutorials_data.dart'
    as _i95;
import '../../features/tutorials/presentation/cubit/tutorial_cubit.dart'
    as _i114;
import '../../features/ui/presentation/cubit/backgrounds_cubit.dart' as _i42;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i44;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i59;
import '../../features/user_account/domain/entities/user.dart' as _i110;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i58;
import '../../features/user_account/domain/usecases/delete_user.dart' as _i69;
import '../../features/user_account/domain/usecases/get_users_names.dart'
    as _i93;
import '../../features/user_account/domain/usecases/listen_user.dart' as _i89;
import '../../features/user_account/domain/usecases/login_user.dart' as _i94;
import '../../features/user_account/domain/usecases/logout_user.dart' as _i88;
import '../../features/user_account/domain/usecases/reauthenticate_user.dart'
    as _i90;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i92;
import '../../features/user_account/domain/usecases/register_user.dart' as _i91;
import '../../features/user_account/domain/usecases/update_user_details.dart'
    as _i96;
import '../../features/user_account/presentation/cubit/account_page/account_cubit.dart'
    as _i111;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i113;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i117;
import '../bloc_observer.dart' as _i19;
import '../db/day_trips_collection_ref.dart' as _i29;
import '../db/settings_collection_ref.dart' as _i30;
import '../db/trip_stops_collection_ref.dart' as _i36;
import '../db/trips_collection_ref.dart' as _i32;
import '../db/users_collection_ref.dart' as _i31;
import '../routes/app_router.dart' as _i8;
import 'di.dart' as _i119;

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
    final registerModule = _$RegisterModule();
    final firebaseModule = _$FirebaseModule();
    final googlePlacesModule = _$GooglePlacesModule();
    gh.factory<_i3.WebViewController>(() => network.webViewController);
    await gh.factoryAsync<_i4.PackageInfo>(
      () => deviceModule.packageInfo(),
      preResolve: true,
    );
    gh.factory<_i5.Settings>(() => settingsModule.settings);
    gh.factory<_i6.InfoContactsCubit>(() => _i6.InfoContactsCubit());
    gh.factory<_i7.MapCubit>(() => _i7.MapCubit());
    gh.singleton<_i8.AppRouter>(() => _i8.AppRouter());
    gh.lazySingleton<_i9.Logger>(() => registerModule.logger);
    gh.lazySingleton<_i10.Dio>(() => network.client);
    gh.lazySingleton<_i11.InternetConnection>(() => network.internetConnection);
    gh.lazySingleton<_i12.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.lazySingleton<_i13.FirebaseFirestore>(
        () => firebaseModule.firebaseFirestore);
    gh.lazySingleton<_i14.FirebaseCrashlytics>(
        () => firebaseModule.firebaseCrashlytics);
    gh.lazySingleton<_i15.FirebaseDatabase>(
        () => firebaseModule.firebaseDatabase);
    gh.lazySingleton<_i16.FirebaseStorage>(
        () => firebaseModule.firebaseStorage);
    gh.lazySingleton<_i17.PolylinePoints>(
        () => googlePlacesModule.polylinePoints);
    gh.lazySingleton<_i18.BlocObserver>(
        () => _i19.SimpleBlocObserver(logger: gh<_i9.Logger>()));
    gh.lazySingleton<_i20.TripsDataSource>(() => _i20.TripsDataSourceImpl(
          gh<_i13.FirebaseFirestore>(),
          gh<_i11.InternetConnection>(),
        ));
    gh.lazySingleton<_i21.DayTripsDataSource>(
        () => _i21.DayTripsDataSourceImpl(gh<_i13.FirebaseFirestore>()));
    gh.lazySingleton<_i22.DayTripsRepository>(() => _i23.DayTripsRepositoryImpl(
          gh<_i21.DayTripsDataSource>(),
          gh<_i14.FirebaseCrashlytics>(),
        ));
    await gh.factoryAsync<_i24.Locale>(
      () => deviceModule.deviceLocale(),
      instanceName: 'deviceLocale',
      preResolve: true,
    );
    gh.lazySingleton<_i25.DiscoverTripsDataSource>(
        () => _i25.DiscoverTripsDataSourceImpl());
    gh.factoryParam<_i26.DiscoverNewTripStopCubit, _i27.TripStop, dynamic>((
      tripStop,
      _,
    ) =>
        _i26.DiscoverNewTripStopCubit(tripStop: tripStop));
    gh.lazySingleton<_i28.TripStopsDataSource>(
        () => _i28.TripStopsDataSourceImpl(gh<_i13.FirebaseFirestore>()));
    gh.lazySingleton<String>(
      () => googlePlacesModule.proxyUrl,
      instanceName: 'proxyUrl',
    );
    gh.factoryParam<_i29.DayTripsCollectionRef, String, dynamic>((
      tripId,
      _,
    ) =>
        _i29.DayTripsCollectionRef(
          gh<_i13.FirebaseFirestore>(),
          tripId,
        ));
    gh.lazySingleton<String>(
      () => googlePlacesModule.googlePlacesKey,
      instanceName: 'googlePlacesKey',
    );
    gh.factory<_i30.SettingsCollectionRef>(
        () => _i30.SettingsCollectionRef(gh<_i13.FirebaseFirestore>()));
    gh.factory<_i31.UsersCollectionRef>(
        () => _i31.UsersCollectionRef(gh<_i13.FirebaseFirestore>()));
    gh.factory<_i32.TripsCollectionRef>(
        () => _i32.TripsCollectionRef(gh<_i13.FirebaseFirestore>()));
    gh.lazySingleton<_i33.TripStopsRepository>(
        () => _i34.TripStopsRepositoryImpl(
              gh<_i28.TripStopsDataSource>(),
              gh<_i14.FirebaseCrashlytics>(),
            ));
    gh.lazySingleton<_i35.GooglePlacesDataSource>(
        () => _i35.GooglePlacesDataSourceImpl(
              gh<_i10.Dio>(),
              gh<_i11.InternetConnection>(),
              gh<_i17.PolylinePoints>(),
              gh<String>(instanceName: 'googlePlacesKey'),
              gh<String>(instanceName: 'proxyUrl'),
            ));
    gh.factoryParam<_i36.TripStopsCollectionRef, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i36.TripStopsCollectionRef(
          gh<_i13.FirebaseFirestore>(),
          tripId,
          dayTripId,
        ));
    gh.lazySingleton<String>(
      () => googlePlacesModule.googleMapKey,
      instanceName: 'googleMapKey',
    );
    gh.lazySingleton<_i37.ListenTripStops>(
        () => _i37.ListenTripStops(gh<_i33.TripStopsRepository>()));
    gh.lazySingleton<_i38.UpdateTripStop>(
        () => _i38.UpdateTripStop(gh<_i33.TripStopsRepository>()));
    gh.lazySingleton<_i39.DeleteTripStop>(
        () => _i39.DeleteTripStop(gh<_i33.TripStopsRepository>()));
    gh.lazySingleton<_i40.DiscoverTripsRepository>(
        () => _i41.DiscoverTripsRepositoryImpl(
              gh<_i25.DiscoverTripsDataSource>(),
              gh<_i14.FirebaseCrashlytics>(),
            ));
    gh.factory<_i42.BackgroundsCubit>(() =>
        _i42.BackgroundsCubit(firebaseStorage: gh<_i16.FirebaseStorage>()));
    gh.lazySingleton<_i43.TripStopDone>(
        () => _i43.TripStopDone(gh<_i33.TripStopsRepository>()));
    gh.lazySingleton<_i44.UserDataSource>(() => _i44.UserDataSourceImpl(
          gh<_i12.FirebaseAuth>(),
          gh<_i13.FirebaseFirestore>(),
          gh<_i11.InternetConnection>(),
        ));
    gh.factoryParam<_i45.MapCubit, _i45.MapStateType, dynamic>((
      mapStateType,
      _,
    ) =>
        _i45.MapCubit(mapStateType: mapStateType));
    gh.lazySingleton<_i46.TripsRepository>(() => _i47.TripsRepositoryImpl(
          gh<_i20.TripsDataSource>(),
          gh<_i14.FirebaseCrashlytics>(),
        ));
    gh.lazySingleton<_i48.DeleteDayTrip>(
        () => _i48.DeleteDayTrip(gh<_i22.DayTripsRepository>()));
    gh.lazySingleton<_i49.ListenDayTrip>(
        () => _i49.ListenDayTrip(gh<_i22.DayTripsRepository>()));
    gh.lazySingleton<_i50.SaveTripStopsDirections>(
        () => _i50.SaveTripStopsDirections(gh<_i22.DayTripsRepository>()));
    gh.lazySingleton<_i51.UpdateDayTripStartTime>(
        () => _i51.UpdateDayTripStartTime(gh<_i22.DayTripsRepository>()));
    gh.lazySingleton<_i52.UpdateDayTripShowDirections>(
        () => _i52.UpdateDayTripShowDirections(gh<_i22.DayTripsRepository>()));
    gh.lazySingleton<_i53.CreateDayTrip>(
        () => _i53.CreateDayTrip(gh<_i22.DayTripsRepository>()));
    gh.lazySingleton<_i54.UpdateDayTrip>(
        () => _i54.UpdateDayTrip(gh<_i22.DayTripsRepository>()));
    gh.lazySingleton<_i55.ListenDayTrips>(
        () => _i55.ListenDayTrips(gh<_i22.DayTripsRepository>()));
    gh.lazySingleton<_i56.UpdateTripStopsDirectionsUpToDate>(() =>
        _i56.UpdateTripStopsDirectionsUpToDate(gh<_i22.DayTripsRepository>()));
    gh.lazySingleton<_i57.UpdateDayTripUseDifferentDirectionsColors>(() =>
        _i57.UpdateDayTripUseDifferentDirectionsColors(
            gh<_i22.DayTripsRepository>()));
    gh.lazySingleton<_i58.UserRepository>(
        () => _i59.UserRepositoryImpl(gh<_i44.UserDataSource>()));
    gh.lazySingleton<_i60.UpdateTravelTime>(
        () => _i60.UpdateTravelTime(gh<_i33.TripStopsRepository>()));
    gh.lazySingleton<_i61.CreateTripStop>(
        () => _i61.CreateTripStop(gh<_i33.TripStopsRepository>()));
    gh.lazySingleton<_i62.UpdateTripStopNote>(
        () => _i62.UpdateTripStopNote(gh<_i33.TripStopsRepository>()));
    gh.lazySingleton<_i63.UpdateTripStopsIndexes>(
        () => _i63.UpdateTripStopsIndexes(gh<_i33.TripStopsRepository>()));
    gh.lazySingleton<_i64.OldTripsDataSource>(
        () => _i64.OldTripsDataSourceImpl(gh<_i15.FirebaseDatabase>()));
    gh.lazySingleton<_i65.ListenUserTrips>(
        () => _i65.ListenUserTrips(gh<_i46.TripsRepository>()));
    gh.lazySingleton<_i65.ListenSharedTrips>(
        () => _i65.ListenSharedTrips(gh<_i46.TripsRepository>()));
    gh.lazySingleton<_i66.ListenTrip>(
        () => _i66.ListenTrip(gh<_i46.TripsRepository>()));
    gh.lazySingleton<_i67.UpdateDayTripsIndexes>(
        () => _i67.UpdateDayTripsIndexes(gh<_i22.DayTripsRepository>()));
    gh.factoryParam<_i68.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i68.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i61.CreateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i56.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.lazySingleton<_i69.DeleteUser>(() => _i69.DeleteUser(
          gh<_i58.UserRepository>(),
          gh<_i46.TripsRepository>(),
          gh<_i11.InternetConnection>(),
        ));
    gh.lazySingleton<_i70.GooglePlacesRepository>(
        () => _i71.GooglePlacesRepositoryImpl(
              gh<_i35.GooglePlacesDataSource>(),
              gh<_i14.FirebaseCrashlytics>(),
            ));
    gh.lazySingleton<_i72.FetchSuggestions>(
        () => _i72.FetchSuggestions(gh<_i70.GooglePlacesRepository>()));
    gh.lazySingleton<_i73.FetchTripStopsDirections>(
        () => _i73.FetchTripStopsDirections(gh<_i70.GooglePlacesRepository>()));
    gh.lazySingleton<_i74.FetchPlaceDetails>(
        () => _i74.FetchPlaceDetails(gh<_i70.GooglePlacesRepository>()));
    gh.factoryParam<_i75.TripsCubit, String, dynamic>((
      userId,
      _,
    ) =>
        _i75.TripsCubit(
          listenUserTrips: gh<_i65.ListenUserTrips>(),
          listenSharedTrips: gh<_i65.ListenSharedTrips>(),
          crashlytics: gh<_i14.FirebaseCrashlytics>(),
          userId: userId,
        ));
    gh.lazySingleton<_i76.GetPublicDayTrips>(
        () => _i76.GetPublicDayTrips(gh<_i40.DiscoverTripsRepository>()));
    gh.lazySingleton<_i77.GetPublicTripStops>(
        () => _i77.GetPublicTripStops(gh<_i40.DiscoverTripsRepository>()));
    gh.lazySingleton<_i78.GetPublicTrips>(
        () => _i78.GetPublicTrips(gh<_i40.DiscoverTripsRepository>()));
    gh.lazySingleton<_i79.CreateTrip>(
        () => _i79.CreateTrip(gh<_i46.TripsRepository>()));
    gh.lazySingleton<_i80.UpdateTrip>(
        () => _i80.UpdateTrip(gh<_i46.TripsRepository>()));
    gh.lazySingleton<_i81.RemoveUserForShare>(
        () => _i81.RemoveUserForShare(gh<_i46.TripsRepository>()));
    gh.lazySingleton<_i82.CreateFromExistingTrip>(
        () => _i82.CreateFromExistingTrip(gh<_i46.TripsRepository>()));
    gh.lazySingleton<_i83.AddUserForShare>(
        () => _i83.AddUserForShare(gh<_i46.TripsRepository>()));
    gh.lazySingleton<_i84.DeleteTrip>(
        () => _i84.DeleteTrip(gh<_i46.TripsRepository>()));
    gh.factoryParam<_i85.TripCubit, _i86.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i85.TripCubit(
          trip: trip,
          saveTrip: gh<_i80.UpdateTrip>(),
          deleteTrip: gh<_i84.DeleteTrip>(),
          listenDayTrips: gh<_i55.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i67.UpdateDayTripsIndexes>(),
          listenTrip: gh<_i66.ListenTrip>(),
          removeUserForShare: gh<_i81.RemoveUserForShare>(),
          crashlytics: gh<_i14.FirebaseCrashlytics>(),
        ));
    gh.lazySingleton<_i87.UpdateSettings>(
        () => _i87.UpdateSettings(gh<_i58.UserRepository>()));
    gh.lazySingleton<_i88.LogoutUser>(
        () => _i88.LogoutUser(gh<_i58.UserRepository>()));
    gh.lazySingleton<_i89.ListenUser>(
        () => _i89.ListenUser(gh<_i58.UserRepository>()));
    gh.lazySingleton<_i90.ReauthenticateUser>(
        () => _i90.ReauthenticateUser(gh<_i58.UserRepository>()));
    gh.lazySingleton<_i91.RegisterUser>(
        () => _i91.RegisterUser(gh<_i58.UserRepository>()));
    gh.lazySingleton<_i92.RecoverPassword>(
        () => _i92.RecoverPassword(gh<_i58.UserRepository>()));
    gh.lazySingleton<_i93.GetUsersNames>(
        () => _i93.GetUsersNames(gh<_i58.UserRepository>()));
    gh.lazySingleton<_i94.LoginUser>(
        () => _i94.LoginUser(gh<_i58.UserRepository>()));
    gh.lazySingleton<_i95.UpdateTutorialsData>(
        () => _i95.UpdateTutorialsData(gh<_i58.UserRepository>()));
    gh.lazySingleton<_i96.UpdateUserDetails>(
        () => _i96.UpdateUserDetails(gh<_i58.UserRepository>()));
    gh.factoryParam<_i97.NewTripCubit, _i86.Trip?, String>((
      existingTrip,
      userId,
    ) =>
        _i97.NewTripCubit(
          createTrip: gh<_i79.CreateTrip>(),
          createFromExistingTrip: gh<_i82.CreateFromExistingTrip>(),
          settings: gh<_i5.Settings>(),
          deviceLocale: gh<_i24.Locale>(instanceName: 'deviceLocale'),
          existingTrip: existingTrip,
          userId: userId,
        ));
    gh.factoryParam<_i98.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i98.NewDayTripCubit(
          createDayTrip: gh<_i53.CreateDayTrip>(),
          settings: gh<_i5.Settings>(),
          tripId: tripId,
        ));
    gh.lazySingleton<_i99.OldTripsRepository>(
        () => _i100.OldTripsRepositoryImpl(
              gh<_i64.OldTripsDataSource>(),
              gh<_i14.FirebaseCrashlytics>(),
            ));
    gh.factory<_i101.GooglePlacesCubit>(() => _i101.GooglePlacesCubit(
          fetchSuggestions: gh<_i72.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i74.FetchPlaceDetails>(),
        ));
    gh.factoryParam<_i102.TripStopCubit, _i102.TripStopCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i102.TripStopCubit(
          params: params,
          tripStopDone: gh<_i43.TripStopDone>(),
          updateTripStopNote: gh<_i62.UpdateTripStopNote>(),
          deleteTripStop: gh<_i39.DeleteTripStop>(),
          updateTripStop: gh<_i38.UpdateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i56.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.factoryParam<_i103.DiscoverNewTripStopsCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i103.DiscoverNewTripStopsCubit(
          getPublicTripStops: gh<_i77.GetPublicTripStops>(),
          tripId: tripId,
          dayTripId: dayTripId,
        ));
    gh.lazySingleton<_i104.ReadOldTrips>(
        () => _i104.ReadOldTrips(gh<_i99.OldTripsRepository>()));
    gh.lazySingleton<_i105.ImportOldTrips>(
        () => _i105.ImportOldTrips(gh<_i99.OldTripsRepository>()));
    gh.factoryParam<_i106.DayTripCubit, _i86.Trip, _i107.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i106.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i54.UpdateDayTrip>(),
          deleteDayTrip: gh<_i48.DeleteDayTrip>(),
          listenTripStops: gh<_i37.ListenTripStops>(),
          updateDayTripStartTime: gh<_i51.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i63.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i60.UpdateTravelTime>(),
          tripStopDone: gh<_i43.TripStopDone>(),
          listenDayTrip: gh<_i49.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i56.UpdateTripStopsDirectionsUpToDate>(),
          deleteTripStop: gh<_i39.DeleteTripStop>(),
          crashlytics: gh<_i14.FirebaseCrashlytics>(),
        ));
    gh.factoryParam<_i108.TripStopsMapCubit, _i86.Trip, _i107.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i108.TripStopsMapCubit(
          fetchPolylinePoints: gh<_i73.FetchTripStopsDirections>(),
          saveTripStopsDirections: gh<_i50.SaveTripStopsDirections>(),
          listenDayTrip: gh<_i49.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i56.UpdateTripStopsDirectionsUpToDate>(),
          updateDayTripShowDirections: gh<_i52.UpdateDayTripShowDirections>(),
          updateDayTripUseDifferentDirectionsColors:
              gh<_i57.UpdateDayTripUseDifferentDirectionsColors>(),
          crashlytics: gh<_i14.FirebaseCrashlytics>(),
          trip: trip,
          dayTrip: dayTrip,
        ));
    gh.factoryParam<_i109.ImportOldTripsCubit, _i110.User, dynamic>((
      user,
      _,
    ) =>
        _i109.ImportOldTripsCubit(
          user: user,
          readOldTrips: gh<_i104.ReadOldTrips>(),
          importOldTrips: gh<_i105.ImportOldTrips>(),
        ));
    gh.factoryParam<_i111.AccountCubit, dynamic, dynamic>((
      user,
      _,
    ) =>
        _i111.AccountCubit(
          user: user,
          logoutUser: gh<_i88.LogoutUser>(),
          reauthenticateUser: gh<_i90.ReauthenticateUser>(),
          updateUserDetails: gh<_i96.UpdateUserDetails>(),
          deleteUser: gh<_i69.DeleteUser>(),
        ));
    gh.factoryParam<_i112.DiscoverNewTripsCubit, String, dynamic>((
      userId,
      _,
    ) =>
        _i112.DiscoverNewTripsCubit(
          getPublicTrips: gh<_i78.GetPublicTrips>(),
          userId: userId,
        ));
    gh.factory<_i113.LoginSignupCubit>(() => _i113.LoginSignupCubit(
          registerUser: gh<_i91.RegisterUser>(),
          loginUser: gh<_i94.LoginUser>(),
          recoverPassword: gh<_i92.RecoverPassword>(),
        ));
    gh.factory<_i114.TutorialCubit>(() => _i114.TutorialCubit(
        updateTutorialsData: gh<_i95.UpdateTutorialsData>()));
    gh.factoryParam<_i115.DiscoverNewDailyTripsCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i115.DiscoverNewDailyTripsCubit(
          tripId: tripId,
          getPublicDayTrips: gh<_i76.GetPublicDayTrips>(),
        ));
    gh.factory<_i116.SettingsCubit>(
        () => _i116.SettingsCubit(updateSettings: gh<_i87.UpdateSettings>()));
    gh.lazySingleton<_i117.UserCubit>(
        () => _i117.UserCubit(listenUserState: gh<_i89.ListenUser>()));
    gh.factoryParam<_i118.ShareCubit, _i118.ShareCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i118.ShareCubit(
          params: params,
          addUserForShare: gh<_i83.AddUserForShare>(),
          removeUserForShare: gh<_i81.RemoveUserForShare>(),
          getUsersNames: gh<_i93.GetUsersNames>(),
        ));
    return this;
  }
}

class _$Network extends _i119.Network {}

class _$DeviceModule extends _i119.DeviceModule {}

class _$SettingsModule extends _i116.SettingsModule {}

class _$RegisterModule extends _i119.RegisterModule {}

class _$FirebaseModule extends _i119.FirebaseModule {}

class _$GooglePlacesModule extends _i119.GooglePlacesModule {}
