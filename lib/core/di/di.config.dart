// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i13;
import 'package:dio/dio.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i10;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i11;
import 'package:firebase_database/firebase_database.dart' as _i12;
import 'package:flutter_bloc/flutter_bloc.dart' as _i48;
import 'package:flutter_polyline_points/flutter_polyline_points.dart' as _i25;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i18;
import 'package:logger/logger.dart' as _i19;
import 'package:webview_flutter/webview_flutter.dart' as _i47;

import '../../features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i54;
import '../../features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i56;
import '../../features/day_trips/domain/entities/day_trip.dart' as _i95;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i55;
import '../../features/day_trips/domain/usecases/create_day_trip.dart' as _i92;
import '../../features/day_trips/domain/usecases/delete_day_trip.dart' as _i57;
import '../../features/day_trips/domain/usecases/listen_day_trip.dart' as _i69;
import '../../features/day_trips/domain/usecases/listen_day_trips.dart' as _i70;
import '../../features/day_trips/domain/usecases/save_trip_stops_directions.dart'
    as _i79;
import '../../features/day_trips/domain/usecases/update_day_trip.dart' as _i82;
import '../../features/day_trips/domain/usecases/update_day_trip_show_directions.dart'
    as _i83;
import '../../features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i84;
import '../../features/day_trips/domain/usecases/update_day_trip_use_different_directions_colors.dart'
    as _i85;
import '../../features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i86;
import '../../features/day_trips/domain/usecases/update_trip_stops_directions_up_to_date.dart'
    as _i88;
import '../../features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart'
    as _i93;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i101;
import '../../features/day_trips/presentation/cubit/trip_stops_map/trip_stops_map_cubit.dart'
    as _i107;
import '../../features/discover_new_trips/data/datasources/discover_trips_data_source.dart'
    as _i7;
import '../../features/discover_new_trips/data/repositories/discover_trips_repository_impl.dart'
    as _i9;
import '../../features/discover_new_trips/domain/repositories/discover_trips_repository.dart'
    as _i8;
import '../../features/discover_new_trips/domain/usecases/get_public_day_trips.dart'
    as _i14;
import '../../features/discover_new_trips/domain/usecases/get_public_trip_stops.dart'
    as _i15;
import '../../features/discover_new_trips/domain/usecases/get_public_trips.dart'
    as _i16;
import '../../features/discover_new_trips/presentation/cubit/daily_trips/discover_new_daily_trips_cubit.dart'
    as _i61;
import '../../features/discover_new_trips/presentation/cubit/trip_stop/discover_new_trip_stop_cubit.dart'
    as _i5;
import '../../features/discover_new_trips/presentation/cubit/trip_stops/discover_new_trip_stops_cubit.dart'
    as _i62;
import '../../features/discover_new_trips/presentation/cubit/trips/discover_new_trips_cubit.dart'
    as _i63;
import '../../features/google_places/data/datasources/google_places_data_source.dart'
    as _i64;
import '../../features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i66;
import '../../features/google_places/domain/repositories/google_places_repository.dart'
    as _i65;
import '../../features/google_places/domain/usecases/fetch_place_details.dart'
    as _i96;
import '../../features/google_places/domain/usecases/fetch_polyline_points.dart'
    as _i98;
import '../../features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i97;
import '../../features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i99;
import '../../features/import_old_trips/data/datasources/old_trips_data_source.dart'
    as _i22;
import '../../features/import_old_trips/data/repositories/old_trips_repository_impl.dart'
    as _i24;
import '../../features/import_old_trips/domain/repositories/old_trips_repository.dart'
    as _i23;
import '../../features/import_old_trips/domain/usecases/import_old_trip.dart'
    as _i67;
import '../../features/import_old_trips/domain/usecases/read_old_trips.dart'
    as _i26;
import '../../features/import_old_trips/presentation/cubit/import_old_trips_cubit.dart'
    as _i68;
import '../../features/info_contacts/presentation/cubit/info_contacts_cubit.dart'
    as _i17;
import '../../features/map/presentation/cubit/map_cubit.dart' as _i21;
import '../../features/settings/domain/entities/settings.dart' as _i27;
import '../../features/settings/domain/usecases/update_settings.dart' as _i87;
import '../../features/settings/presentation/cubit/settings_cubit.dart'
    as _i104;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i30;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i32;
import '../../features/trip_stops/domain/entities/trip_stop.dart' as _i6;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i31;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i52;
import '../../features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i59;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i71;
import '../../features/trip_stops/domain/usecases/trip_stop_done.dart' as _i80;
import '../../features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i37;
import '../../features/trip_stops/domain/usecases/update_trip_stop.dart'
    as _i39;
import '../../features/trip_stops/domain/usecases/update_trip_stop_note.dart'
    as _i40;
import '../../features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i41;
import '../../features/trip_stops/presentation/cubit/map/cubit/map_cubit.dart'
    as _i20;
import '../../features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart'
    as _i103;
import '../../features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart'
    as _i106;
import '../../features/trips/data/datasources/trips_data_source.dart' as _i34;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i36;
import '../../features/trips/domain/entities/trip.dart' as _i94;
import '../../features/trips/domain/repositories/trips_repository.dart' as _i35;
import '../../features/trips/domain/usecases/create_from_existing_trip.dart'
    as _i50;
import '../../features/trips/domain/usecases/create_trip.dart' as _i51;
import '../../features/trips/domain/usecases/delete_trip.dart' as _i58;
import '../../features/trips/domain/usecases/listen_trips.dart' as _i72;
import '../../features/trips/domain/usecases/update_trip.dart' as _i38;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i102;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart' as _i105;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart' as _i81;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i43;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i45;
import '../../features/user_account/domain/entities/user.dart' as _i42;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i44;
import '../../features/user_account/domain/usecases/delete_user.dart' as _i60;
import '../../features/user_account/domain/usecases/listen_user.dart' as _i73;
import '../../features/user_account/domain/usecases/login_user.dart' as _i74;
import '../../features/user_account/domain/usecases/logout_user.dart' as _i75;
import '../../features/user_account/domain/usecases/reauthenticate_user.dart'
    as _i76;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i77;
import '../../features/user_account/domain/usecases/register_user.dart' as _i78;
import '../../features/user_account/domain/usecases/update_user_details.dart'
    as _i89;
import '../../features/user_account/presentation/cubit/account_page/account_cubit.dart'
    as _i91;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i100;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i90;
import '../bloc_observer.dart' as _i49;
import '../db/day_trips_collection_ref.dart' as _i53;
import '../db/settings_collection_ref.dart' as _i28;
import '../db/trip_stops_collection_ref.dart' as _i29;
import '../db/trips_collection_ref.dart' as _i33;
import '../db/users_collection_ref.dart' as _i46;
import '../routes/app_router.dart' as _i3;
import 'di.dart' as _i108;

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
    gh.lazySingleton<_i14.GetPublicDayTrips>(
        () => _i14.GetPublicDayTrips(gh<_i8.DiscoverTripsRepository>()));
    gh.lazySingleton<_i15.GetPublicTripStops>(
        () => _i15.GetPublicTripStops(gh<_i8.DiscoverTripsRepository>()));
    gh.lazySingleton<_i16.GetPublicTrips>(
        () => _i16.GetPublicTrips(gh<_i8.DiscoverTripsRepository>()));
    gh.factory<_i17.InfoContactsCubit>(() => _i17.InfoContactsCubit());
    gh.lazySingleton<_i18.InternetConnection>(() => network.internetConnection);
    gh.lazySingleton<_i19.Logger>(() => registerModule.logger);
    gh.factory<_i20.MapCubit>(() => _i20.MapCubit());
    gh.factoryParam<_i21.MapCubit, _i21.MapStateType, dynamic>((
      mapStateType,
      _,
    ) =>
        _i21.MapCubit(mapStateType: mapStateType));
    gh.lazySingleton<_i22.OldTripsDataSource>(
        () => _i22.OldTripsDataSourceImpl(gh<_i12.FirebaseDatabase>()));
    gh.lazySingleton<_i23.OldTripsRepository>(
        () => _i24.OldTripsRepositoryImpl(gh<_i22.OldTripsDataSource>()));
    gh.lazySingleton<_i25.PolylinePoints>(
        () => googlePlacesModule.polylinePoints);
    gh.lazySingleton<_i26.ReadOldTrips>(
        () => _i26.ReadOldTrips(gh<_i23.OldTripsRepository>()));
    gh.factory<_i27.Settings>(() => settingsModule.settings);
    gh.factory<_i28.SettingsCollectionRef>(
        () => _i28.SettingsCollectionRef(gh<_i13.FirebaseFirestore>()));
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
    gh.factoryParam<_i29.TripStopsCollectionRef, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i29.TripStopsCollectionRef(
          gh<_i13.FirebaseFirestore>(),
          tripId,
          dayTripId,
        ));
    gh.lazySingleton<_i30.TripStopsDataSource>(
        () => _i30.TripStopsDataSourceImpl(gh<_i13.FirebaseFirestore>()));
    gh.lazySingleton<_i31.TripStopsRepository>(
        () => _i32.TripStopsRepositoryImpl(gh<_i30.TripStopsDataSource>()));
    gh.factory<_i33.TripsCollectionRef>(
        () => _i33.TripsCollectionRef(gh<_i13.FirebaseFirestore>()));
    gh.lazySingleton<_i34.TripsDataSource>(() => _i34.TripsDataSourceImpl(
          gh<_i13.FirebaseFirestore>(),
          gh<_i18.InternetConnection>(),
        ));
    gh.lazySingleton<_i35.TripsRepository>(() =>
        _i36.TripsRepositoryImpl(tripsDataSource: gh<_i34.TripsDataSource>()));
    gh.lazySingleton<_i37.UpdateTravelTime>(
        () => _i37.UpdateTravelTime(gh<_i31.TripStopsRepository>()));
    gh.lazySingleton<_i38.UpdateTrip>(
        () => _i38.UpdateTrip(gh<_i35.TripsRepository>()));
    gh.lazySingleton<_i39.UpdateTripStop>(
        () => _i39.UpdateTripStop(gh<_i31.TripStopsRepository>()));
    gh.lazySingleton<_i40.UpdateTripStopNote>(
        () => _i40.UpdateTripStopNote(gh<_i31.TripStopsRepository>()));
    gh.lazySingleton<_i41.UpdateTripStopsIndexes>(
        () => _i41.UpdateTripStopsIndexes(gh<_i31.TripStopsRepository>()));
    gh.factory<_i42.User>(() => userModule.user);
    gh.lazySingleton<_i43.UserDataSource>(() => _i43.UserDataSourceImpl(
          gh<_i10.FirebaseAuth>(),
          gh<_i13.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i44.UserRepository>(
        () => _i45.UserRepositoryImpl(gh<_i43.UserDataSource>()));
    gh.factory<_i46.UsersCollectionRef>(
        () => _i46.UsersCollectionRef(gh<_i13.FirebaseFirestore>()));
    gh.factory<_i47.WebViewController>(() => network.webViewController);
    gh.lazySingleton<_i48.BlocObserver>(
        () => _i49.SimpleBlocObserver(logger: gh<_i19.Logger>()));
    gh.lazySingleton<_i50.CreateFromExistingTrip>(
        () => _i50.CreateFromExistingTrip(gh<_i35.TripsRepository>()));
    gh.lazySingleton<_i51.CreateTrip>(
        () => _i51.CreateTrip(gh<_i35.TripsRepository>()));
    gh.lazySingleton<_i52.CreateTripStop>(
        () => _i52.CreateTripStop(gh<_i31.TripStopsRepository>()));
    gh.factoryParam<_i53.DayTripsCollectionRef, String, dynamic>((
      tripId,
      _,
    ) =>
        _i53.DayTripsCollectionRef(
          gh<_i13.FirebaseFirestore>(),
          tripId,
        ));
    gh.lazySingleton<_i54.DayTripsDataSource>(
        () => _i54.DayTripsDataSourceImpl(gh<_i13.FirebaseFirestore>()));
    gh.lazySingleton<_i55.DayTripsRepository>(
        () => _i56.DayTripsRepositoryImpl(gh<_i54.DayTripsDataSource>()));
    gh.lazySingleton<_i57.DeleteDayTrip>(
        () => _i57.DeleteDayTrip(gh<_i55.DayTripsRepository>()));
    gh.lazySingleton<_i58.DeleteTrip>(
        () => _i58.DeleteTrip(gh<_i35.TripsRepository>()));
    gh.lazySingleton<_i59.DeleteTripStop>(
        () => _i59.DeleteTripStop(gh<_i31.TripStopsRepository>()));
    gh.lazySingleton<_i60.DeleteUser>(() => _i60.DeleteUser(
          gh<_i44.UserRepository>(),
          gh<_i35.TripsRepository>(),
          gh<_i18.InternetConnection>(),
        ));
    gh.factoryParam<_i61.DiscoverNewDailyTripsCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i61.DiscoverNewDailyTripsCubit(
          tripId: tripId,
          getPublicDayTrips: gh<_i14.GetPublicDayTrips>(),
        ));
    gh.factoryParam<_i62.DiscoverNewTripStopsCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i62.DiscoverNewTripStopsCubit(
          getPublicTripStops: gh<_i15.GetPublicTripStops>(),
          tripId: tripId,
          dayTripId: dayTripId,
        ));
    gh.factory<_i63.DiscoverNewTripsCubit>(() => _i63.DiscoverNewTripsCubit(
          getPublicTrips: gh<_i16.GetPublicTrips>(),
          user: gh<_i42.User>(),
        ));
    gh.lazySingleton<_i64.GooglePlacesDataSource>(
        () => _i64.GooglePlacesDataSourceImpl(
              gh<_i4.Dio>(),
              gh<_i18.InternetConnection>(),
              gh<_i25.PolylinePoints>(),
              gh<String>(instanceName: 'googlePlacesKey'),
              gh<String>(instanceName: 'proxyUrl'),
            ));
    gh.lazySingleton<_i65.GooglePlacesRepository>(() =>
        _i66.GooglePlacesRepositoryImpl(gh<_i64.GooglePlacesDataSource>()));
    gh.lazySingleton<_i67.ImportOldTrips>(
        () => _i67.ImportOldTrips(gh<_i23.OldTripsRepository>()));
    gh.factoryParam<_i68.ImportOldTripsCubit, _i42.User, dynamic>((
      user,
      _,
    ) =>
        _i68.ImportOldTripsCubit(
          user: user,
          readOldTrips: gh<_i26.ReadOldTrips>(),
          importOldTrips: gh<_i67.ImportOldTrips>(),
        ));
    gh.lazySingleton<_i69.ListenDayTrip>(
        () => _i69.ListenDayTrip(gh<_i55.DayTripsRepository>()));
    gh.lazySingleton<_i70.ListenDayTrips>(
        () => _i70.ListenDayTrips(gh<_i55.DayTripsRepository>()));
    gh.lazySingleton<_i71.ListenTripStops>(
        () => _i71.ListenTripStops(gh<_i31.TripStopsRepository>()));
    gh.lazySingleton<_i72.ListenTrips>(
        () => _i72.ListenTrips(gh<_i35.TripsRepository>()));
    gh.lazySingleton<_i73.ListenUser>(
        () => _i73.ListenUser(gh<_i44.UserRepository>()));
    gh.lazySingleton<_i74.LoginUser>(
        () => _i74.LoginUser(gh<_i44.UserRepository>()));
    gh.lazySingleton<_i75.LogoutUser>(
        () => _i75.LogoutUser(gh<_i44.UserRepository>()));
    gh.lazySingleton<_i76.ReauthenticateUser>(
        () => _i76.ReauthenticateUser(gh<_i44.UserRepository>()));
    gh.lazySingleton<_i77.RecoverPassword>(
        () => _i77.RecoverPassword(gh<_i44.UserRepository>()));
    gh.lazySingleton<_i78.RegisterUser>(
        () => _i78.RegisterUser(gh<_i44.UserRepository>()));
    gh.lazySingleton<_i79.SaveTripStopsDirections>(
        () => _i79.SaveTripStopsDirections(gh<_i55.DayTripsRepository>()));
    gh.lazySingleton<_i80.TripStopDone>(
        () => _i80.TripStopDone(gh<_i31.TripStopsRepository>()));
    gh.factory<_i81.TripsCubit>(() => _i81.TripsCubit(
          listenTrips: gh<_i72.ListenTrips>(),
          crashlytics: gh<_i11.FirebaseCrashlytics>(),
          user: gh<_i42.User>(),
        ));
    gh.lazySingleton<_i82.UpdateDayTrip>(
        () => _i82.UpdateDayTrip(gh<_i55.DayTripsRepository>()));
    gh.lazySingleton<_i83.UpdateDayTripShowDirections>(
        () => _i83.UpdateDayTripShowDirections(gh<_i55.DayTripsRepository>()));
    gh.lazySingleton<_i84.UpdateDayTripStartTime>(
        () => _i84.UpdateDayTripStartTime(gh<_i55.DayTripsRepository>()));
    gh.lazySingleton<_i85.UpdateDayTripUseDifferentDirectionsColors>(() =>
        _i85.UpdateDayTripUseDifferentDirectionsColors(
            gh<_i55.DayTripsRepository>()));
    gh.lazySingleton<_i86.UpdateDayTripsIndexes>(
        () => _i86.UpdateDayTripsIndexes(gh<_i55.DayTripsRepository>()));
    gh.lazySingleton<_i87.UpdateSettings>(
        () => _i87.UpdateSettings(gh<_i44.UserRepository>()));
    gh.lazySingleton<_i88.UpdateTripStopsDirectionsUpToDate>(() =>
        _i88.UpdateTripStopsDirectionsUpToDate(gh<_i55.DayTripsRepository>()));
    gh.lazySingleton<_i89.UpdateUserDetails>(
        () => _i89.UpdateUserDetails(gh<_i44.UserRepository>()));
    gh.lazySingleton<_i90.UserCubit>(
        () => _i90.UserCubit(listenUserState: gh<_i73.ListenUser>()));
    gh.factoryParam<_i91.AccountCubit, dynamic, dynamic>((
      user,
      _,
    ) =>
        _i91.AccountCubit(
          user: user,
          logoutUser: gh<_i75.LogoutUser>(),
          reauthenticateUser: gh<_i76.ReauthenticateUser>(),
          updateUserDetails: gh<_i89.UpdateUserDetails>(),
          deleteUser: gh<_i60.DeleteUser>(),
        ));
    gh.lazySingleton<_i92.CreateDayTrip>(
        () => _i92.CreateDayTrip(gh<_i55.DayTripsRepository>()));
    gh.factoryParam<_i93.DayTripCubit, _i94.Trip, _i95.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i93.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i82.UpdateDayTrip>(),
          deleteDayTrip: gh<_i57.DeleteDayTrip>(),
          listenTripStops: gh<_i71.ListenTripStops>(),
          updateDayTripStartTime: gh<_i84.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i41.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i37.UpdateTravelTime>(),
          tripStopDone: gh<_i80.TripStopDone>(),
          listenDayTrip: gh<_i69.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i88.UpdateTripStopsDirectionsUpToDate>(),
          crashlytics: gh<_i11.FirebaseCrashlytics>(),
        ));
    gh.lazySingleton<_i96.FetchPlaceDetails>(
        () => _i96.FetchPlaceDetails(gh<_i65.GooglePlacesRepository>()));
    gh.lazySingleton<_i97.FetchSuggestions>(
        () => _i97.FetchSuggestions(gh<_i65.GooglePlacesRepository>()));
    gh.lazySingleton<_i98.FetchTripStopsDirections>(
        () => _i98.FetchTripStopsDirections(gh<_i65.GooglePlacesRepository>()));
    gh.factory<_i99.GooglePlacesCubit>(() => _i99.GooglePlacesCubit(
          fetchSuggestions: gh<_i97.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i96.FetchPlaceDetails>(),
        ));
    gh.factory<_i100.LoginSignupCubit>(() => _i100.LoginSignupCubit(
          registerUser: gh<_i78.RegisterUser>(),
          loginUser: gh<_i74.LoginUser>(),
          recoverPassword: gh<_i77.RecoverPassword>(),
        ));
    gh.factoryParam<_i101.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i101.NewDayTripCubit(
          createDayTrip: gh<_i92.CreateDayTrip>(),
          settings: gh<_i27.Settings>(),
          tripId: tripId,
        ));
    gh.factoryParam<_i102.NewTripCubit, _i94.Trip?, dynamic>((
      existingTrip,
      _,
    ) =>
        _i102.NewTripCubit(
          userCubit: gh<_i90.UserCubit>(),
          createTrip: gh<_i51.CreateTrip>(),
          createFromExistingTrip: gh<_i50.CreateFromExistingTrip>(),
          settings: gh<_i27.Settings>(),
          existingTrip: existingTrip,
        ));
    gh.factoryParam<_i103.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i103.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i52.CreateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i88.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.lazySingleton<_i104.SettingsCubit>(() => _i104.SettingsCubit(
          updateSettings: gh<_i87.UpdateSettings>(),
          userCubit: gh<_i90.UserCubit>(),
        ));
    gh.factoryParam<_i105.TripCubit, _i94.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i105.TripCubit(
          trip: trip,
          saveTrip: gh<_i38.UpdateTrip>(),
          deleteTrip: gh<_i58.DeleteTrip>(),
          listenDayTrips: gh<_i70.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i86.UpdateDayTripsIndexes>(),
          crashlytics: gh<_i11.FirebaseCrashlytics>(),
        ));
    gh.factoryParam<_i106.TripStopCubit, _i106.TripStopCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i106.TripStopCubit(
          params: params,
          tripStopDone: gh<_i80.TripStopDone>(),
          updateTripStopNote: gh<_i40.UpdateTripStopNote>(),
          deleteTripStop: gh<_i59.DeleteTripStop>(),
          updateTripStop: gh<_i39.UpdateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i88.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.factoryParam<_i107.TripStopsMapCubit, _i94.Trip, _i95.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i107.TripStopsMapCubit(
          fetchPolylinePoints: gh<_i98.FetchTripStopsDirections>(),
          saveTripStopsDirections: gh<_i79.SaveTripStopsDirections>(),
          listenDayTrip: gh<_i69.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i88.UpdateTripStopsDirectionsUpToDate>(),
          updateDayTripShowDirections: gh<_i83.UpdateDayTripShowDirections>(),
          updateDayTripUseDifferentDirectionsColors:
              gh<_i85.UpdateDayTripUseDifferentDirectionsColors>(),
          crashlytics: gh<_i11.FirebaseCrashlytics>(),
          trip: trip,
          dayTrip: dayTrip,
        ));
    return this;
  }
}

class _$Network extends _i108.Network {}

class _$FirebaseModule extends _i108.FirebaseModule {}

class _$RegisterModule extends _i108.RegisterModule {}

class _$GooglePlacesModule extends _i108.GooglePlacesModule {}

class _$SettingsModule extends _i104.SettingsModule {}

class _$UserModule extends _i90.UserModule {}
