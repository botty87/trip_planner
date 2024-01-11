// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i11;
import 'package:dio/dio.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i8;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i9;
import 'package:firebase_database/firebase_database.dart' as _i10;
import 'package:flutter_bloc/flutter_bloc.dart' as _i45;
import 'package:flutter_polyline_points/flutter_polyline_points.dart' as _i22;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i16;
import 'package:logger/logger.dart' as _i17;
import 'package:webview_flutter/webview_flutter.dart' as _i44;

import '../../features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i50;
import '../../features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i52;
import '../../features/day_trips/domain/entities/day_trip.dart' as _i91;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i51;
import '../../features/day_trips/domain/usecases/create_day_trip.dart' as _i88;
import '../../features/day_trips/domain/usecases/delete_day_trip.dart' as _i53;
import '../../features/day_trips/domain/usecases/listen_day_trip.dart' as _i65;
import '../../features/day_trips/domain/usecases/listen_day_trips.dart' as _i66;
import '../../features/day_trips/domain/usecases/save_trip_stops_directions.dart'
    as _i75;
import '../../features/day_trips/domain/usecases/update_day_trip.dart' as _i78;
import '../../features/day_trips/domain/usecases/update_day_trip_show_directions.dart'
    as _i79;
import '../../features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i80;
import '../../features/day_trips/domain/usecases/update_day_trip_use_different_directions_colors.dart'
    as _i81;
import '../../features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i82;
import '../../features/day_trips/domain/usecases/update_trip_stops_directions_up_to_date.dart'
    as _i84;
import '../../features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart'
    as _i89;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i97;
import '../../features/day_trips/presentation/cubit/trip_stops_map/trip_stops_map_cubit.dart'
    as _i103;
import '../../features/discover_new_trips/data/datasources/discover_trips_data_source.dart'
    as _i5;
import '../../features/discover_new_trips/data/repositories/discover_trips_repository_impl.dart'
    as _i7;
import '../../features/discover_new_trips/domain/repositories/discover_trips_repository.dart'
    as _i6;
import '../../features/discover_new_trips/domain/usecases/get_public_day_trips.dart'
    as _i12;
import '../../features/discover_new_trips/domain/usecases/get_public_trip_stops.dart'
    as _i13;
import '../../features/discover_new_trips/domain/usecases/get_public_trips.dart'
    as _i14;
import '../../features/discover_new_trips/presentation/cubit/daily_trips/discover_new_daily_trips_cubit.dart'
    as _i57;
import '../../features/discover_new_trips/presentation/cubit/trip_stops/discover_new_trip_stops_cubit.dart'
    as _i58;
import '../../features/discover_new_trips/presentation/cubit/trips/discover_new_trips_cubit.dart'
    as _i59;
import '../../features/google_places/data/datasources/google_places_data_source.dart'
    as _i60;
import '../../features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i62;
import '../../features/google_places/domain/repositories/google_places_repository.dart'
    as _i61;
import '../../features/google_places/domain/usecases/fetch_place_details.dart'
    as _i92;
import '../../features/google_places/domain/usecases/fetch_polyline_points.dart'
    as _i94;
import '../../features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i93;
import '../../features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i95;
import '../../features/import_old_trips/data/datasources/old_trips_data_source.dart'
    as _i19;
import '../../features/import_old_trips/data/repositories/old_trips_repository_impl.dart'
    as _i21;
import '../../features/import_old_trips/domain/repositories/old_trips_repository.dart'
    as _i20;
import '../../features/import_old_trips/domain/usecases/import_old_trip.dart'
    as _i63;
import '../../features/import_old_trips/domain/usecases/read_old_trips.dart'
    as _i23;
import '../../features/import_old_trips/presentation/cubit/import_old_trips_cubit.dart'
    as _i64;
import '../../features/info_contacts/presentation/cubit/info_contacts_cubit.dart'
    as _i15;
import '../../features/settings/domain/entities/settings.dart' as _i24;
import '../../features/settings/domain/usecases/update_settings.dart' as _i83;
import '../../features/settings/presentation/cubit/settings_cubit.dart'
    as _i100;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i27;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i29;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i28;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i48;
import '../../features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i55;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i67;
import '../../features/trip_stops/domain/usecases/trip_stop_done.dart' as _i76;
import '../../features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i34;
import '../../features/trip_stops/domain/usecases/update_trip_stop.dart'
    as _i36;
import '../../features/trip_stops/domain/usecases/update_trip_stop_note.dart'
    as _i37;
import '../../features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i38;
import '../../features/trip_stops/presentation/cubit/map/cubit/map_cubit.dart'
    as _i18;
import '../../features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart'
    as _i99;
import '../../features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart'
    as _i102;
import '../../features/trips/data/datasources/trips_data_source.dart' as _i31;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i33;
import '../../features/trips/domain/entities/trip.dart' as _i90;
import '../../features/trips/domain/repositories/trips_repository.dart' as _i32;
import '../../features/trips/domain/usecases/create_trip.dart' as _i47;
import '../../features/trips/domain/usecases/delete_trip.dart' as _i54;
import '../../features/trips/domain/usecases/listen_trips.dart' as _i68;
import '../../features/trips/domain/usecases/update_trip.dart' as _i35;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i98;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart' as _i101;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart' as _i77;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i40;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i42;
import '../../features/user_account/domain/entities/user.dart' as _i39;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i41;
import '../../features/user_account/domain/usecases/delete_user.dart' as _i56;
import '../../features/user_account/domain/usecases/listen_user.dart' as _i69;
import '../../features/user_account/domain/usecases/login_user.dart' as _i70;
import '../../features/user_account/domain/usecases/logout_user.dart' as _i71;
import '../../features/user_account/domain/usecases/reauthenticate_user.dart'
    as _i72;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i73;
import '../../features/user_account/domain/usecases/register_user.dart' as _i74;
import '../../features/user_account/domain/usecases/update_user_details.dart'
    as _i85;
import '../../features/user_account/presentation/cubit/account_page/account_cubit.dart'
    as _i87;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i96;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i86;
import '../bloc_observer.dart' as _i46;
import '../db/day_trips_collection_ref.dart' as _i49;
import '../db/settings_collection_ref.dart' as _i25;
import '../db/trip_stops_collection_ref.dart' as _i26;
import '../db/trips_collection_ref.dart' as _i30;
import '../db/users_collection_ref.dart' as _i43;
import '../routes/app_router.dart' as _i3;
import 'di.dart' as _i104;

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
    final userModule = _$UserModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.lazySingleton<_i4.Dio>(() => network.client);
    gh.lazySingleton<_i5.DiscoverTripsDataSource>(
        () => _i5.DiscoverTripsDataSourceImpl());
    gh.lazySingleton<_i6.DiscoverTripsRepository>(() =>
        _i7.DiscoverTripsRepositoryImpl(gh<_i5.DiscoverTripsDataSource>()));
    gh.lazySingleton<_i8.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.lazySingleton<_i9.FirebaseCrashlytics>(
        () => firebaseModule.firebaseCrashlytics);
    gh.lazySingleton<_i10.FirebaseDatabase>(
        () => firebaseModule.firebaseDatabase);
    gh.lazySingleton<_i11.FirebaseFirestore>(
        () => firebaseModule.firebaseFirestore);
    gh.lazySingleton<_i12.GetPublicDayTrips>(
        () => _i12.GetPublicDayTrips(gh<_i6.DiscoverTripsRepository>()));
    gh.lazySingleton<_i13.GetPublicTripStops>(
        () => _i13.GetPublicTripStops(gh<_i6.DiscoverTripsRepository>()));
    gh.lazySingleton<_i14.GetPublicTrips>(
        () => _i14.GetPublicTrips(gh<_i6.DiscoverTripsRepository>()));
    gh.factory<_i15.InfoContactsCubit>(() => _i15.InfoContactsCubit());
    gh.lazySingleton<_i16.InternetConnection>(() => network.internetConnection);
    gh.lazySingleton<_i17.Logger>(() => registerModule.logger);
    gh.factory<_i18.MapCubit>(() => _i18.MapCubit());
    gh.lazySingleton<_i19.OldTripsDataSource>(
        () => _i19.OldTripsDataSourceImpl(gh<_i10.FirebaseDatabase>()));
    gh.lazySingleton<_i20.OldTripsRepository>(
        () => _i21.OldTripsRepositoryImpl(gh<_i19.OldTripsDataSource>()));
    gh.lazySingleton<_i22.PolylinePoints>(
        () => googlePlacesModule.polylinePoints);
    gh.lazySingleton<_i23.ReadOldTrips>(
        () => _i23.ReadOldTrips(gh<_i20.OldTripsRepository>()));
    gh.factory<_i24.Settings>(() => settingsModule.settings);
    gh.factory<_i25.SettingsCollectionRef>(
        () => _i25.SettingsCollectionRef(gh<_i11.FirebaseFirestore>()));
    gh.lazySingleton<String>(
      () => googlePlacesModule.googlePlacesKey,
      instanceName: 'googlePlacesKey',
    );
    gh.lazySingleton<String>(
      () => googlePlacesModule.proxyUrl,
      instanceName: 'proxyUrl',
    );
    gh.lazySingleton<String>(
      () => googlePlacesModule.googleMapKey,
      instanceName: 'googleMapKey',
    );
    gh.factoryParam<_i26.TripStopsCollectionRef, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i26.TripStopsCollectionRef(
          gh<_i11.FirebaseFirestore>(),
          tripId,
          dayTripId,
        ));
    gh.lazySingleton<_i27.TripStopsDataSource>(
        () => _i27.TripStopsDataSourceImpl(gh<_i11.FirebaseFirestore>()));
    gh.lazySingleton<_i28.TripStopsRepository>(
        () => _i29.TripStopsRepositoryImpl(gh<_i27.TripStopsDataSource>()));
    gh.factory<_i30.TripsCollectionRef>(
        () => _i30.TripsCollectionRef(gh<_i11.FirebaseFirestore>()));
    gh.lazySingleton<_i31.TripsDataSource>(
        () => _i31.TripsDataSourceImpl(gh<_i11.FirebaseFirestore>()));
    gh.lazySingleton<_i32.TripsRepository>(() =>
        _i33.TripsRepositoryImpl(tripsDataSource: gh<_i31.TripsDataSource>()));
    gh.lazySingleton<_i34.UpdateTravelTime>(
        () => _i34.UpdateTravelTime(gh<_i28.TripStopsRepository>()));
    gh.lazySingleton<_i35.UpdateTrip>(
        () => _i35.UpdateTrip(gh<_i32.TripsRepository>()));
    gh.lazySingleton<_i36.UpdateTripStop>(
        () => _i36.UpdateTripStop(gh<_i28.TripStopsRepository>()));
    gh.lazySingleton<_i37.UpdateTripStopNote>(
        () => _i37.UpdateTripStopNote(gh<_i28.TripStopsRepository>()));
    gh.lazySingleton<_i38.UpdateTripStopsIndexes>(
        () => _i38.UpdateTripStopsIndexes(gh<_i28.TripStopsRepository>()));
    gh.factory<_i39.User>(() => userModule.user);
    gh.lazySingleton<_i40.UserDataSource>(() => _i40.UserDataSourceImpl(
          gh<_i8.FirebaseAuth>(),
          gh<_i11.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i41.UserRepository>(
        () => _i42.UserRepositoryImpl(gh<_i40.UserDataSource>()));
    gh.factory<_i43.UsersCollectionRef>(
        () => _i43.UsersCollectionRef(gh<_i11.FirebaseFirestore>()));
    gh.factory<_i44.WebViewController>(() => network.webViewController);
    gh.lazySingleton<_i45.BlocObserver>(
        () => _i46.SimpleBlocObserver(logger: gh<_i17.Logger>()));
    gh.lazySingleton<_i47.CreateTrip>(
        () => _i47.CreateTrip(gh<_i32.TripsRepository>()));
    gh.lazySingleton<_i48.CreateTripStop>(
        () => _i48.CreateTripStop(gh<_i28.TripStopsRepository>()));
    gh.factoryParam<_i49.DayTripsCollectionRef, String, dynamic>((
      tripId,
      _,
    ) =>
        _i49.DayTripsCollectionRef(
          gh<_i11.FirebaseFirestore>(),
          tripId,
        ));
    gh.lazySingleton<_i50.DayTripsDataSource>(
        () => _i50.DayTripsDataSourceImpl(gh<_i11.FirebaseFirestore>()));
    gh.lazySingleton<_i51.DayTripsRepository>(
        () => _i52.DayTripsRepositoryImpl(gh<_i50.DayTripsDataSource>()));
    gh.lazySingleton<_i53.DeleteDayTrip>(
        () => _i53.DeleteDayTrip(gh<_i51.DayTripsRepository>()));
    gh.lazySingleton<_i54.DeleteTrip>(
        () => _i54.DeleteTrip(gh<_i32.TripsRepository>()));
    gh.lazySingleton<_i55.DeleteTripStop>(
        () => _i55.DeleteTripStop(gh<_i28.TripStopsRepository>()));
    gh.lazySingleton<_i56.DeleteUser>(() => _i56.DeleteUser(
          gh<_i41.UserRepository>(),
          gh<_i32.TripsRepository>(),
          gh<_i16.InternetConnection>(),
        ));
    gh.factoryParam<_i57.DiscoverNewDailyTripsCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i57.DiscoverNewDailyTripsCubit(
          tripId: tripId,
          getPublicDayTrips: gh<_i12.GetPublicDayTrips>(),
        ));
    gh.factoryParam<_i58.DiscoverNewTripStopsCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i58.DiscoverNewTripStopsCubit(
          getPublicTripStops: gh<_i13.GetPublicTripStops>(),
          tripId: tripId,
          dayTripId: dayTripId,
        ));
    gh.factory<_i59.DiscoverNewTripsCubit>(() => _i59.DiscoverNewTripsCubit(
          getPublicTrips: gh<_i14.GetPublicTrips>(),
          user: gh<_i39.User>(),
        ));
    gh.lazySingleton<_i60.GooglePlacesDataSource>(
        () => _i60.GooglePlacesDataSourceImpl(
              gh<_i4.Dio>(),
              gh<_i16.InternetConnection>(),
              gh<_i22.PolylinePoints>(),
              gh<String>(instanceName: 'googlePlacesKey'),
              gh<String>(instanceName: 'proxyUrl'),
            ));
    gh.lazySingleton<_i61.GooglePlacesRepository>(() =>
        _i62.GooglePlacesRepositoryImpl(gh<_i60.GooglePlacesDataSource>()));
    gh.lazySingleton<_i63.ImportOldTrips>(
        () => _i63.ImportOldTrips(gh<_i20.OldTripsRepository>()));
    gh.factoryParam<_i64.ImportOldTripsCubit, _i39.User, dynamic>((
      user,
      _,
    ) =>
        _i64.ImportOldTripsCubit(
          user: user,
          readOldTrips: gh<_i23.ReadOldTrips>(),
          importOldTrips: gh<_i63.ImportOldTrips>(),
        ));
    gh.lazySingleton<_i65.ListenDayTrip>(
        () => _i65.ListenDayTrip(gh<_i51.DayTripsRepository>()));
    gh.lazySingleton<_i66.ListenDayTrips>(
        () => _i66.ListenDayTrips(gh<_i51.DayTripsRepository>()));
    gh.lazySingleton<_i67.ListenTripStops>(
        () => _i67.ListenTripStops(gh<_i28.TripStopsRepository>()));
    gh.lazySingleton<_i68.ListenTrips>(
        () => _i68.ListenTrips(gh<_i32.TripsRepository>()));
    gh.lazySingleton<_i69.ListenUser>(
        () => _i69.ListenUser(gh<_i41.UserRepository>()));
    gh.lazySingleton<_i70.LoginUser>(
        () => _i70.LoginUser(gh<_i41.UserRepository>()));
    gh.lazySingleton<_i71.LogoutUser>(
        () => _i71.LogoutUser(gh<_i41.UserRepository>()));
    gh.lazySingleton<_i72.ReauthenticateUser>(
        () => _i72.ReauthenticateUser(gh<_i41.UserRepository>()));
    gh.lazySingleton<_i73.RecoverPassword>(
        () => _i73.RecoverPassword(gh<_i41.UserRepository>()));
    gh.lazySingleton<_i74.RegisterUser>(
        () => _i74.RegisterUser(gh<_i41.UserRepository>()));
    gh.lazySingleton<_i75.SaveTripStopsDirections>(
        () => _i75.SaveTripStopsDirections(gh<_i51.DayTripsRepository>()));
    gh.lazySingleton<_i76.TripStopDone>(
        () => _i76.TripStopDone(gh<_i28.TripStopsRepository>()));
    gh.factory<_i77.TripsCubit>(() => _i77.TripsCubit(
          listenTrips: gh<_i68.ListenTrips>(),
          crashlytics: gh<_i9.FirebaseCrashlytics>(),
          user: gh<_i39.User>(),
        ));
    gh.lazySingleton<_i78.UpdateDayTrip>(
        () => _i78.UpdateDayTrip(gh<_i51.DayTripsRepository>()));
    gh.lazySingleton<_i79.UpdateDayTripShowDirections>(
        () => _i79.UpdateDayTripShowDirections(gh<_i51.DayTripsRepository>()));
    gh.lazySingleton<_i80.UpdateDayTripStartTime>(
        () => _i80.UpdateDayTripStartTime(gh<_i51.DayTripsRepository>()));
    gh.lazySingleton<_i81.UpdateDayTripUseDifferentDirectionsColors>(() =>
        _i81.UpdateDayTripUseDifferentDirectionsColors(
            gh<_i51.DayTripsRepository>()));
    gh.lazySingleton<_i82.UpdateDayTripsIndexes>(
        () => _i82.UpdateDayTripsIndexes(gh<_i51.DayTripsRepository>()));
    gh.lazySingleton<_i83.UpdateSettings>(
        () => _i83.UpdateSettings(gh<_i41.UserRepository>()));
    gh.lazySingleton<_i84.UpdateTripStopsDirectionsUpToDate>(() =>
        _i84.UpdateTripStopsDirectionsUpToDate(gh<_i51.DayTripsRepository>()));
    gh.lazySingleton<_i85.UpdateUserDetails>(
        () => _i85.UpdateUserDetails(gh<_i41.UserRepository>()));
    gh.lazySingleton<_i86.UserCubit>(
        () => _i86.UserCubit(listenUserState: gh<_i69.ListenUser>()));
    gh.factoryParam<_i87.AccountCubit, dynamic, dynamic>((
      user,
      _,
    ) =>
        _i87.AccountCubit(
          user: user,
          logoutUser: gh<_i71.LogoutUser>(),
          reauthenticateUser: gh<_i72.ReauthenticateUser>(),
          updateUserDetails: gh<_i85.UpdateUserDetails>(),
          deleteUser: gh<_i56.DeleteUser>(),
        ));
    gh.lazySingleton<_i88.CreateDayTrip>(
        () => _i88.CreateDayTrip(gh<_i51.DayTripsRepository>()));
    gh.factoryParam<_i89.DayTripCubit, _i90.Trip, _i91.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i89.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i78.UpdateDayTrip>(),
          deleteDayTrip: gh<_i53.DeleteDayTrip>(),
          listenTripStops: gh<_i67.ListenTripStops>(),
          updateDayTripStartTime: gh<_i80.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i38.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i34.UpdateTravelTime>(),
          tripStopDone: gh<_i76.TripStopDone>(),
          listenDayTrip: gh<_i65.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i84.UpdateTripStopsDirectionsUpToDate>(),
          crashlytics: gh<_i9.FirebaseCrashlytics>(),
        ));
    gh.lazySingleton<_i92.FetchPlaceDetails>(
        () => _i92.FetchPlaceDetails(gh<_i61.GooglePlacesRepository>()));
    gh.lazySingleton<_i93.FetchSuggestions>(
        () => _i93.FetchSuggestions(gh<_i61.GooglePlacesRepository>()));
    gh.lazySingleton<_i94.FetchTripStopsDirections>(
        () => _i94.FetchTripStopsDirections(gh<_i61.GooglePlacesRepository>()));
    gh.factory<_i95.GooglePlacesCubit>(() => _i95.GooglePlacesCubit(
          fetchSuggestions: gh<_i93.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i92.FetchPlaceDetails>(),
        ));
    gh.factory<_i96.LoginSignupCubit>(() => _i96.LoginSignupCubit(
          registerUser: gh<_i74.RegisterUser>(),
          loginUser: gh<_i70.LoginUser>(),
          recoverPassword: gh<_i73.RecoverPassword>(),
        ));
    gh.factoryParam<_i97.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i97.NewDayTripCubit(
          createDayTrip: gh<_i88.CreateDayTrip>(),
          settings: gh<_i24.Settings>(),
          tripId: tripId,
        ));
    gh.factory<_i98.NewTripCubit>(() => _i98.NewTripCubit(
          gh<_i86.UserCubit>(),
          gh<_i47.CreateTrip>(),
        ));
    gh.factoryParam<_i99.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i99.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i48.CreateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i84.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.lazySingleton<_i100.SettingsCubit>(() => _i100.SettingsCubit(
          updateSettings: gh<_i83.UpdateSettings>(),
          userCubit: gh<_i86.UserCubit>(),
        ));
    gh.factoryParam<_i101.TripCubit, _i90.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i101.TripCubit(
          trip: trip,
          saveTrip: gh<_i35.UpdateTrip>(),
          deleteTrip: gh<_i54.DeleteTrip>(),
          listenDayTrips: gh<_i66.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i82.UpdateDayTripsIndexes>(),
          crashlytics: gh<_i9.FirebaseCrashlytics>(),
        ));
    gh.factoryParam<_i102.TripStopCubit, _i102.TripStopCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i102.TripStopCubit(
          params: params,
          tripStopDone: gh<_i76.TripStopDone>(),
          updateTripStopNote: gh<_i37.UpdateTripStopNote>(),
          deleteTripStop: gh<_i55.DeleteTripStop>(),
          updateTripStop: gh<_i36.UpdateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i84.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.factoryParam<_i103.TripStopsMapCubit, _i90.Trip, _i91.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i103.TripStopsMapCubit(
          fetchPolylinePoints: gh<_i94.FetchTripStopsDirections>(),
          saveTripStopsDirections: gh<_i75.SaveTripStopsDirections>(),
          listenDayTrip: gh<_i65.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i84.UpdateTripStopsDirectionsUpToDate>(),
          updateDayTripShowDirections: gh<_i79.UpdateDayTripShowDirections>(),
          updateDayTripUseDifferentDirectionsColors:
              gh<_i81.UpdateDayTripUseDifferentDirectionsColors>(),
          crashlytics: gh<_i9.FirebaseCrashlytics>(),
          trip: trip,
          dayTrip: dayTrip,
        ));
    return this;
  }
}

class _$Network extends _i104.Network {}

class _$FirebaseModule extends _i104.FirebaseModule {}

class _$RegisterModule extends _i104.RegisterModule {}

class _$GooglePlacesModule extends _i104.GooglePlacesModule {}

class _$SettingsModule extends _i100.SettingsModule {}

class _$UserModule extends _i86.UserModule {}
