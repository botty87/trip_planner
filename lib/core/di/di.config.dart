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
import 'package:firebase_storage/firebase_storage.dart' as _i14;
import 'package:flutter_bloc/flutter_bloc.dart' as _i49;
import 'package:flutter_polyline_points/flutter_polyline_points.dart' as _i26;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i19;
import 'package:logger/logger.dart' as _i20;
import 'package:webview_flutter/webview_flutter.dart' as _i48;

import '../../features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i55;
import '../../features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i57;
import '../../features/day_trips/domain/entities/day_trip.dart' as _i96;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i56;
import '../../features/day_trips/domain/usecases/create_day_trip.dart' as _i93;
import '../../features/day_trips/domain/usecases/delete_day_trip.dart' as _i58;
import '../../features/day_trips/domain/usecases/listen_day_trip.dart' as _i70;
import '../../features/day_trips/domain/usecases/listen_day_trips.dart' as _i71;
import '../../features/day_trips/domain/usecases/save_trip_stops_directions.dart'
    as _i80;
import '../../features/day_trips/domain/usecases/update_day_trip.dart' as _i83;
import '../../features/day_trips/domain/usecases/update_day_trip_show_directions.dart'
    as _i84;
import '../../features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i85;
import '../../features/day_trips/domain/usecases/update_day_trip_use_different_directions_colors.dart'
    as _i86;
import '../../features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i87;
import '../../features/day_trips/domain/usecases/update_trip_stops_directions_up_to_date.dart'
    as _i89;
import '../../features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart'
    as _i94;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i102;
import '../../features/day_trips/presentation/cubit/trip_stops_map/trip_stops_map_cubit.dart'
    as _i108;
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
    as _i62;
import '../../features/discover_new_trips/presentation/cubit/trip_stop/discover_new_trip_stop_cubit.dart'
    as _i5;
import '../../features/discover_new_trips/presentation/cubit/trip_stops/discover_new_trip_stops_cubit.dart'
    as _i63;
import '../../features/discover_new_trips/presentation/cubit/trips/discover_new_trips_cubit.dart'
    as _i64;
import '../../features/google_places/data/datasources/google_places_data_source.dart'
    as _i65;
import '../../features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i67;
import '../../features/google_places/domain/repositories/google_places_repository.dart'
    as _i66;
import '../../features/google_places/domain/usecases/fetch_place_details.dart'
    as _i97;
import '../../features/google_places/domain/usecases/fetch_polyline_points.dart'
    as _i99;
import '../../features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i98;
import '../../features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i100;
import '../../features/import_old_trips/data/datasources/old_trips_data_source.dart'
    as _i23;
import '../../features/import_old_trips/data/repositories/old_trips_repository_impl.dart'
    as _i25;
import '../../features/import_old_trips/domain/repositories/old_trips_repository.dart'
    as _i24;
import '../../features/import_old_trips/domain/usecases/import_old_trip.dart'
    as _i68;
import '../../features/import_old_trips/domain/usecases/read_old_trips.dart'
    as _i27;
import '../../features/import_old_trips/presentation/cubit/import_old_trips_cubit.dart'
    as _i69;
import '../../features/info_contacts/presentation/cubit/info_contacts_cubit.dart'
    as _i18;
import '../../features/map/presentation/cubit/map_cubit.dart' as _i22;
import '../../features/settings/domain/entities/settings.dart' as _i28;
import '../../features/settings/domain/usecases/update_settings.dart' as _i88;
import '../../features/settings/presentation/cubit/settings_cubit.dart'
    as _i105;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i31;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i33;
import '../../features/trip_stops/domain/entities/trip_stop.dart' as _i6;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i32;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i53;
import '../../features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i60;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i72;
import '../../features/trip_stops/domain/usecases/trip_stop_done.dart' as _i81;
import '../../features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i38;
import '../../features/trip_stops/domain/usecases/update_trip_stop.dart'
    as _i40;
import '../../features/trip_stops/domain/usecases/update_trip_stop_note.dart'
    as _i41;
import '../../features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i42;
import '../../features/trip_stops/presentation/cubit/map/cubit/map_cubit.dart'
    as _i21;
import '../../features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart'
    as _i104;
import '../../features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart'
    as _i107;
import '../../features/trips/data/datasources/trips_data_source.dart' as _i35;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i37;
import '../../features/trips/domain/entities/trip.dart' as _i95;
import '../../features/trips/domain/repositories/trips_repository.dart' as _i36;
import '../../features/trips/domain/usecases/create_from_existing_trip.dart'
    as _i51;
import '../../features/trips/domain/usecases/create_trip.dart' as _i52;
import '../../features/trips/domain/usecases/delete_trip.dart' as _i59;
import '../../features/trips/domain/usecases/listen_trips.dart' as _i73;
import '../../features/trips/domain/usecases/update_trip.dart' as _i39;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i103;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart' as _i106;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart' as _i82;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i44;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i46;
import '../../features/user_account/domain/entities/user.dart' as _i43;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i45;
import '../../features/user_account/domain/usecases/delete_user.dart' as _i61;
import '../../features/user_account/domain/usecases/listen_user.dart' as _i74;
import '../../features/user_account/domain/usecases/login_user.dart' as _i75;
import '../../features/user_account/domain/usecases/logout_user.dart' as _i76;
import '../../features/user_account/domain/usecases/reauthenticate_user.dart'
    as _i77;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i78;
import '../../features/user_account/domain/usecases/register_user.dart' as _i79;
import '../../features/user_account/domain/usecases/update_user_details.dart'
    as _i90;
import '../../features/user_account/presentation/cubit/account_page/account_cubit.dart'
    as _i92;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i101;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i91;
import '../bloc_observer.dart' as _i50;
import '../db/day_trips_collection_ref.dart' as _i54;
import '../db/settings_collection_ref.dart' as _i29;
import '../db/trip_stops_collection_ref.dart' as _i30;
import '../db/trips_collection_ref.dart' as _i34;
import '../db/users_collection_ref.dart' as _i47;
import '../routes/app_router.dart' as _i3;
import 'di.dart' as _i109;

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
    gh.lazySingleton<_i20.Logger>(() => registerModule.logger);
    gh.factory<_i21.MapCubit>(() => _i21.MapCubit());
    gh.factoryParam<_i22.MapCubit, _i22.MapStateType, dynamic>((
      mapStateType,
      _,
    ) =>
        _i22.MapCubit(mapStateType: mapStateType));
    gh.lazySingleton<_i23.OldTripsDataSource>(
        () => _i23.OldTripsDataSourceImpl(gh<_i12.FirebaseDatabase>()));
    gh.lazySingleton<_i24.OldTripsRepository>(
        () => _i25.OldTripsRepositoryImpl(gh<_i23.OldTripsDataSource>()));
    gh.lazySingleton<_i26.PolylinePoints>(
        () => googlePlacesModule.polylinePoints);
    gh.lazySingleton<_i27.ReadOldTrips>(
        () => _i27.ReadOldTrips(gh<_i24.OldTripsRepository>()));
    gh.factory<_i28.Settings>(() => settingsModule.settings);
    gh.factory<_i29.SettingsCollectionRef>(
        () => _i29.SettingsCollectionRef(gh<_i13.FirebaseFirestore>()));
    gh.lazySingleton<String>(
      () => googlePlacesModule.proxyUrl,
      instanceName: 'proxyUrl',
    );
    gh.lazySingleton<String>(
      () => googlePlacesModule.googlePlacesKey,
      instanceName: 'googlePlacesKey',
    );
    gh.lazySingleton<String>(
      () => googlePlacesModule.googleMapKey,
      instanceName: 'googleMapKey',
    );
    gh.factoryParam<_i30.TripStopsCollectionRef, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i30.TripStopsCollectionRef(
          gh<_i13.FirebaseFirestore>(),
          tripId,
          dayTripId,
        ));
    gh.lazySingleton<_i31.TripStopsDataSource>(
        () => _i31.TripStopsDataSourceImpl(gh<_i13.FirebaseFirestore>()));
    gh.lazySingleton<_i32.TripStopsRepository>(
        () => _i33.TripStopsRepositoryImpl(gh<_i31.TripStopsDataSource>()));
    gh.factory<_i34.TripsCollectionRef>(
        () => _i34.TripsCollectionRef(gh<_i13.FirebaseFirestore>()));
    gh.lazySingleton<_i35.TripsDataSource>(() => _i35.TripsDataSourceImpl(
          gh<_i13.FirebaseFirestore>(),
          gh<_i19.InternetConnection>(),
        ));
    gh.lazySingleton<_i36.TripsRepository>(() =>
        _i37.TripsRepositoryImpl(tripsDataSource: gh<_i35.TripsDataSource>()));
    gh.lazySingleton<_i38.UpdateTravelTime>(
        () => _i38.UpdateTravelTime(gh<_i32.TripStopsRepository>()));
    gh.lazySingleton<_i39.UpdateTrip>(
        () => _i39.UpdateTrip(gh<_i36.TripsRepository>()));
    gh.lazySingleton<_i40.UpdateTripStop>(
        () => _i40.UpdateTripStop(gh<_i32.TripStopsRepository>()));
    gh.lazySingleton<_i41.UpdateTripStopNote>(
        () => _i41.UpdateTripStopNote(gh<_i32.TripStopsRepository>()));
    gh.lazySingleton<_i42.UpdateTripStopsIndexes>(
        () => _i42.UpdateTripStopsIndexes(gh<_i32.TripStopsRepository>()));
    gh.factory<_i43.User>(() => userModule.user);
    gh.lazySingleton<_i44.UserDataSource>(() => _i44.UserDataSourceImpl(
          gh<_i10.FirebaseAuth>(),
          gh<_i13.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i45.UserRepository>(
        () => _i46.UserRepositoryImpl(gh<_i44.UserDataSource>()));
    gh.factory<_i47.UsersCollectionRef>(
        () => _i47.UsersCollectionRef(gh<_i13.FirebaseFirestore>()));
    gh.factory<_i48.WebViewController>(() => network.webViewController);
    gh.lazySingleton<_i49.BlocObserver>(
        () => _i50.SimpleBlocObserver(logger: gh<_i20.Logger>()));
    gh.lazySingleton<_i51.CreateFromExistingTrip>(
        () => _i51.CreateFromExistingTrip(gh<_i36.TripsRepository>()));
    gh.lazySingleton<_i52.CreateTrip>(
        () => _i52.CreateTrip(gh<_i36.TripsRepository>()));
    gh.lazySingleton<_i53.CreateTripStop>(
        () => _i53.CreateTripStop(gh<_i32.TripStopsRepository>()));
    gh.factoryParam<_i54.DayTripsCollectionRef, String, dynamic>((
      tripId,
      _,
    ) =>
        _i54.DayTripsCollectionRef(
          gh<_i13.FirebaseFirestore>(),
          tripId,
        ));
    gh.lazySingleton<_i55.DayTripsDataSource>(
        () => _i55.DayTripsDataSourceImpl(gh<_i13.FirebaseFirestore>()));
    gh.lazySingleton<_i56.DayTripsRepository>(
        () => _i57.DayTripsRepositoryImpl(gh<_i55.DayTripsDataSource>()));
    gh.lazySingleton<_i58.DeleteDayTrip>(
        () => _i58.DeleteDayTrip(gh<_i56.DayTripsRepository>()));
    gh.lazySingleton<_i59.DeleteTrip>(
        () => _i59.DeleteTrip(gh<_i36.TripsRepository>()));
    gh.lazySingleton<_i60.DeleteTripStop>(
        () => _i60.DeleteTripStop(gh<_i32.TripStopsRepository>()));
    gh.lazySingleton<_i61.DeleteUser>(() => _i61.DeleteUser(
          gh<_i45.UserRepository>(),
          gh<_i36.TripsRepository>(),
          gh<_i19.InternetConnection>(),
        ));
    gh.factoryParam<_i62.DiscoverNewDailyTripsCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i62.DiscoverNewDailyTripsCubit(
          tripId: tripId,
          getPublicDayTrips: gh<_i15.GetPublicDayTrips>(),
        ));
    gh.factoryParam<_i63.DiscoverNewTripStopsCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i63.DiscoverNewTripStopsCubit(
          getPublicTripStops: gh<_i16.GetPublicTripStops>(),
          tripId: tripId,
          dayTripId: dayTripId,
        ));
    gh.factory<_i64.DiscoverNewTripsCubit>(() => _i64.DiscoverNewTripsCubit(
          getPublicTrips: gh<_i17.GetPublicTrips>(),
          user: gh<_i43.User>(),
        ));
    gh.lazySingleton<_i65.GooglePlacesDataSource>(
        () => _i65.GooglePlacesDataSourceImpl(
              gh<_i4.Dio>(),
              gh<_i19.InternetConnection>(),
              gh<_i26.PolylinePoints>(),
              gh<String>(instanceName: 'googlePlacesKey'),
              gh<String>(instanceName: 'proxyUrl'),
            ));
    gh.lazySingleton<_i66.GooglePlacesRepository>(() =>
        _i67.GooglePlacesRepositoryImpl(gh<_i65.GooglePlacesDataSource>()));
    gh.lazySingleton<_i68.ImportOldTrips>(
        () => _i68.ImportOldTrips(gh<_i24.OldTripsRepository>()));
    gh.factoryParam<_i69.ImportOldTripsCubit, _i43.User, dynamic>((
      user,
      _,
    ) =>
        _i69.ImportOldTripsCubit(
          user: user,
          readOldTrips: gh<_i27.ReadOldTrips>(),
          importOldTrips: gh<_i68.ImportOldTrips>(),
        ));
    gh.lazySingleton<_i70.ListenDayTrip>(
        () => _i70.ListenDayTrip(gh<_i56.DayTripsRepository>()));
    gh.lazySingleton<_i71.ListenDayTrips>(
        () => _i71.ListenDayTrips(gh<_i56.DayTripsRepository>()));
    gh.lazySingleton<_i72.ListenTripStops>(
        () => _i72.ListenTripStops(gh<_i32.TripStopsRepository>()));
    gh.lazySingleton<_i73.ListenTrips>(
        () => _i73.ListenTrips(gh<_i36.TripsRepository>()));
    gh.lazySingleton<_i74.ListenUser>(
        () => _i74.ListenUser(gh<_i45.UserRepository>()));
    gh.lazySingleton<_i75.LoginUser>(
        () => _i75.LoginUser(gh<_i45.UserRepository>()));
    gh.lazySingleton<_i76.LogoutUser>(
        () => _i76.LogoutUser(gh<_i45.UserRepository>()));
    gh.lazySingleton<_i77.ReauthenticateUser>(
        () => _i77.ReauthenticateUser(gh<_i45.UserRepository>()));
    gh.lazySingleton<_i78.RecoverPassword>(
        () => _i78.RecoverPassword(gh<_i45.UserRepository>()));
    gh.lazySingleton<_i79.RegisterUser>(
        () => _i79.RegisterUser(gh<_i45.UserRepository>()));
    gh.lazySingleton<_i80.SaveTripStopsDirections>(
        () => _i80.SaveTripStopsDirections(gh<_i56.DayTripsRepository>()));
    gh.lazySingleton<_i81.TripStopDone>(
        () => _i81.TripStopDone(gh<_i32.TripStopsRepository>()));
    gh.factory<_i82.TripsCubit>(() => _i82.TripsCubit(
          listenTrips: gh<_i73.ListenTrips>(),
          crashlytics: gh<_i11.FirebaseCrashlytics>(),
          user: gh<_i43.User>(),
        ));
    gh.lazySingleton<_i83.UpdateDayTrip>(
        () => _i83.UpdateDayTrip(gh<_i56.DayTripsRepository>()));
    gh.lazySingleton<_i84.UpdateDayTripShowDirections>(
        () => _i84.UpdateDayTripShowDirections(gh<_i56.DayTripsRepository>()));
    gh.lazySingleton<_i85.UpdateDayTripStartTime>(
        () => _i85.UpdateDayTripStartTime(gh<_i56.DayTripsRepository>()));
    gh.lazySingleton<_i86.UpdateDayTripUseDifferentDirectionsColors>(() =>
        _i86.UpdateDayTripUseDifferentDirectionsColors(
            gh<_i56.DayTripsRepository>()));
    gh.lazySingleton<_i87.UpdateDayTripsIndexes>(
        () => _i87.UpdateDayTripsIndexes(gh<_i56.DayTripsRepository>()));
    gh.lazySingleton<_i88.UpdateSettings>(
        () => _i88.UpdateSettings(gh<_i45.UserRepository>()));
    gh.lazySingleton<_i89.UpdateTripStopsDirectionsUpToDate>(() =>
        _i89.UpdateTripStopsDirectionsUpToDate(gh<_i56.DayTripsRepository>()));
    gh.lazySingleton<_i90.UpdateUserDetails>(
        () => _i90.UpdateUserDetails(gh<_i45.UserRepository>()));
    gh.lazySingleton<_i91.UserCubit>(
        () => _i91.UserCubit(listenUserState: gh<_i74.ListenUser>()));
    gh.factoryParam<_i92.AccountCubit, dynamic, dynamic>((
      user,
      _,
    ) =>
        _i92.AccountCubit(
          user: user,
          logoutUser: gh<_i76.LogoutUser>(),
          reauthenticateUser: gh<_i77.ReauthenticateUser>(),
          updateUserDetails: gh<_i90.UpdateUserDetails>(),
          deleteUser: gh<_i61.DeleteUser>(),
        ));
    gh.lazySingleton<_i93.CreateDayTrip>(
        () => _i93.CreateDayTrip(gh<_i56.DayTripsRepository>()));
    gh.factoryParam<_i94.DayTripCubit, _i95.Trip, _i96.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i94.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i83.UpdateDayTrip>(),
          deleteDayTrip: gh<_i58.DeleteDayTrip>(),
          listenTripStops: gh<_i72.ListenTripStops>(),
          updateDayTripStartTime: gh<_i85.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i42.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i38.UpdateTravelTime>(),
          tripStopDone: gh<_i81.TripStopDone>(),
          listenDayTrip: gh<_i70.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i89.UpdateTripStopsDirectionsUpToDate>(),
          crashlytics: gh<_i11.FirebaseCrashlytics>(),
        ));
    gh.lazySingleton<_i97.FetchPlaceDetails>(
        () => _i97.FetchPlaceDetails(gh<_i66.GooglePlacesRepository>()));
    gh.lazySingleton<_i98.FetchSuggestions>(
        () => _i98.FetchSuggestions(gh<_i66.GooglePlacesRepository>()));
    gh.lazySingleton<_i99.FetchTripStopsDirections>(
        () => _i99.FetchTripStopsDirections(gh<_i66.GooglePlacesRepository>()));
    gh.factory<_i100.GooglePlacesCubit>(() => _i100.GooglePlacesCubit(
          fetchSuggestions: gh<_i98.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i97.FetchPlaceDetails>(),
        ));
    gh.factory<_i101.LoginSignupCubit>(() => _i101.LoginSignupCubit(
          registerUser: gh<_i79.RegisterUser>(),
          loginUser: gh<_i75.LoginUser>(),
          recoverPassword: gh<_i78.RecoverPassword>(),
        ));
    gh.factoryParam<_i102.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i102.NewDayTripCubit(
          createDayTrip: gh<_i93.CreateDayTrip>(),
          settings: gh<_i28.Settings>(),
          tripId: tripId,
        ));
    gh.factoryParam<_i103.NewTripCubit, _i95.Trip?, dynamic>((
      existingTrip,
      _,
    ) =>
        _i103.NewTripCubit(
          userCubit: gh<_i91.UserCubit>(),
          createTrip: gh<_i52.CreateTrip>(),
          createFromExistingTrip: gh<_i51.CreateFromExistingTrip>(),
          settings: gh<_i28.Settings>(),
          existingTrip: existingTrip,
        ));
    gh.factoryParam<_i104.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i104.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i53.CreateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i89.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.lazySingleton<_i105.SettingsCubit>(() => _i105.SettingsCubit(
          updateSettings: gh<_i88.UpdateSettings>(),
          userCubit: gh<_i91.UserCubit>(),
        ));
    gh.factoryParam<_i106.TripCubit, _i95.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i106.TripCubit(
          trip: trip,
          saveTrip: gh<_i39.UpdateTrip>(),
          deleteTrip: gh<_i59.DeleteTrip>(),
          listenDayTrips: gh<_i71.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i87.UpdateDayTripsIndexes>(),
          crashlytics: gh<_i11.FirebaseCrashlytics>(),
        ));
    gh.factoryParam<_i107.TripStopCubit, _i107.TripStopCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i107.TripStopCubit(
          params: params,
          tripStopDone: gh<_i81.TripStopDone>(),
          updateTripStopNote: gh<_i41.UpdateTripStopNote>(),
          deleteTripStop: gh<_i60.DeleteTripStop>(),
          updateTripStop: gh<_i40.UpdateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i89.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.factoryParam<_i108.TripStopsMapCubit, _i95.Trip, _i96.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i108.TripStopsMapCubit(
          fetchPolylinePoints: gh<_i99.FetchTripStopsDirections>(),
          saveTripStopsDirections: gh<_i80.SaveTripStopsDirections>(),
          listenDayTrip: gh<_i70.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i89.UpdateTripStopsDirectionsUpToDate>(),
          updateDayTripShowDirections: gh<_i84.UpdateDayTripShowDirections>(),
          updateDayTripUseDifferentDirectionsColors:
              gh<_i86.UpdateDayTripUseDifferentDirectionsColors>(),
          crashlytics: gh<_i11.FirebaseCrashlytics>(),
          trip: trip,
          dayTrip: dayTrip,
        ));
    return this;
  }
}

class _$Network extends _i109.Network {}

class _$FirebaseModule extends _i109.FirebaseModule {}

class _$RegisterModule extends _i109.RegisterModule {}

class _$GooglePlacesModule extends _i109.GooglePlacesModule {}

class _$SettingsModule extends _i105.SettingsModule {}

class _$UserModule extends _i91.UserModule {}
