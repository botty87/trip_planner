// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i22;

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
    as _i37;
import '../../features/day_trips/domain/entities/day_trip.dart' as _i105;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i36;
import '../../features/day_trips/domain/usecases/create_day_trip.dart' as _i48;
import '../../features/day_trips/domain/usecases/delete_day_trip.dart' as _i43;
import '../../features/day_trips/domain/usecases/listen_day_trip.dart' as _i44;
import '../../features/day_trips/domain/usecases/listen_day_trips.dart' as _i50;
import '../../features/day_trips/domain/usecases/save_trip_stops_directions.dart'
    as _i45;
import '../../features/day_trips/domain/usecases/update_day_trip.dart' as _i49;
import '../../features/day_trips/domain/usecases/update_day_trip_show_directions.dart'
    as _i47;
import '../../features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i46;
import '../../features/day_trips/domain/usecases/update_day_trip_use_different_directions_colors.dart'
    as _i52;
import '../../features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i63;
import '../../features/day_trips/domain/usecases/update_trip_stops_directions_up_to_date.dart'
    as _i51;
import '../../features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart'
    as _i104;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i93;
import '../../features/day_trips/presentation/cubit/trip_stops_map/trip_stops_map_cubit.dart'
    as _i106;
import '../../features/discover_new_trips/data/datasources/discover_trips_data_source.dart'
    as _i23;
import '../../features/discover_new_trips/data/repositories/discover_trips_repository_impl.dart'
    as _i34;
import '../../features/discover_new_trips/domain/repositories/discover_trips_repository.dart'
    as _i33;
import '../../features/discover_new_trips/domain/usecases/get_public_day_trips.dart'
    as _i71;
import '../../features/discover_new_trips/domain/usecases/get_public_trip_stops.dart'
    as _i72;
import '../../features/discover_new_trips/domain/usecases/get_public_trips.dart'
    as _i73;
import '../../features/discover_new_trips/presentation/cubit/daily_trips/discover_new_daily_trips_cubit.dart'
    as _i113;
import '../../features/discover_new_trips/presentation/cubit/trip_stop/discover_new_trip_stop_cubit.dart'
    as _i24;
import '../../features/discover_new_trips/presentation/cubit/trip_stops/discover_new_trip_stops_cubit.dart'
    as _i99;
import '../../features/discover_new_trips/presentation/cubit/trips/discover_new_trips_cubit.dart'
    as _i110;
import '../../features/google_places/data/datasources/google_places_data_source.dart'
    as _i32;
import '../../features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i65;
import '../../features/google_places/domain/repositories/google_places_repository.dart'
    as _i64;
import '../../features/google_places/domain/usecases/fetch_place_details.dart'
    as _i70;
import '../../features/google_places/domain/usecases/fetch_polyline_points.dart'
    as _i69;
import '../../features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i68;
import '../../features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i94;
import '../../features/import_old_trips/data/datasources/old_trips_data_source.dart'
    as _i61;
import '../../features/import_old_trips/data/repositories/old_trips_repository_impl.dart'
    as _i75;
import '../../features/import_old_trips/domain/repositories/old_trips_repository.dart'
    as _i74;
import '../../features/import_old_trips/domain/usecases/import_old_trip.dart'
    as _i102;
import '../../features/import_old_trips/domain/usecases/read_old_trips.dart'
    as _i101;
import '../../features/import_old_trips/presentation/cubit/import_old_trips_cubit.dart'
    as _i107;
import '../../features/info_contacts/presentation/cubit/info_contacts_cubit.dart'
    as _i6;
import '../../features/map/presentation/cubit/map_cubit.dart' as _i42;
import '../../features/settings/domain/entities/settings.dart' as _i5;
import '../../features/settings/domain/usecases/update_settings.dart' as _i81;
import '../../features/settings/presentation/cubit/settings_cubit.dart'
    as _i114;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i26;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i39;
import '../../features/trip_stops/domain/entities/trip_stop.dart' as _i25;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i38;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i58;
import '../../features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i97;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i95;
import '../../features/trip_stops/domain/usecases/trip_stop_done.dart' as _i41;
import '../../features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i57;
import '../../features/trip_stops/domain/usecases/update_trip_stop.dart'
    as _i96;
import '../../features/trip_stops/domain/usecases/update_trip_stop_note.dart'
    as _i59;
import '../../features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i60;
import '../../features/trip_stops/presentation/cubit/map/cubit/map_cubit.dart'
    as _i7;
import '../../features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart'
    as _i66;
import '../../features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart'
    as _i98;
import '../../features/trips/data/datasources/trips_data_source.dart' as _i20;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i56;
import '../../features/trips/domain/entities/trip.dart' as _i92;
import '../../features/trips/domain/repositories/trips_repository.dart' as _i55;
import '../../features/trips/domain/usecases/add_user_for_share.dart' as _i80;
import '../../features/trips/domain/usecases/create_from_existing_trip.dart'
    as _i78;
import '../../features/trips/domain/usecases/create_trip.dart' as _i76;
import '../../features/trips/domain/usecases/delete_trip.dart' as _i79;
import '../../features/trips/domain/usecases/listen_trips.dart' as _i62;
import '../../features/trips/domain/usecases/update_trip.dart' as _i77;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i91;
import '../../features/trips/presentation/cubit/share/share_cubit.dart'
    as _i103;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart' as _i100;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart' as _i90;
import '../../features/tutorials/domain/usecases/update_tutorials_data.dart'
    as _i88;
import '../../features/tutorials/presentation/cubit/tutorial_cubit.dart'
    as _i112;
import '../../features/ui/presentation/cubit/backgrounds_cubit.dart' as _i40;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i31;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i54;
import '../../features/user_account/domain/entities/user.dart' as _i108;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i53;
import '../../features/user_account/domain/usecases/delete_user.dart' as _i67;
import '../../features/user_account/domain/usecases/listen_user.dart' as _i83;
import '../../features/user_account/domain/usecases/login_user.dart' as _i87;
import '../../features/user_account/domain/usecases/logout_user.dart' as _i82;
import '../../features/user_account/domain/usecases/reauthenticate_user.dart'
    as _i84;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i86;
import '../../features/user_account/domain/usecases/register_user.dart' as _i85;
import '../../features/user_account/domain/usecases/update_user_details.dart'
    as _i89;
import '../../features/user_account/presentation/cubit/account_page/account_cubit.dart'
    as _i109;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i111;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i115;
import '../bloc_observer.dart' as _i19;
import '../db/day_trips_collection_ref.dart' as _i27;
import '../db/settings_collection_ref.dart' as _i28;
import '../db/trip_stops_collection_ref.dart' as _i35;
import '../db/trips_collection_ref.dart' as _i30;
import '../db/users_collection_ref.dart' as _i29;
import '../routes/app_router.dart' as _i8;
import 'di.dart' as _i116;

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
    await gh.factoryAsync<_i22.Locale>(
      () => deviceModule.deviceLocale(),
      instanceName: 'deviceLocale',
      preResolve: true,
    );
    gh.lazySingleton<_i23.DiscoverTripsDataSource>(
        () => _i23.DiscoverTripsDataSourceImpl());
    gh.factoryParam<_i24.DiscoverNewTripStopCubit, _i25.TripStop, dynamic>((
      tripStop,
      _,
    ) =>
        _i24.DiscoverNewTripStopCubit(tripStop: tripStop));
    gh.lazySingleton<_i26.TripStopsDataSource>(
        () => _i26.TripStopsDataSourceImpl(gh<_i13.FirebaseFirestore>()));
    gh.lazySingleton<String>(
      () => googlePlacesModule.proxyUrl,
      instanceName: 'proxyUrl',
    );
    gh.factoryParam<_i27.DayTripsCollectionRef, String, dynamic>((
      tripId,
      _,
    ) =>
        _i27.DayTripsCollectionRef(
          gh<_i13.FirebaseFirestore>(),
          tripId,
        ));
    gh.lazySingleton<String>(
      () => googlePlacesModule.googlePlacesKey,
      instanceName: 'googlePlacesKey',
    );
    gh.factory<_i28.SettingsCollectionRef>(
        () => _i28.SettingsCollectionRef(gh<_i13.FirebaseFirestore>()));
    gh.factory<_i29.UsersCollectionRef>(
        () => _i29.UsersCollectionRef(gh<_i13.FirebaseFirestore>()));
    gh.factory<_i30.TripsCollectionRef>(
        () => _i30.TripsCollectionRef(gh<_i13.FirebaseFirestore>()));
    gh.lazySingleton<_i31.UserDataSource>(() => _i31.UserDataSourceImpl(
          gh<_i12.FirebaseAuth>(),
          gh<_i13.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i32.GooglePlacesDataSource>(
        () => _i32.GooglePlacesDataSourceImpl(
              gh<_i10.Dio>(),
              gh<_i11.InternetConnection>(),
              gh<_i17.PolylinePoints>(),
              gh<String>(instanceName: 'googlePlacesKey'),
              gh<String>(instanceName: 'proxyUrl'),
            ));
    gh.lazySingleton<_i33.DiscoverTripsRepository>(() =>
        _i34.DiscoverTripsRepositoryImpl(gh<_i23.DiscoverTripsDataSource>()));
    gh.factoryParam<_i35.TripStopsCollectionRef, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i35.TripStopsCollectionRef(
          gh<_i13.FirebaseFirestore>(),
          tripId,
          dayTripId,
        ));
    gh.lazySingleton<_i36.DayTripsRepository>(
        () => _i37.DayTripsRepositoryImpl(gh<_i21.DayTripsDataSource>()));
    gh.lazySingleton<String>(
      () => googlePlacesModule.googleMapKey,
      instanceName: 'googleMapKey',
    );
    gh.lazySingleton<_i38.TripStopsRepository>(
        () => _i39.TripStopsRepositoryImpl(gh<_i26.TripStopsDataSource>()));
    gh.factory<_i40.BackgroundsCubit>(() =>
        _i40.BackgroundsCubit(firebaseStorage: gh<_i16.FirebaseStorage>()));
    gh.lazySingleton<_i41.TripStopDone>(
        () => _i41.TripStopDone(gh<_i38.TripStopsRepository>()));
    gh.factoryParam<_i42.MapCubit, _i42.MapStateType, dynamic>((
      mapStateType,
      _,
    ) =>
        _i42.MapCubit(mapStateType: mapStateType));
    gh.lazySingleton<_i43.DeleteDayTrip>(
        () => _i43.DeleteDayTrip(gh<_i36.DayTripsRepository>()));
    gh.lazySingleton<_i44.ListenDayTrip>(
        () => _i44.ListenDayTrip(gh<_i36.DayTripsRepository>()));
    gh.lazySingleton<_i45.SaveTripStopsDirections>(
        () => _i45.SaveTripStopsDirections(gh<_i36.DayTripsRepository>()));
    gh.lazySingleton<_i46.UpdateDayTripStartTime>(
        () => _i46.UpdateDayTripStartTime(gh<_i36.DayTripsRepository>()));
    gh.lazySingleton<_i47.UpdateDayTripShowDirections>(
        () => _i47.UpdateDayTripShowDirections(gh<_i36.DayTripsRepository>()));
    gh.lazySingleton<_i48.CreateDayTrip>(
        () => _i48.CreateDayTrip(gh<_i36.DayTripsRepository>()));
    gh.lazySingleton<_i49.UpdateDayTrip>(
        () => _i49.UpdateDayTrip(gh<_i36.DayTripsRepository>()));
    gh.lazySingleton<_i50.ListenDayTrips>(
        () => _i50.ListenDayTrips(gh<_i36.DayTripsRepository>()));
    gh.lazySingleton<_i51.UpdateTripStopsDirectionsUpToDate>(() =>
        _i51.UpdateTripStopsDirectionsUpToDate(gh<_i36.DayTripsRepository>()));
    gh.lazySingleton<_i52.UpdateDayTripUseDifferentDirectionsColors>(() =>
        _i52.UpdateDayTripUseDifferentDirectionsColors(
            gh<_i36.DayTripsRepository>()));
    gh.lazySingleton<_i53.UserRepository>(
        () => _i54.UserRepositoryImpl(gh<_i31.UserDataSource>()));
    gh.lazySingleton<_i55.TripsRepository>(() =>
        _i56.TripsRepositoryImpl(tripsDataSource: gh<_i20.TripsDataSource>()));
    gh.lazySingleton<_i57.UpdateTravelTime>(
        () => _i57.UpdateTravelTime(gh<_i38.TripStopsRepository>()));
    gh.lazySingleton<_i58.CreateTripStop>(
        () => _i58.CreateTripStop(gh<_i38.TripStopsRepository>()));
    gh.lazySingleton<_i59.UpdateTripStopNote>(
        () => _i59.UpdateTripStopNote(gh<_i38.TripStopsRepository>()));
    gh.lazySingleton<_i60.UpdateTripStopsIndexes>(
        () => _i60.UpdateTripStopsIndexes(gh<_i38.TripStopsRepository>()));
    gh.lazySingleton<_i61.OldTripsDataSource>(
        () => _i61.OldTripsDataSourceImpl(gh<_i15.FirebaseDatabase>()));
    gh.lazySingleton<_i62.ListenTrips>(
        () => _i62.ListenTrips(gh<_i55.TripsRepository>()));
    gh.lazySingleton<_i63.UpdateDayTripsIndexes>(
        () => _i63.UpdateDayTripsIndexes(gh<_i36.DayTripsRepository>()));
    gh.lazySingleton<_i64.GooglePlacesRepository>(() =>
        _i65.GooglePlacesRepositoryImpl(gh<_i32.GooglePlacesDataSource>()));
    gh.factoryParam<_i66.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i66.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i58.CreateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i51.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.lazySingleton<_i67.DeleteUser>(() => _i67.DeleteUser(
          gh<_i53.UserRepository>(),
          gh<_i55.TripsRepository>(),
          gh<_i11.InternetConnection>(),
        ));
    gh.lazySingleton<_i68.FetchSuggestions>(
        () => _i68.FetchSuggestions(gh<_i64.GooglePlacesRepository>()));
    gh.lazySingleton<_i69.FetchTripStopsDirections>(
        () => _i69.FetchTripStopsDirections(gh<_i64.GooglePlacesRepository>()));
    gh.lazySingleton<_i70.FetchPlaceDetails>(
        () => _i70.FetchPlaceDetails(gh<_i64.GooglePlacesRepository>()));
    gh.lazySingleton<_i71.GetPublicDayTrips>(
        () => _i71.GetPublicDayTrips(gh<_i33.DiscoverTripsRepository>()));
    gh.lazySingleton<_i72.GetPublicTripStops>(
        () => _i72.GetPublicTripStops(gh<_i33.DiscoverTripsRepository>()));
    gh.lazySingleton<_i73.GetPublicTrips>(
        () => _i73.GetPublicTrips(gh<_i33.DiscoverTripsRepository>()));
    gh.lazySingleton<_i74.OldTripsRepository>(
        () => _i75.OldTripsRepositoryImpl(gh<_i61.OldTripsDataSource>()));
    gh.lazySingleton<_i76.CreateTrip>(
        () => _i76.CreateTrip(gh<_i55.TripsRepository>()));
    gh.lazySingleton<_i77.UpdateTrip>(
        () => _i77.UpdateTrip(gh<_i55.TripsRepository>()));
    gh.lazySingleton<_i78.CreateFromExistingTrip>(
        () => _i78.CreateFromExistingTrip(gh<_i55.TripsRepository>()));
    gh.lazySingleton<_i79.DeleteTrip>(
        () => _i79.DeleteTrip(gh<_i55.TripsRepository>()));
    gh.lazySingleton<_i80.AddUserForShare>(
        () => _i80.AddUserForShare(gh<_i55.TripsRepository>()));
    gh.lazySingleton<_i81.UpdateSettings>(
        () => _i81.UpdateSettings(gh<_i53.UserRepository>()));
    gh.lazySingleton<_i82.LogoutUser>(
        () => _i82.LogoutUser(gh<_i53.UserRepository>()));
    gh.lazySingleton<_i83.ListenUser>(
        () => _i83.ListenUser(gh<_i53.UserRepository>()));
    gh.lazySingleton<_i84.ReauthenticateUser>(
        () => _i84.ReauthenticateUser(gh<_i53.UserRepository>()));
    gh.lazySingleton<_i85.RegisterUser>(
        () => _i85.RegisterUser(gh<_i53.UserRepository>()));
    gh.lazySingleton<_i86.RecoverPassword>(
        () => _i86.RecoverPassword(gh<_i53.UserRepository>()));
    gh.lazySingleton<_i87.LoginUser>(
        () => _i87.LoginUser(gh<_i53.UserRepository>()));
    gh.lazySingleton<_i88.UpdateTutorialsData>(
        () => _i88.UpdateTutorialsData(gh<_i53.UserRepository>()));
    gh.lazySingleton<_i89.UpdateUserDetails>(
        () => _i89.UpdateUserDetails(gh<_i53.UserRepository>()));
    gh.factoryParam<_i90.TripsCubit, String, dynamic>((
      userId,
      _,
    ) =>
        _i90.TripsCubit(
          listenTrips: gh<_i62.ListenTrips>(),
          crashlytics: gh<_i14.FirebaseCrashlytics>(),
          userId: userId,
        ));
    gh.factoryParam<_i91.NewTripCubit, _i92.Trip?, String>((
      existingTrip,
      userId,
    ) =>
        _i91.NewTripCubit(
          createTrip: gh<_i76.CreateTrip>(),
          createFromExistingTrip: gh<_i78.CreateFromExistingTrip>(),
          settings: gh<_i5.Settings>(),
          deviceLocale: gh<_i22.Locale>(instanceName: 'deviceLocale'),
          existingTrip: existingTrip,
          userId: userId,
        ));
    gh.factoryParam<_i93.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i93.NewDayTripCubit(
          createDayTrip: gh<_i48.CreateDayTrip>(),
          settings: gh<_i5.Settings>(),
          tripId: tripId,
        ));
    gh.factory<_i94.GooglePlacesCubit>(() => _i94.GooglePlacesCubit(
          fetchSuggestions: gh<_i68.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i70.FetchPlaceDetails>(),
        ));
    gh.lazySingleton<_i95.ListenTripStops>(
        () => _i95.ListenTripStops(gh<_i38.TripStopsRepository>()));
    gh.lazySingleton<_i96.UpdateTripStop>(
        () => _i96.UpdateTripStop(gh<_i38.TripStopsRepository>()));
    gh.lazySingleton<_i97.DeleteTripStop>(
        () => _i97.DeleteTripStop(gh<_i38.TripStopsRepository>()));
    gh.factoryParam<_i98.TripStopCubit, _i98.TripStopCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i98.TripStopCubit(
          params: params,
          tripStopDone: gh<_i41.TripStopDone>(),
          updateTripStopNote: gh<_i59.UpdateTripStopNote>(),
          deleteTripStop: gh<_i97.DeleteTripStop>(),
          updateTripStop: gh<_i96.UpdateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i51.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.factoryParam<_i99.DiscoverNewTripStopsCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i99.DiscoverNewTripStopsCubit(
          getPublicTripStops: gh<_i72.GetPublicTripStops>(),
          tripId: tripId,
          dayTripId: dayTripId,
        ));
    gh.factoryParam<_i100.TripCubit, _i92.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i100.TripCubit(
          trip: trip,
          saveTrip: gh<_i77.UpdateTrip>(),
          deleteTrip: gh<_i79.DeleteTrip>(),
          listenDayTrips: gh<_i50.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i63.UpdateDayTripsIndexes>(),
          crashlytics: gh<_i14.FirebaseCrashlytics>(),
        ));
    gh.lazySingleton<_i101.ReadOldTrips>(
        () => _i101.ReadOldTrips(gh<_i74.OldTripsRepository>()));
    gh.lazySingleton<_i102.ImportOldTrips>(
        () => _i102.ImportOldTrips(gh<_i74.OldTripsRepository>()));
    gh.factoryParam<_i103.ShareCubit, _i103.ShareCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i103.ShareCubit(
          params: params,
          addUserForShare: gh<_i80.AddUserForShare>(),
        ));
    gh.factoryParam<_i104.DayTripCubit, _i92.Trip, _i105.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i104.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i49.UpdateDayTrip>(),
          deleteDayTrip: gh<_i43.DeleteDayTrip>(),
          listenTripStops: gh<_i95.ListenTripStops>(),
          updateDayTripStartTime: gh<_i46.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i60.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i57.UpdateTravelTime>(),
          tripStopDone: gh<_i41.TripStopDone>(),
          listenDayTrip: gh<_i44.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i51.UpdateTripStopsDirectionsUpToDate>(),
          deleteTripStop: gh<_i97.DeleteTripStop>(),
          crashlytics: gh<_i14.FirebaseCrashlytics>(),
        ));
    gh.factoryParam<_i106.TripStopsMapCubit, _i92.Trip, _i105.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i106.TripStopsMapCubit(
          fetchPolylinePoints: gh<_i69.FetchTripStopsDirections>(),
          saveTripStopsDirections: gh<_i45.SaveTripStopsDirections>(),
          listenDayTrip: gh<_i44.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i51.UpdateTripStopsDirectionsUpToDate>(),
          updateDayTripShowDirections: gh<_i47.UpdateDayTripShowDirections>(),
          updateDayTripUseDifferentDirectionsColors:
              gh<_i52.UpdateDayTripUseDifferentDirectionsColors>(),
          crashlytics: gh<_i14.FirebaseCrashlytics>(),
          trip: trip,
          dayTrip: dayTrip,
        ));
    gh.factoryParam<_i107.ImportOldTripsCubit, _i108.User, dynamic>((
      user,
      _,
    ) =>
        _i107.ImportOldTripsCubit(
          user: user,
          readOldTrips: gh<_i101.ReadOldTrips>(),
          importOldTrips: gh<_i102.ImportOldTrips>(),
        ));
    gh.factoryParam<_i109.AccountCubit, dynamic, dynamic>((
      user,
      _,
    ) =>
        _i109.AccountCubit(
          user: user,
          logoutUser: gh<_i82.LogoutUser>(),
          reauthenticateUser: gh<_i84.ReauthenticateUser>(),
          updateUserDetails: gh<_i89.UpdateUserDetails>(),
          deleteUser: gh<_i67.DeleteUser>(),
        ));
    gh.factoryParam<_i110.DiscoverNewTripsCubit, String, dynamic>((
      userId,
      _,
    ) =>
        _i110.DiscoverNewTripsCubit(
          getPublicTrips: gh<_i73.GetPublicTrips>(),
          userId: userId,
        ));
    gh.factory<_i111.LoginSignupCubit>(() => _i111.LoginSignupCubit(
          registerUser: gh<_i85.RegisterUser>(),
          loginUser: gh<_i87.LoginUser>(),
          recoverPassword: gh<_i86.RecoverPassword>(),
        ));
    gh.factory<_i112.TutorialCubit>(() => _i112.TutorialCubit(
        updateTutorialsData: gh<_i88.UpdateTutorialsData>()));
    gh.factoryParam<_i113.DiscoverNewDailyTripsCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i113.DiscoverNewDailyTripsCubit(
          tripId: tripId,
          getPublicDayTrips: gh<_i71.GetPublicDayTrips>(),
        ));
    gh.factory<_i114.SettingsCubit>(
        () => _i114.SettingsCubit(updateSettings: gh<_i81.UpdateSettings>()));
    gh.lazySingleton<_i115.UserCubit>(
        () => _i115.UserCubit(listenUserState: gh<_i83.ListenUser>()));
    return this;
  }
}

class _$Network extends _i116.Network {}

class _$DeviceModule extends _i116.DeviceModule {}

class _$SettingsModule extends _i114.SettingsModule {}

class _$RegisterModule extends _i116.RegisterModule {}

class _$FirebaseModule extends _i116.FirebaseModule {}

class _$GooglePlacesModule extends _i116.GooglePlacesModule {}
