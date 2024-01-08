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
import 'package:flutter_bloc/flutter_bloc.dart' as _i44;
import 'package:flutter_polyline_points/flutter_polyline_points.dart' as _i21;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i15;
import 'package:logger/logger.dart' as _i16;
import 'package:webview_flutter/webview_flutter.dart' as _i43;

import '../../features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i49;
import '../../features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i51;
import '../../features/day_trips/domain/entities/day_trip.dart' as _i89;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i50;
import '../../features/day_trips/domain/usecases/create_day_trip.dart' as _i86;
import '../../features/day_trips/domain/usecases/delete_day_trip.dart' as _i52;
import '../../features/day_trips/domain/usecases/listen_day_trip.dart' as _i63;
import '../../features/day_trips/domain/usecases/listen_day_trips.dart' as _i64;
import '../../features/day_trips/domain/usecases/save_trip_stops_directions.dart'
    as _i73;
import '../../features/day_trips/domain/usecases/update_day_trip.dart' as _i76;
import '../../features/day_trips/domain/usecases/update_day_trip_show_directions.dart'
    as _i77;
import '../../features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i78;
import '../../features/day_trips/domain/usecases/update_day_trip_use_different_directions_colors.dart'
    as _i79;
import '../../features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i80;
import '../../features/day_trips/domain/usecases/update_trip_stops_directions_up_to_date.dart'
    as _i82;
import '../../features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart'
    as _i87;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i95;
import '../../features/day_trips/presentation/cubit/trip_stops_map/trip_stops_map_cubit.dart'
    as _i101;
import '../../features/discover_new_trips/data/datasources/discover_trips_data_source.dart'
    as _i5;
import '../../features/discover_new_trips/data/repositories/discover_trips_repository_impl.dart'
    as _i7;
import '../../features/discover_new_trips/domain/repositories/discover_trips_repository.dart'
    as _i6;
import '../../features/discover_new_trips/domain/usecases/get_public_day_trips.dart'
    as _i12;
import '../../features/discover_new_trips/domain/usecases/get_public_trips.dart'
    as _i13;
import '../../features/discover_new_trips/presentation/cubit/daily_trips/cubit/discover_new_daily_trips_cubit.dart'
    as _i56;
import '../../features/discover_new_trips/presentation/cubit/trips/discover_new_trips_cubit.dart'
    as _i57;
import '../../features/google_places/data/datasources/google_places_data_source.dart'
    as _i58;
import '../../features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i60;
import '../../features/google_places/domain/repositories/google_places_repository.dart'
    as _i59;
import '../../features/google_places/domain/usecases/fetch_place_details.dart'
    as _i90;
import '../../features/google_places/domain/usecases/fetch_polyline_points.dart'
    as _i92;
import '../../features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i91;
import '../../features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i93;
import '../../features/import_old_trips/data/datasources/old_trips_data_source.dart'
    as _i18;
import '../../features/import_old_trips/data/repositories/old_trips_repository_impl.dart'
    as _i20;
import '../../features/import_old_trips/domain/repositories/old_trips_repository.dart'
    as _i19;
import '../../features/import_old_trips/domain/usecases/import_old_trip.dart'
    as _i61;
import '../../features/import_old_trips/domain/usecases/read_old_trips.dart'
    as _i22;
import '../../features/import_old_trips/presentation/cubit/import_old_trips_cubit.dart'
    as _i62;
import '../../features/info_contacts/presentation/cubit/info_contacts_cubit.dart'
    as _i14;
import '../../features/settings/domain/entities/settings.dart' as _i23;
import '../../features/settings/domain/usecases/update_settings.dart' as _i81;
import '../../features/settings/presentation/cubit/settings_cubit.dart' as _i98;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i26;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i28;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i27;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i47;
import '../../features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i54;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i65;
import '../../features/trip_stops/domain/usecases/trip_stop_done.dart' as _i74;
import '../../features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i33;
import '../../features/trip_stops/domain/usecases/update_trip_stop.dart'
    as _i35;
import '../../features/trip_stops/domain/usecases/update_trip_stop_note.dart'
    as _i36;
import '../../features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i37;
import '../../features/trip_stops/presentation/cubit/map/cubit/map_cubit.dart'
    as _i17;
import '../../features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart'
    as _i97;
import '../../features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart'
    as _i100;
import '../../features/trips/data/datasources/trips_data_source.dart' as _i30;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i32;
import '../../features/trips/domain/entities/trip.dart' as _i88;
import '../../features/trips/domain/repositories/trips_repository.dart' as _i31;
import '../../features/trips/domain/usecases/create_trip.dart' as _i46;
import '../../features/trips/domain/usecases/delete_trip.dart' as _i53;
import '../../features/trips/domain/usecases/listen_trips.dart' as _i66;
import '../../features/trips/domain/usecases/update_trip.dart' as _i34;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i96;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart' as _i99;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart' as _i75;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i39;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i41;
import '../../features/user_account/domain/entities/user.dart' as _i38;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i40;
import '../../features/user_account/domain/usecases/delete_user.dart' as _i55;
import '../../features/user_account/domain/usecases/listen_user.dart' as _i67;
import '../../features/user_account/domain/usecases/login_user.dart' as _i68;
import '../../features/user_account/domain/usecases/logout_user.dart' as _i69;
import '../../features/user_account/domain/usecases/reauthenticate_user.dart'
    as _i70;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i71;
import '../../features/user_account/domain/usecases/register_user.dart' as _i72;
import '../../features/user_account/domain/usecases/update_user_details.dart'
    as _i83;
import '../../features/user_account/presentation/cubit/account_page/account_cubit.dart'
    as _i85;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i94;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i84;
import '../bloc_observer.dart' as _i45;
import '../db/day_trips_collection_ref.dart' as _i48;
import '../db/settings_collection_ref.dart' as _i24;
import '../db/trip_stops_collection_ref.dart' as _i25;
import '../db/trips_collection_ref.dart' as _i29;
import '../db/users_collection_ref.dart' as _i42;
import '../routes/app_router.dart' as _i3;
import 'di.dart' as _i102;

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
    gh.lazySingleton<_i13.GetPublicTrips>(
        () => _i13.GetPublicTrips(gh<_i6.DiscoverTripsRepository>()));
    gh.factory<_i14.InfoContactsCubit>(() => _i14.InfoContactsCubit());
    gh.lazySingleton<_i15.InternetConnection>(() => network.internetConnection);
    gh.lazySingleton<_i16.Logger>(() => registerModule.logger);
    gh.factory<_i17.MapCubit>(() => _i17.MapCubit());
    gh.lazySingleton<_i18.OldTripsDataSource>(
        () => _i18.OldTripsDataSourceImpl(gh<_i10.FirebaseDatabase>()));
    gh.lazySingleton<_i19.OldTripsRepository>(
        () => _i20.OldTripsRepositoryImpl(gh<_i18.OldTripsDataSource>()));
    gh.lazySingleton<_i21.PolylinePoints>(
        () => googlePlacesModule.polylinePoints);
    gh.lazySingleton<_i22.ReadOldTrips>(
        () => _i22.ReadOldTrips(gh<_i19.OldTripsRepository>()));
    gh.factory<_i23.Settings>(() => settingsModule.settings);
    gh.factory<_i24.SettingsCollectionRef>(
        () => _i24.SettingsCollectionRef(gh<_i11.FirebaseFirestore>()));
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
    gh.factoryParam<_i25.TripStopsCollectionRef, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i25.TripStopsCollectionRef(
          gh<_i11.FirebaseFirestore>(),
          tripId,
          dayTripId,
        ));
    gh.lazySingleton<_i26.TripStopsDataSource>(
        () => _i26.TripStopsDataSourceImpl(gh<_i11.FirebaseFirestore>()));
    gh.lazySingleton<_i27.TripStopsRepository>(
        () => _i28.TripStopsRepositoryImpl(gh<_i26.TripStopsDataSource>()));
    gh.factory<_i29.TripsCollectionRef>(
        () => _i29.TripsCollectionRef(gh<_i11.FirebaseFirestore>()));
    gh.lazySingleton<_i30.TripsDataSource>(
        () => _i30.TripsDataSourceImpl(gh<_i11.FirebaseFirestore>()));
    gh.lazySingleton<_i31.TripsRepository>(() =>
        _i32.TripsRepositoryImpl(tripsDataSource: gh<_i30.TripsDataSource>()));
    gh.lazySingleton<_i33.UpdateTravelTime>(
        () => _i33.UpdateTravelTime(gh<_i27.TripStopsRepository>()));
    gh.lazySingleton<_i34.UpdateTrip>(
        () => _i34.UpdateTrip(gh<_i31.TripsRepository>()));
    gh.lazySingleton<_i35.UpdateTripStop>(
        () => _i35.UpdateTripStop(gh<_i27.TripStopsRepository>()));
    gh.lazySingleton<_i36.UpdateTripStopNote>(
        () => _i36.UpdateTripStopNote(gh<_i27.TripStopsRepository>()));
    gh.lazySingleton<_i37.UpdateTripStopsIndexes>(
        () => _i37.UpdateTripStopsIndexes(gh<_i27.TripStopsRepository>()));
    gh.factory<_i38.User>(() => userModule.user);
    gh.lazySingleton<_i39.UserDataSource>(() => _i39.UserDataSourceImpl(
          gh<_i8.FirebaseAuth>(),
          gh<_i11.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i40.UserRepository>(
        () => _i41.UserRepositoryImpl(gh<_i39.UserDataSource>()));
    gh.factory<_i42.UsersCollectionRef>(
        () => _i42.UsersCollectionRef(gh<_i11.FirebaseFirestore>()));
    gh.factory<_i43.WebViewController>(() => network.webViewController);
    gh.lazySingleton<_i44.BlocObserver>(
        () => _i45.SimpleBlocObserver(logger: gh<_i16.Logger>()));
    gh.lazySingleton<_i46.CreateTrip>(
        () => _i46.CreateTrip(gh<_i31.TripsRepository>()));
    gh.lazySingleton<_i47.CreateTripStop>(
        () => _i47.CreateTripStop(gh<_i27.TripStopsRepository>()));
    gh.factoryParam<_i48.DayTripsCollectionRef, String, dynamic>((
      tripId,
      _,
    ) =>
        _i48.DayTripsCollectionRef(
          gh<_i11.FirebaseFirestore>(),
          tripId,
        ));
    gh.lazySingleton<_i49.DayTripsDataSource>(
        () => _i49.DayTripsDataSourceImpl(gh<_i11.FirebaseFirestore>()));
    gh.lazySingleton<_i50.DayTripsRepository>(
        () => _i51.DayTripsRepositoryImpl(gh<_i49.DayTripsDataSource>()));
    gh.lazySingleton<_i52.DeleteDayTrip>(
        () => _i52.DeleteDayTrip(gh<_i50.DayTripsRepository>()));
    gh.lazySingleton<_i53.DeleteTrip>(
        () => _i53.DeleteTrip(gh<_i31.TripsRepository>()));
    gh.lazySingleton<_i54.DeleteTripStop>(
        () => _i54.DeleteTripStop(gh<_i27.TripStopsRepository>()));
    gh.lazySingleton<_i55.DeleteUser>(() => _i55.DeleteUser(
          gh<_i40.UserRepository>(),
          gh<_i31.TripsRepository>(),
          gh<_i15.InternetConnection>(),
        ));
    gh.factoryParam<_i56.DiscoverNewDailyTripsCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i56.DiscoverNewDailyTripsCubit(
          tripId: tripId,
          getPublicDayTrips: gh<_i12.GetPublicDayTrips>(),
        ));
    gh.factory<_i57.DiscoverNewTripsCubit>(() => _i57.DiscoverNewTripsCubit(
          getPublicTrips: gh<_i13.GetPublicTrips>(),
          user: gh<_i38.User>(),
        ));
    gh.lazySingleton<_i58.GooglePlacesDataSource>(
        () => _i58.GooglePlacesDataSourceImpl(
              gh<_i4.Dio>(),
              gh<_i15.InternetConnection>(),
              gh<_i21.PolylinePoints>(),
              gh<String>(instanceName: 'googlePlacesKey'),
              gh<String>(instanceName: 'proxyUrl'),
            ));
    gh.lazySingleton<_i59.GooglePlacesRepository>(() =>
        _i60.GooglePlacesRepositoryImpl(gh<_i58.GooglePlacesDataSource>()));
    gh.lazySingleton<_i61.ImportOldTrips>(
        () => _i61.ImportOldTrips(gh<_i19.OldTripsRepository>()));
    gh.factoryParam<_i62.ImportOldTripsCubit, _i38.User, dynamic>((
      user,
      _,
    ) =>
        _i62.ImportOldTripsCubit(
          user: user,
          readOldTrips: gh<_i22.ReadOldTrips>(),
          importOldTrips: gh<_i61.ImportOldTrips>(),
        ));
    gh.lazySingleton<_i63.ListenDayTrip>(
        () => _i63.ListenDayTrip(gh<_i50.DayTripsRepository>()));
    gh.lazySingleton<_i64.ListenDayTrips>(
        () => _i64.ListenDayTrips(gh<_i50.DayTripsRepository>()));
    gh.lazySingleton<_i65.ListenTripStops>(
        () => _i65.ListenTripStops(gh<_i27.TripStopsRepository>()));
    gh.lazySingleton<_i66.ListenTrips>(
        () => _i66.ListenTrips(gh<_i31.TripsRepository>()));
    gh.lazySingleton<_i67.ListenUser>(
        () => _i67.ListenUser(gh<_i40.UserRepository>()));
    gh.lazySingleton<_i68.LoginUser>(
        () => _i68.LoginUser(gh<_i40.UserRepository>()));
    gh.lazySingleton<_i69.LogoutUser>(
        () => _i69.LogoutUser(gh<_i40.UserRepository>()));
    gh.lazySingleton<_i70.ReauthenticateUser>(
        () => _i70.ReauthenticateUser(gh<_i40.UserRepository>()));
    gh.lazySingleton<_i71.RecoverPassword>(
        () => _i71.RecoverPassword(gh<_i40.UserRepository>()));
    gh.lazySingleton<_i72.RegisterUser>(
        () => _i72.RegisterUser(gh<_i40.UserRepository>()));
    gh.lazySingleton<_i73.SaveTripStopsDirections>(
        () => _i73.SaveTripStopsDirections(gh<_i50.DayTripsRepository>()));
    gh.lazySingleton<_i74.TripStopDone>(
        () => _i74.TripStopDone(gh<_i27.TripStopsRepository>()));
    gh.factory<_i75.TripsCubit>(() => _i75.TripsCubit(
          listenTrips: gh<_i66.ListenTrips>(),
          crashlytics: gh<_i9.FirebaseCrashlytics>(),
          user: gh<_i38.User>(),
        ));
    gh.lazySingleton<_i76.UpdateDayTrip>(
        () => _i76.UpdateDayTrip(gh<_i50.DayTripsRepository>()));
    gh.lazySingleton<_i77.UpdateDayTripShowDirections>(
        () => _i77.UpdateDayTripShowDirections(gh<_i50.DayTripsRepository>()));
    gh.lazySingleton<_i78.UpdateDayTripStartTime>(
        () => _i78.UpdateDayTripStartTime(gh<_i50.DayTripsRepository>()));
    gh.lazySingleton<_i79.UpdateDayTripUseDifferentDirectionsColors>(() =>
        _i79.UpdateDayTripUseDifferentDirectionsColors(
            gh<_i50.DayTripsRepository>()));
    gh.lazySingleton<_i80.UpdateDayTripsIndexes>(
        () => _i80.UpdateDayTripsIndexes(gh<_i50.DayTripsRepository>()));
    gh.lazySingleton<_i81.UpdateSettings>(
        () => _i81.UpdateSettings(gh<_i40.UserRepository>()));
    gh.lazySingleton<_i82.UpdateTripStopsDirectionsUpToDate>(() =>
        _i82.UpdateTripStopsDirectionsUpToDate(gh<_i50.DayTripsRepository>()));
    gh.lazySingleton<_i83.UpdateUserDetails>(
        () => _i83.UpdateUserDetails(gh<_i40.UserRepository>()));
    gh.lazySingleton<_i84.UserCubit>(
        () => _i84.UserCubit(listenUserState: gh<_i67.ListenUser>()));
    gh.factoryParam<_i85.AccountCubit, dynamic, dynamic>((
      user,
      _,
    ) =>
        _i85.AccountCubit(
          user: user,
          logoutUser: gh<_i69.LogoutUser>(),
          reauthenticateUser: gh<_i70.ReauthenticateUser>(),
          updateUserDetails: gh<_i83.UpdateUserDetails>(),
          deleteUser: gh<_i55.DeleteUser>(),
        ));
    gh.lazySingleton<_i86.CreateDayTrip>(
        () => _i86.CreateDayTrip(gh<_i50.DayTripsRepository>()));
    gh.factoryParam<_i87.DayTripCubit, _i88.Trip, _i89.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i87.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i76.UpdateDayTrip>(),
          deleteDayTrip: gh<_i52.DeleteDayTrip>(),
          listenTripStops: gh<_i65.ListenTripStops>(),
          updateDayTripStartTime: gh<_i78.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i37.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i33.UpdateTravelTime>(),
          tripStopDone: gh<_i74.TripStopDone>(),
          listenDayTrip: gh<_i63.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i82.UpdateTripStopsDirectionsUpToDate>(),
          crashlytics: gh<_i9.FirebaseCrashlytics>(),
        ));
    gh.lazySingleton<_i90.FetchPlaceDetails>(
        () => _i90.FetchPlaceDetails(gh<_i59.GooglePlacesRepository>()));
    gh.lazySingleton<_i91.FetchSuggestions>(
        () => _i91.FetchSuggestions(gh<_i59.GooglePlacesRepository>()));
    gh.lazySingleton<_i92.FetchTripStopsDirections>(
        () => _i92.FetchTripStopsDirections(gh<_i59.GooglePlacesRepository>()));
    gh.factory<_i93.GooglePlacesCubit>(() => _i93.GooglePlacesCubit(
          fetchSuggestions: gh<_i91.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i90.FetchPlaceDetails>(),
        ));
    gh.factory<_i94.LoginSignupCubit>(() => _i94.LoginSignupCubit(
          registerUser: gh<_i72.RegisterUser>(),
          loginUser: gh<_i68.LoginUser>(),
          recoverPassword: gh<_i71.RecoverPassword>(),
        ));
    gh.factoryParam<_i95.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i95.NewDayTripCubit(
          createDayTrip: gh<_i86.CreateDayTrip>(),
          settings: gh<_i23.Settings>(),
          tripId: tripId,
        ));
    gh.factory<_i96.NewTripCubit>(() => _i96.NewTripCubit(
          gh<_i84.UserCubit>(),
          gh<_i46.CreateTrip>(),
        ));
    gh.factoryParam<_i97.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i97.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i47.CreateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i82.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.lazySingleton<_i98.SettingsCubit>(() => _i98.SettingsCubit(
          updateSettings: gh<_i81.UpdateSettings>(),
          userCubit: gh<_i84.UserCubit>(),
        ));
    gh.factoryParam<_i99.TripCubit, _i88.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i99.TripCubit(
          trip: trip,
          saveTrip: gh<_i34.UpdateTrip>(),
          deleteTrip: gh<_i53.DeleteTrip>(),
          listenDayTrips: gh<_i64.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i80.UpdateDayTripsIndexes>(),
          crashlytics: gh<_i9.FirebaseCrashlytics>(),
        ));
    gh.factoryParam<_i100.TripStopCubit, _i100.TripStopCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i100.TripStopCubit(
          params: params,
          tripStopDone: gh<_i74.TripStopDone>(),
          updateTripStopNote: gh<_i36.UpdateTripStopNote>(),
          deleteTripStop: gh<_i54.DeleteTripStop>(),
          updateTripStop: gh<_i35.UpdateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i82.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.factoryParam<_i101.TripStopsMapCubit, _i88.Trip, _i89.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i101.TripStopsMapCubit(
          fetchPolylinePoints: gh<_i92.FetchTripStopsDirections>(),
          saveTripStopsDirections: gh<_i73.SaveTripStopsDirections>(),
          listenDayTrip: gh<_i63.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i82.UpdateTripStopsDirectionsUpToDate>(),
          updateDayTripShowDirections: gh<_i77.UpdateDayTripShowDirections>(),
          updateDayTripUseDifferentDirectionsColors:
              gh<_i79.UpdateDayTripUseDifferentDirectionsColors>(),
          crashlytics: gh<_i9.FirebaseCrashlytics>(),
          trip: trip,
          dayTrip: dayTrip,
        ));
    return this;
  }
}

class _$Network extends _i102.Network {}

class _$FirebaseModule extends _i102.FirebaseModule {}

class _$RegisterModule extends _i102.RegisterModule {}

class _$GooglePlacesModule extends _i102.GooglePlacesModule {}

class _$SettingsModule extends _i98.SettingsModule {}

class _$UserModule extends _i84.UserModule {}
