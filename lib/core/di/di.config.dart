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
import 'package:flutter_bloc/flutter_bloc.dart' as _i43;
import 'package:flutter_polyline_points/flutter_polyline_points.dart' as _i20;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i14;
import 'package:logger/logger.dart' as _i15;
import 'package:webview_flutter/webview_flutter.dart' as _i42;

import '../../features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i48;
import '../../features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i50;
import '../../features/day_trips/domain/entities/day_trip.dart' as _i87;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i49;
import '../../features/day_trips/domain/usecases/create_day_trip.dart' as _i84;
import '../../features/day_trips/domain/usecases/delete_day_trip.dart' as _i51;
import '../../features/day_trips/domain/usecases/listen_day_trip.dart' as _i61;
import '../../features/day_trips/domain/usecases/listen_day_trips.dart' as _i62;
import '../../features/day_trips/domain/usecases/save_trip_stops_directions.dart'
    as _i71;
import '../../features/day_trips/domain/usecases/update_day_trip.dart' as _i74;
import '../../features/day_trips/domain/usecases/update_day_trip_show_directions.dart'
    as _i75;
import '../../features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i76;
import '../../features/day_trips/domain/usecases/update_day_trip_use_different_directions_colors.dart'
    as _i77;
import '../../features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i78;
import '../../features/day_trips/domain/usecases/update_trip_stops_directions_up_to_date.dart'
    as _i80;
import '../../features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart'
    as _i85;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i93;
import '../../features/day_trips/presentation/cubit/trip_stops_map/trip_stops_map_cubit.dart'
    as _i99;
import '../../features/discover_new_trips/data/datasources/discover_trips_data_source.dart'
    as _i5;
import '../../features/discover_new_trips/data/repositories/discover_trips_repository_impl.dart'
    as _i7;
import '../../features/discover_new_trips/domain/repositories/discover_trips_repository.dart'
    as _i6;
import '../../features/discover_new_trips/domain/usecases/get_public_trips.dart'
    as _i12;
import '../../features/discover_new_trips/presentation/cubit/discover_new_trips_cubit.dart'
    as _i55;
import '../../features/google_places/data/datasources/google_places_data_source.dart'
    as _i56;
import '../../features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i58;
import '../../features/google_places/domain/repositories/google_places_repository.dart'
    as _i57;
import '../../features/google_places/domain/usecases/fetch_place_details.dart'
    as _i88;
import '../../features/google_places/domain/usecases/fetch_polyline_points.dart'
    as _i90;
import '../../features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i89;
import '../../features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i91;
import '../../features/import_old_trips/data/datasources/old_trips_data_source.dart'
    as _i17;
import '../../features/import_old_trips/data/repositories/old_trips_repository_impl.dart'
    as _i19;
import '../../features/import_old_trips/domain/repositories/old_trips_repository.dart'
    as _i18;
import '../../features/import_old_trips/domain/usecases/import_old_trip.dart'
    as _i59;
import '../../features/import_old_trips/domain/usecases/read_old_trips.dart'
    as _i21;
import '../../features/import_old_trips/presentation/cubit/import_old_trips_cubit.dart'
    as _i60;
import '../../features/info_contacts/presentation/cubit/info_contacts_cubit.dart'
    as _i13;
import '../../features/settings/domain/entities/settings.dart' as _i22;
import '../../features/settings/domain/usecases/update_settings.dart' as _i79;
import '../../features/settings/presentation/cubit/settings_cubit.dart' as _i96;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i25;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i27;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i26;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i46;
import '../../features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i53;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i63;
import '../../features/trip_stops/domain/usecases/trip_stop_done.dart' as _i72;
import '../../features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i32;
import '../../features/trip_stops/domain/usecases/update_trip_stop.dart'
    as _i34;
import '../../features/trip_stops/domain/usecases/update_trip_stop_note.dart'
    as _i35;
import '../../features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i36;
import '../../features/trip_stops/presentation/cubit/map/cubit/map_cubit.dart'
    as _i16;
import '../../features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart'
    as _i95;
import '../../features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart'
    as _i98;
import '../../features/trips/data/datasources/trips_data_source.dart' as _i29;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i31;
import '../../features/trips/domain/entities/trip.dart' as _i86;
import '../../features/trips/domain/repositories/trips_repository.dart' as _i30;
import '../../features/trips/domain/usecases/create_trip.dart' as _i45;
import '../../features/trips/domain/usecases/delete_trip.dart' as _i52;
import '../../features/trips/domain/usecases/listen_trips.dart' as _i64;
import '../../features/trips/domain/usecases/update_trip.dart' as _i33;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i94;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart' as _i97;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart' as _i73;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i38;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i40;
import '../../features/user_account/domain/entities/user.dart' as _i37;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i39;
import '../../features/user_account/domain/usecases/delete_user.dart' as _i54;
import '../../features/user_account/domain/usecases/listen_user.dart' as _i65;
import '../../features/user_account/domain/usecases/login_user.dart' as _i66;
import '../../features/user_account/domain/usecases/logout_user.dart' as _i67;
import '../../features/user_account/domain/usecases/reauthenticate_user.dart'
    as _i68;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i69;
import '../../features/user_account/domain/usecases/register_user.dart' as _i70;
import '../../features/user_account/domain/usecases/update_user_details.dart'
    as _i81;
import '../../features/user_account/presentation/cubit/account_page/account_cubit.dart'
    as _i83;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i92;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i82;
import '../bloc_observer.dart' as _i44;
import '../db/day_trips_collection_ref.dart' as _i47;
import '../db/settings_collection_ref.dart' as _i23;
import '../db/trip_stops_collection_ref.dart' as _i24;
import '../db/trips_collection_ref.dart' as _i28;
import '../db/users_collection_ref.dart' as _i41;
import '../routes/app_router.dart' as _i3;
import 'di.dart' as _i100;

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
    gh.lazySingleton<_i12.GetPublicTrips>(
        () => _i12.GetPublicTrips(gh<_i6.DiscoverTripsRepository>()));
    gh.factory<_i13.InfoContactsCubit>(() => _i13.InfoContactsCubit());
    gh.lazySingleton<_i14.InternetConnection>(() => network.internetConnection);
    gh.lazySingleton<_i15.Logger>(() => registerModule.logger);
    gh.factory<_i16.MapCubit>(() => _i16.MapCubit());
    gh.lazySingleton<_i17.OldTripsDataSource>(
        () => _i17.OldTripsDataSourceImpl(gh<_i10.FirebaseDatabase>()));
    gh.lazySingleton<_i18.OldTripsRepository>(
        () => _i19.OldTripsRepositoryImpl(gh<_i17.OldTripsDataSource>()));
    gh.lazySingleton<_i20.PolylinePoints>(
        () => googlePlacesModule.polylinePoints);
    gh.lazySingleton<_i21.ReadOldTrips>(
        () => _i21.ReadOldTrips(gh<_i18.OldTripsRepository>()));
    gh.factory<_i22.Settings>(() => settingsModule.settings);
    gh.factory<_i23.SettingsCollectionRef>(
        () => _i23.SettingsCollectionRef(gh<_i11.FirebaseFirestore>()));
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
    gh.factoryParam<_i24.TripStopsCollectionRef, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i24.TripStopsCollectionRef(
          gh<_i11.FirebaseFirestore>(),
          tripId,
          dayTripId,
        ));
    gh.lazySingleton<_i25.TripStopsDataSource>(
        () => _i25.TripStopsDataSourceImpl(gh<_i11.FirebaseFirestore>()));
    gh.lazySingleton<_i26.TripStopsRepository>(
        () => _i27.TripStopsRepositoryImpl(gh<_i25.TripStopsDataSource>()));
    gh.factory<_i28.TripsCollectionRef>(
        () => _i28.TripsCollectionRef(gh<_i11.FirebaseFirestore>()));
    gh.lazySingleton<_i29.TripsDataSource>(
        () => _i29.TripsDataSourceImpl(gh<_i11.FirebaseFirestore>()));
    gh.lazySingleton<_i30.TripsRepository>(() =>
        _i31.TripsRepositoryImpl(tripsDataSource: gh<_i29.TripsDataSource>()));
    gh.lazySingleton<_i32.UpdateTravelTime>(
        () => _i32.UpdateTravelTime(gh<_i26.TripStopsRepository>()));
    gh.lazySingleton<_i33.UpdateTrip>(
        () => _i33.UpdateTrip(gh<_i30.TripsRepository>()));
    gh.lazySingleton<_i34.UpdateTripStop>(
        () => _i34.UpdateTripStop(gh<_i26.TripStopsRepository>()));
    gh.lazySingleton<_i35.UpdateTripStopNote>(
        () => _i35.UpdateTripStopNote(gh<_i26.TripStopsRepository>()));
    gh.lazySingleton<_i36.UpdateTripStopsIndexes>(
        () => _i36.UpdateTripStopsIndexes(gh<_i26.TripStopsRepository>()));
    gh.factory<_i37.User>(() => userModule.user);
    gh.lazySingleton<_i38.UserDataSource>(() => _i38.UserDataSourceImpl(
          gh<_i8.FirebaseAuth>(),
          gh<_i11.FirebaseFirestore>(),
        ));
    gh.lazySingleton<_i39.UserRepository>(
        () => _i40.UserRepositoryImpl(gh<_i38.UserDataSource>()));
    gh.factory<_i41.UsersCollectionRef>(
        () => _i41.UsersCollectionRef(gh<_i11.FirebaseFirestore>()));
    gh.factory<_i42.WebViewController>(() => network.webViewController);
    gh.lazySingleton<_i43.BlocObserver>(
        () => _i44.SimpleBlocObserver(logger: gh<_i15.Logger>()));
    gh.lazySingleton<_i45.CreateTrip>(
        () => _i45.CreateTrip(gh<_i30.TripsRepository>()));
    gh.lazySingleton<_i46.CreateTripStop>(
        () => _i46.CreateTripStop(gh<_i26.TripStopsRepository>()));
    gh.factoryParam<_i47.DayTripsCollectionRef, String, dynamic>((
      tripId,
      _,
    ) =>
        _i47.DayTripsCollectionRef(
          gh<_i11.FirebaseFirestore>(),
          tripId,
        ));
    gh.lazySingleton<_i48.DayTripsDataSource>(
        () => _i48.DayTripsDataSourceImpl(gh<_i11.FirebaseFirestore>()));
    gh.lazySingleton<_i49.DayTripsRepository>(
        () => _i50.DayTripsRepositoryImpl(gh<_i48.DayTripsDataSource>()));
    gh.lazySingleton<_i51.DeleteDayTrip>(
        () => _i51.DeleteDayTrip(gh<_i49.DayTripsRepository>()));
    gh.lazySingleton<_i52.DeleteTrip>(
        () => _i52.DeleteTrip(gh<_i30.TripsRepository>()));
    gh.lazySingleton<_i53.DeleteTripStop>(
        () => _i53.DeleteTripStop(gh<_i26.TripStopsRepository>()));
    gh.lazySingleton<_i54.DeleteUser>(() => _i54.DeleteUser(
          gh<_i39.UserRepository>(),
          gh<_i30.TripsRepository>(),
          gh<_i14.InternetConnection>(),
        ));
    gh.factory<_i55.DiscoverNewTripsCubit>(() => _i55.DiscoverNewTripsCubit(
          getPublicTrips: gh<_i12.GetPublicTrips>(),
          user: gh<_i37.User>(),
        ));
    gh.lazySingleton<_i56.GooglePlacesDataSource>(
        () => _i56.GooglePlacesDataSourceImpl(
              gh<_i4.Dio>(),
              gh<_i14.InternetConnection>(),
              gh<_i20.PolylinePoints>(),
              gh<String>(instanceName: 'googlePlacesKey'),
              gh<String>(instanceName: 'proxyUrl'),
            ));
    gh.lazySingleton<_i57.GooglePlacesRepository>(() =>
        _i58.GooglePlacesRepositoryImpl(gh<_i56.GooglePlacesDataSource>()));
    gh.lazySingleton<_i59.ImportOldTrips>(
        () => _i59.ImportOldTrips(gh<_i18.OldTripsRepository>()));
    gh.factoryParam<_i60.ImportOldTripsCubit, _i37.User, dynamic>((
      user,
      _,
    ) =>
        _i60.ImportOldTripsCubit(
          user: user,
          readOldTrips: gh<_i21.ReadOldTrips>(),
          importOldTrips: gh<_i59.ImportOldTrips>(),
        ));
    gh.lazySingleton<_i61.ListenDayTrip>(
        () => _i61.ListenDayTrip(gh<_i49.DayTripsRepository>()));
    gh.lazySingleton<_i62.ListenDayTrips>(
        () => _i62.ListenDayTrips(gh<_i49.DayTripsRepository>()));
    gh.lazySingleton<_i63.ListenTripStops>(
        () => _i63.ListenTripStops(gh<_i26.TripStopsRepository>()));
    gh.lazySingleton<_i64.ListenTrips>(
        () => _i64.ListenTrips(gh<_i30.TripsRepository>()));
    gh.lazySingleton<_i65.ListenUser>(
        () => _i65.ListenUser(gh<_i39.UserRepository>()));
    gh.lazySingleton<_i66.LoginUser>(
        () => _i66.LoginUser(gh<_i39.UserRepository>()));
    gh.lazySingleton<_i67.LogoutUser>(
        () => _i67.LogoutUser(gh<_i39.UserRepository>()));
    gh.lazySingleton<_i68.ReauthenticateUser>(
        () => _i68.ReauthenticateUser(gh<_i39.UserRepository>()));
    gh.lazySingleton<_i69.RecoverPassword>(
        () => _i69.RecoverPassword(gh<_i39.UserRepository>()));
    gh.lazySingleton<_i70.RegisterUser>(
        () => _i70.RegisterUser(gh<_i39.UserRepository>()));
    gh.lazySingleton<_i71.SaveTripStopsDirections>(
        () => _i71.SaveTripStopsDirections(gh<_i49.DayTripsRepository>()));
    gh.lazySingleton<_i72.TripStopDone>(
        () => _i72.TripStopDone(gh<_i26.TripStopsRepository>()));
    gh.factory<_i73.TripsCubit>(() => _i73.TripsCubit(
          listenTrips: gh<_i64.ListenTrips>(),
          crashlytics: gh<_i9.FirebaseCrashlytics>(),
          user: gh<_i37.User>(),
        ));
    gh.lazySingleton<_i74.UpdateDayTrip>(
        () => _i74.UpdateDayTrip(gh<_i49.DayTripsRepository>()));
    gh.lazySingleton<_i75.UpdateDayTripShowDirections>(
        () => _i75.UpdateDayTripShowDirections(gh<_i49.DayTripsRepository>()));
    gh.lazySingleton<_i76.UpdateDayTripStartTime>(
        () => _i76.UpdateDayTripStartTime(gh<_i49.DayTripsRepository>()));
    gh.lazySingleton<_i77.UpdateDayTripUseDifferentDirectionsColors>(() =>
        _i77.UpdateDayTripUseDifferentDirectionsColors(
            gh<_i49.DayTripsRepository>()));
    gh.lazySingleton<_i78.UpdateDayTripsIndexes>(
        () => _i78.UpdateDayTripsIndexes(gh<_i49.DayTripsRepository>()));
    gh.lazySingleton<_i79.UpdateSettings>(
        () => _i79.UpdateSettings(gh<_i39.UserRepository>()));
    gh.lazySingleton<_i80.UpdateTripStopsDirectionsUpToDate>(() =>
        _i80.UpdateTripStopsDirectionsUpToDate(gh<_i49.DayTripsRepository>()));
    gh.lazySingleton<_i81.UpdateUserDetails>(
        () => _i81.UpdateUserDetails(gh<_i39.UserRepository>()));
    gh.lazySingleton<_i82.UserCubit>(
        () => _i82.UserCubit(listenUserState: gh<_i65.ListenUser>()));
    gh.factoryParam<_i83.AccountCubit, dynamic, dynamic>((
      user,
      _,
    ) =>
        _i83.AccountCubit(
          user: user,
          logoutUser: gh<_i67.LogoutUser>(),
          reauthenticateUser: gh<_i68.ReauthenticateUser>(),
          updateUserDetails: gh<_i81.UpdateUserDetails>(),
          deleteUser: gh<_i54.DeleteUser>(),
        ));
    gh.lazySingleton<_i84.CreateDayTrip>(
        () => _i84.CreateDayTrip(gh<_i49.DayTripsRepository>()));
    gh.factoryParam<_i85.DayTripCubit, _i86.Trip, _i87.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i85.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i74.UpdateDayTrip>(),
          deleteDayTrip: gh<_i51.DeleteDayTrip>(),
          listenTripStops: gh<_i63.ListenTripStops>(),
          updateDayTripStartTime: gh<_i76.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i36.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i32.UpdateTravelTime>(),
          tripStopDone: gh<_i72.TripStopDone>(),
          listenDayTrip: gh<_i61.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i80.UpdateTripStopsDirectionsUpToDate>(),
          crashlytics: gh<_i9.FirebaseCrashlytics>(),
        ));
    gh.lazySingleton<_i88.FetchPlaceDetails>(
        () => _i88.FetchPlaceDetails(gh<_i57.GooglePlacesRepository>()));
    gh.lazySingleton<_i89.FetchSuggestions>(
        () => _i89.FetchSuggestions(gh<_i57.GooglePlacesRepository>()));
    gh.lazySingleton<_i90.FetchTripStopsDirections>(
        () => _i90.FetchTripStopsDirections(gh<_i57.GooglePlacesRepository>()));
    gh.factory<_i91.GooglePlacesCubit>(() => _i91.GooglePlacesCubit(
          fetchSuggestions: gh<_i89.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i88.FetchPlaceDetails>(),
        ));
    gh.factory<_i92.LoginSignupCubit>(() => _i92.LoginSignupCubit(
          registerUser: gh<_i70.RegisterUser>(),
          loginUser: gh<_i66.LoginUser>(),
          recoverPassword: gh<_i69.RecoverPassword>(),
        ));
    gh.factoryParam<_i93.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i93.NewDayTripCubit(
          createDayTrip: gh<_i84.CreateDayTrip>(),
          settings: gh<_i22.Settings>(),
          tripId: tripId,
        ));
    gh.factory<_i94.NewTripCubit>(() => _i94.NewTripCubit(
          gh<_i82.UserCubit>(),
          gh<_i45.CreateTrip>(),
        ));
    gh.factoryParam<_i95.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i95.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i46.CreateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i80.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.lazySingleton<_i96.SettingsCubit>(() => _i96.SettingsCubit(
          updateSettings: gh<_i79.UpdateSettings>(),
          userCubit: gh<_i82.UserCubit>(),
        ));
    gh.factoryParam<_i97.TripCubit, _i86.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i97.TripCubit(
          trip: trip,
          saveTrip: gh<_i33.UpdateTrip>(),
          deleteTrip: gh<_i52.DeleteTrip>(),
          listenDayTrips: gh<_i62.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i78.UpdateDayTripsIndexes>(),
          crashlytics: gh<_i9.FirebaseCrashlytics>(),
        ));
    gh.factoryParam<_i98.TripStopCubit, _i98.TripStopCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i98.TripStopCubit(
          params: params,
          tripStopDone: gh<_i72.TripStopDone>(),
          updateTripStopNote: gh<_i35.UpdateTripStopNote>(),
          deleteTripStop: gh<_i53.DeleteTripStop>(),
          updateTripStop: gh<_i34.UpdateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i80.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.factoryParam<_i99.TripStopsMapCubit, _i86.Trip, _i87.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i99.TripStopsMapCubit(
          fetchPolylinePoints: gh<_i90.FetchTripStopsDirections>(),
          saveTripStopsDirections: gh<_i71.SaveTripStopsDirections>(),
          listenDayTrip: gh<_i61.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i80.UpdateTripStopsDirectionsUpToDate>(),
          updateDayTripShowDirections: gh<_i75.UpdateDayTripShowDirections>(),
          updateDayTripUseDifferentDirectionsColors:
              gh<_i77.UpdateDayTripUseDifferentDirectionsColors>(),
          crashlytics: gh<_i9.FirebaseCrashlytics>(),
          trip: trip,
          dayTrip: dayTrip,
        ));
    return this;
  }
}

class _$Network extends _i100.Network {}

class _$FirebaseModule extends _i100.FirebaseModule {}

class _$RegisterModule extends _i100.RegisterModule {}

class _$GooglePlacesModule extends _i100.GooglePlacesModule {}

class _$SettingsModule extends _i96.SettingsModule {}

class _$UserModule extends _i82.UserModule {}
