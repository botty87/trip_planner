// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i264;

import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:dio/dio.dart' as _i361;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i141;
import 'package:firebase_database/firebase_database.dart' as _i345;
import 'package:firebase_storage/firebase_storage.dart' as _i457;
import 'package:flutter_bloc/flutter_bloc.dart' as _i331;
import 'package:flutter_polyline_points/flutter_polyline_points.dart' as _i574;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart'
    as _i161;
import 'package:package_info_plus/package_info_plus.dart' as _i655;
import 'package:talker_flutter/talker_flutter.dart' as _i207;
import 'package:webview_flutter/webview_flutter.dart' as _i810;

import '../../features/ads/domain/entities/ads.dart' as _i358;
import '../../features/ads/presentation/cubit/ads_cubit.dart' as _i79;
import '../../features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i297;
import '../../features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i959;
import '../../features/day_trips/domain/entities/day_trip.dart' as _i383;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i206;
import '../../features/day_trips/domain/usecases/create_day_trip.dart' as _i228;
import '../../features/day_trips/domain/usecases/delete_day_trip.dart'
    as _i1028;
import '../../features/day_trips/domain/usecases/listen_day_trip.dart' as _i350;
import '../../features/day_trips/domain/usecases/listen_day_trips.dart'
    as _i278;
import '../../features/day_trips/domain/usecases/save_trip_stops_directions.dart'
    as _i602;
import '../../features/day_trips/domain/usecases/update_day_trip.dart' as _i546;
import '../../features/day_trips/domain/usecases/update_day_trip_show_directions.dart'
    as _i154;
import '../../features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i642;
import '../../features/day_trips/domain/usecases/update_day_trip_use_different_directions_colors.dart'
    as _i254;
import '../../features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i730;
import '../../features/day_trips/domain/usecases/update_trip_stops_directions_up_to_date.dart'
    as _i590;
import '../../features/day_trips/presentation/cubit/day_trip/day_trip_cubit.dart'
    as _i640;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i391;
import '../../features/day_trips/presentation/cubit/trip_stops_map/trip_stops_map_cubit.dart'
    as _i896;
import '../../features/discover_new_trips/data/datasources/discover_trips_data_source.dart'
    as _i437;
import '../../features/discover_new_trips/data/repositories/discover_trips_repository_impl.dart'
    as _i149;
import '../../features/discover_new_trips/domain/repositories/discover_trips_repository.dart'
    as _i398;
import '../../features/discover_new_trips/domain/usecases/get_public_day_trips.dart'
    as _i1049;
import '../../features/discover_new_trips/domain/usecases/get_public_trip_stops.dart'
    as _i893;
import '../../features/discover_new_trips/domain/usecases/get_public_trips.dart'
    as _i816;
import '../../features/discover_new_trips/presentation/cubit/daily_trips/discover_new_daily_trips_cubit.dart'
    as _i338;
import '../../features/discover_new_trips/presentation/cubit/trip_stop/discover_new_trip_stop_cubit.dart'
    as _i942;
import '../../features/discover_new_trips/presentation/cubit/trip_stops/discover_new_trip_stops_cubit.dart'
    as _i1009;
import '../../features/discover_new_trips/presentation/cubit/trips/discover_new_trips_cubit.dart'
    as _i230;
import '../../features/google_places/data/datasources/google_places_data_source.dart'
    as _i1071;
import '../../features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i1026;
import '../../features/google_places/domain/repositories/google_places_repository.dart'
    as _i935;
import '../../features/google_places/domain/usecases/fetch_place_details.dart'
    as _i888;
import '../../features/google_places/domain/usecases/fetch_polyline_points.dart'
    as _i372;
import '../../features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i487;
import '../../features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i202;
import '../../features/import_old_trips/data/datasources/old_trips_data_source.dart'
    as _i219;
import '../../features/import_old_trips/data/repositories/old_trips_repository_impl.dart'
    as _i662;
import '../../features/import_old_trips/domain/repositories/old_trips_repository.dart'
    as _i729;
import '../../features/import_old_trips/domain/usecases/import_old_trip.dart'
    as _i396;
import '../../features/import_old_trips/domain/usecases/read_old_trips.dart'
    as _i244;
import '../../features/import_old_trips/presentation/cubit/import_old_trips_cubit.dart'
    as _i193;
import '../../features/info_contacts/presentation/cubit/info_contacts_cubit.dart'
    as _i535;
import '../../features/map/presentation/cubit/map_cubit.dart' as _i523;
import '../../features/settings/domain/entities/settings.dart' as _i247;
import '../../features/settings/domain/usecases/update_settings.dart' as _i986;
import '../../features/settings/presentation/cubit/settings_cubit.dart'
    as _i792;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i875;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i774;
import '../../features/trip_stops/domain/entities/trip_stop.dart' as _i420;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i598;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i764;
import '../../features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i851;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i987;
import '../../features/trip_stops/domain/usecases/trip_stop_done.dart'
    as _i1041;
import '../../features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i1009;
import '../../features/trip_stops/domain/usecases/update_trip_stop.dart'
    as _i676;
import '../../features/trip_stops/domain/usecases/update_trip_stop_note.dart'
    as _i272;
import '../../features/trip_stops/domain/usecases/update_trip_stop_placeholder.dart'
    as _i10;
import '../../features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i528;
import '../../features/trip_stops/presentation/cubit/map/cubit/map_cubit.dart'
    as _i1069;
import '../../features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart'
    as _i497;
import '../../features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart'
    as _i197;
import '../../features/trips/data/datasources/trips_data_source.dart' as _i0;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i176;
import '../../features/trips/domain/entities/trip.dart' as _i910;
import '../../features/trips/domain/repositories/trips_repository.dart'
    as _i843;
import '../../features/trips/domain/usecases/add_user_for_share.dart' as _i605;
import '../../features/trips/domain/usecases/create_from_existing_trip.dart'
    as _i672;
import '../../features/trips/domain/usecases/create_trip.dart' as _i1008;
import '../../features/trips/domain/usecases/delete_trip.dart' as _i504;
import '../../features/trips/domain/usecases/listen_trip.dart' as _i228;
import '../../features/trips/domain/usecases/listen_trips.dart' as _i193;
import '../../features/trips/domain/usecases/remove_user_for_share.dart'
    as _i424;
import '../../features/trips/domain/usecases/update_trip.dart' as _i687;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i144;
import '../../features/trips/presentation/cubit/share/share_cubit.dart'
    as _i360;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart' as _i704;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart'
    as _i245;
import '../../features/tutorials/domain/usecases/update_tutorials_data.dart'
    as _i969;
import '../../features/tutorials/presentation/cubit/tutorial_cubit.dart'
    as _i58;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i190;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i524;
import '../../features/user_account/domain/entities/user.dart' as _i1023;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i290;
import '../../features/user_account/domain/usecases/delete_user.dart' as _i274;
import '../../features/user_account/domain/usecases/get_users_names.dart'
    as _i303;
import '../../features/user_account/domain/usecases/listen_user.dart' as _i62;
import '../../features/user_account/domain/usecases/login_user.dart' as _i460;
import '../../features/user_account/domain/usecases/logout_user.dart' as _i636;
import '../../features/user_account/domain/usecases/reauthenticate_user.dart'
    as _i934;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i203;
import '../../features/user_account/domain/usecases/register_user.dart'
    as _i705;
import '../../features/user_account/domain/usecases/update_user_details.dart'
    as _i975;
import '../../features/user_account/presentation/cubit/account_page/account_cubit.dart'
    as _i523;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i724;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i110;
import '../../ui/cubit/backgrounds_cubit.dart' as _i436;
import '../db/day_trips_collection_ref.dart' as _i432;
import '../db/settings_collection_ref.dart' as _i571;
import '../db/trip_stops_collection_ref.dart' as _i108;
import '../db/trips_collection_ref.dart' as _i992;
import '../db/users_collection_ref.dart' as _i321;
import '../routes/app_router.dart' as _i629;
import '../utilities/logger.dart' as _i228;
import 'modules.dart' as _i738;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
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
    gh.factory<_i810.WebViewController>(() => network.webViewController);
    await gh.factoryAsync<_i655.PackageInfo>(
      () => deviceModule.packageInfo(),
      preResolve: true,
    );
    gh.factory<_i247.Settings>(() => settingsModule.settings);
    gh.factory<_i535.InfoContactsCubit>(() => _i535.InfoContactsCubit());
    gh.factory<_i1069.MapCubit>(() => _i1069.MapCubit());
    gh.singleton<_i629.AppRouter>(() => _i629.AppRouter());
    gh.lazySingleton<_i361.Dio>(() => network.client);
    gh.lazySingleton<_i161.InternetConnection>(
        () => network.internetConnection);
    gh.lazySingleton<_i59.FirebaseAuth>(() => firebaseModule.firebaseAuth);
    gh.lazySingleton<_i974.FirebaseFirestore>(
        () => firebaseModule.firebaseFirestore);
    gh.lazySingleton<_i141.FirebaseCrashlytics>(
        () => firebaseModule.firebaseCrashlytics);
    gh.lazySingleton<_i345.FirebaseDatabase>(
        () => firebaseModule.firebaseDatabase);
    gh.lazySingleton<_i457.FirebaseStorage>(
        () => firebaseModule.firebaseStorage);
    gh.lazySingleton<_i574.PolylinePoints>(
        () => googlePlacesModule.polylinePoints);
    gh.lazySingleton<_i331.BlocObserver>(() => blocObserModule.blocObserver);
    gh.lazySingleton<_i207.Talker>(() => talkerModule.talker);
    gh.lazySingleton<_i358.AdsTrips>(() => _i358.AdsTrips());
    gh.lazySingleton<_i358.AdsTrip>(() => _i358.AdsTrip());
    gh.lazySingleton<_i358.AdsDayTrip>(() => _i358.AdsDayTrip());
    gh.lazySingleton<_i358.AdsTripStop>(() => _i358.AdsTripStop());
    gh.lazySingleton<_i0.TripsDataSource>(() => _i0.TripsDataSourceImpl(
          gh<_i974.FirebaseFirestore>(),
          gh<_i161.InternetConnection>(),
        ));
    gh.lazySingleton<_i297.DayTripsDataSource>(
        () => _i297.DayTripsDataSourceImpl(gh<_i974.FirebaseFirestore>()));
    gh.lazySingleton<_i206.DayTripsRepository>(
        () => _i959.DayTripsRepositoryImpl(
              gh<_i297.DayTripsDataSource>(),
              gh<_i141.FirebaseCrashlytics>(),
            ));
    await gh.factoryAsync<_i264.Locale>(
      () => deviceModule.deviceLocale(),
      instanceName: 'deviceLocale',
      preResolve: true,
    );
    gh.lazySingleton<_i437.DiscoverTripsDataSource>(
        () => _i437.DiscoverTripsDataSourceImpl());
    gh.factoryParam<_i942.DiscoverNewTripStopCubit, _i420.TripStop, dynamic>((
      tripStop,
      _,
    ) =>
        _i942.DiscoverNewTripStopCubit(tripStop: tripStop));
    gh.lazySingleton<_i875.TripStopsDataSource>(
        () => _i875.TripStopsDataSourceImpl(gh<_i974.FirebaseFirestore>()));
    gh.lazySingleton<String>(
      () => googlePlacesModule.proxyUrl,
      instanceName: 'proxyUrl',
    );
    gh.factoryParam<_i432.DayTripsCollectionRef, String, dynamic>((
      tripId,
      _,
    ) =>
        _i432.DayTripsCollectionRef(
          gh<_i974.FirebaseFirestore>(),
          tripId,
        ));
    gh.lazySingleton<String>(
      () => googlePlacesModule.googlePlacesKey,
      instanceName: 'googlePlacesKey',
    );
    gh.factory<_i571.SettingsCollectionRef>(
        () => _i571.SettingsCollectionRef(gh<_i974.FirebaseFirestore>()));
    gh.factory<_i321.UsersCollectionRef>(
        () => _i321.UsersCollectionRef(gh<_i974.FirebaseFirestore>()));
    gh.factory<_i992.TripsCollectionRef>(
        () => _i992.TripsCollectionRef(gh<_i974.FirebaseFirestore>()));
    gh.lazySingleton<_i598.TripStopsRepository>(
        () => _i774.TripStopsRepositoryImpl(
              gh<_i875.TripStopsDataSource>(),
              gh<_i141.FirebaseCrashlytics>(),
            ));
    gh.lazySingleton<_i1071.GooglePlacesDataSource>(
        () => _i1071.GooglePlacesDataSourceImpl(
              gh<_i361.Dio>(),
              gh<_i161.InternetConnection>(),
              gh<_i574.PolylinePoints>(),
              gh<String>(instanceName: 'googlePlacesKey'),
              gh<String>(instanceName: 'proxyUrl'),
            ));
    gh.factoryParam<_i108.TripStopsCollectionRef, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i108.TripStopsCollectionRef(
          gh<_i974.FirebaseFirestore>(),
          tripId,
          dayTripId,
        ));
    gh.lazySingleton<String>(
      () => googlePlacesModule.googleMapKey,
      instanceName: 'googleMapKey',
    );
    gh.lazySingleton<_i228.CrashlyticsTalkerObserver>(
        () => _i228.CrashlyticsTalkerObserver(gh<_i141.FirebaseCrashlytics>()));
    gh.lazySingleton<_i987.ListenTripStops>(
        () => _i987.ListenTripStops(gh<_i598.TripStopsRepository>()));
    gh.lazySingleton<_i676.UpdateTripStop>(
        () => _i676.UpdateTripStop(gh<_i598.TripStopsRepository>()));
    gh.lazySingleton<_i851.DeleteTripStop>(
        () => _i851.DeleteTripStop(gh<_i598.TripStopsRepository>()));
    gh.lazySingleton<_i228.Logger>(
        () => _i228.LoggerTalker(gh<_i207.Talker>()));
    gh.lazySingleton<_i398.DiscoverTripsRepository>(
        () => _i149.DiscoverTripsRepositoryImpl(
              gh<_i437.DiscoverTripsDataSource>(),
              gh<_i141.FirebaseCrashlytics>(),
            ));
    gh.factory<_i436.BackgroundsCubit>(() =>
        _i436.BackgroundsCubit(firebaseStorage: gh<_i457.FirebaseStorage>()));
    gh.lazySingleton<_i1041.TripStopDone>(
        () => _i1041.TripStopDone(gh<_i598.TripStopsRepository>()));
    gh.lazySingleton<_i190.UserDataSource>(() => _i190.UserDataSourceImpl(
          gh<_i59.FirebaseAuth>(),
          gh<_i974.FirebaseFirestore>(),
          gh<_i161.InternetConnection>(),
        ));
    gh.factoryParam<_i523.MapCubit, _i523.MapStateType, dynamic>((
      mapStateType,
      _,
    ) =>
        _i523.MapCubit(mapStateType: mapStateType));
    gh.lazySingleton<_i843.TripsRepository>(() => _i176.TripsRepositoryImpl(
          gh<_i0.TripsDataSource>(),
          gh<_i141.FirebaseCrashlytics>(),
        ));
    gh.lazySingleton<_i1028.DeleteDayTrip>(
        () => _i1028.DeleteDayTrip(gh<_i206.DayTripsRepository>()));
    gh.lazySingleton<_i350.ListenDayTrip>(
        () => _i350.ListenDayTrip(gh<_i206.DayTripsRepository>()));
    gh.lazySingleton<_i602.SaveTripStopsDirections>(
        () => _i602.SaveTripStopsDirections(gh<_i206.DayTripsRepository>()));
    gh.lazySingleton<_i642.UpdateDayTripStartTime>(
        () => _i642.UpdateDayTripStartTime(gh<_i206.DayTripsRepository>()));
    gh.lazySingleton<_i154.UpdateDayTripShowDirections>(() =>
        _i154.UpdateDayTripShowDirections(gh<_i206.DayTripsRepository>()));
    gh.lazySingleton<_i228.CreateDayTrip>(
        () => _i228.CreateDayTrip(gh<_i206.DayTripsRepository>()));
    gh.lazySingleton<_i546.UpdateDayTrip>(
        () => _i546.UpdateDayTrip(gh<_i206.DayTripsRepository>()));
    gh.lazySingleton<_i278.ListenDayTrips>(
        () => _i278.ListenDayTrips(gh<_i206.DayTripsRepository>()));
    gh.lazySingleton<_i590.UpdateTripStopsDirectionsUpToDate>(() =>
        _i590.UpdateTripStopsDirectionsUpToDate(
            gh<_i206.DayTripsRepository>()));
    gh.lazySingleton<_i254.UpdateDayTripUseDifferentDirectionsColors>(() =>
        _i254.UpdateDayTripUseDifferentDirectionsColors(
            gh<_i206.DayTripsRepository>()));
    gh.lazySingleton<_i1009.UpdateTravelTime>(
        () => _i1009.UpdateTravelTime(gh<_i598.TripStopsRepository>()));
    gh.lazySingleton<_i10.UpdateTripStopPlaceholder>(
        () => _i10.UpdateTripStopPlaceholder(gh<_i598.TripStopsRepository>()));
    gh.lazySingleton<_i764.CreateTripStop>(
        () => _i764.CreateTripStop(gh<_i598.TripStopsRepository>()));
    gh.lazySingleton<_i272.UpdateTripStopNote>(
        () => _i272.UpdateTripStopNote(gh<_i598.TripStopsRepository>()));
    gh.lazySingleton<_i528.UpdateTripStopsIndexes>(
        () => _i528.UpdateTripStopsIndexes(gh<_i598.TripStopsRepository>()));
    gh.lazySingleton<_i219.OldTripsDataSource>(
        () => _i219.OldTripsDataSourceImpl(gh<_i345.FirebaseDatabase>()));
    gh.lazySingleton<_i193.ListenUserTrips>(
        () => _i193.ListenUserTrips(gh<_i843.TripsRepository>()));
    gh.lazySingleton<_i193.ListenSharedTrips>(
        () => _i193.ListenSharedTrips(gh<_i843.TripsRepository>()));
    gh.lazySingleton<_i228.ListenTrip>(
        () => _i228.ListenTrip(gh<_i843.TripsRepository>()));
    gh.lazySingleton<_i730.UpdateDayTripsIndexes>(
        () => _i730.UpdateDayTripsIndexes(gh<_i206.DayTripsRepository>()));
    gh.factoryParam<_i497.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i497.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i764.CreateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i590.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.factoryParam<_i640.DayTripCubit, _i910.Trip, _i383.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i640.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i546.UpdateDayTrip>(),
          deleteDayTrip: gh<_i1028.DeleteDayTrip>(),
          listenTripStops: gh<_i987.ListenTripStops>(),
          updateDayTripStartTime: gh<_i642.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i528.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i1009.UpdateTravelTime>(),
          tripStopDone: gh<_i1041.TripStopDone>(),
          listenDayTrip: gh<_i350.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i590.UpdateTripStopsDirectionsUpToDate>(),
          deleteTripStop: gh<_i851.DeleteTripStop>(),
          updateTripStopPlaceholder: gh<_i10.UpdateTripStopPlaceholder>(),
          crashlytics: gh<_i141.FirebaseCrashlytics>(),
        )..init());
    gh.lazySingleton<_i935.GooglePlacesRepository>(
        () => _i1026.GooglePlacesRepositoryImpl(
              gh<_i1071.GooglePlacesDataSource>(),
              gh<_i141.FirebaseCrashlytics>(),
            ));
    gh.lazySingleton<_i487.FetchSuggestions>(
        () => _i487.FetchSuggestions(gh<_i935.GooglePlacesRepository>()));
    gh.lazySingleton<_i372.FetchTripStopsDirections>(() =>
        _i372.FetchTripStopsDirections(gh<_i935.GooglePlacesRepository>()));
    gh.lazySingleton<_i888.FetchPlaceDetails>(
        () => _i888.FetchPlaceDetails(gh<_i935.GooglePlacesRepository>()));
    gh.factoryParam<_i245.TripsCubit, String, dynamic>((
      userId,
      _,
    ) =>
        _i245.TripsCubit(
          listenUserTrips: gh<_i193.ListenUserTrips>(),
          listenSharedTrips: gh<_i193.ListenSharedTrips>(),
          crashlytics: gh<_i141.FirebaseCrashlytics>(),
          userId: userId,
        )..init());
    gh.factoryParam<_i79.AdsCubit, _i358.Ads, dynamic>((
      ads,
      _,
    ) =>
        _i79.AdsCubit(
          ads: ads,
          crashlytics: gh<_i141.FirebaseCrashlytics>(),
          logger: gh<_i228.Logger>(),
        )..loadAds());
    gh.lazySingleton<_i1049.GetPublicDayTrips>(
        () => _i1049.GetPublicDayTrips(gh<_i398.DiscoverTripsRepository>()));
    gh.lazySingleton<_i893.GetPublicTripStops>(
        () => _i893.GetPublicTripStops(gh<_i398.DiscoverTripsRepository>()));
    gh.lazySingleton<_i816.GetPublicTrips>(
        () => _i816.GetPublicTrips(gh<_i398.DiscoverTripsRepository>()));
    gh.lazySingleton<_i1008.CreateTrip>(
        () => _i1008.CreateTrip(gh<_i843.TripsRepository>()));
    gh.lazySingleton<_i687.UpdateTrip>(
        () => _i687.UpdateTrip(gh<_i843.TripsRepository>()));
    gh.lazySingleton<_i424.RemoveUserForShare>(
        () => _i424.RemoveUserForShare(gh<_i843.TripsRepository>()));
    gh.lazySingleton<_i672.CreateFromExistingTrip>(
        () => _i672.CreateFromExistingTrip(gh<_i843.TripsRepository>()));
    gh.lazySingleton<_i605.AddUserForShare>(
        () => _i605.AddUserForShare(gh<_i843.TripsRepository>()));
    gh.lazySingleton<_i504.DeleteTrip>(
        () => _i504.DeleteTrip(gh<_i843.TripsRepository>()));
    gh.factoryParam<_i704.TripCubit, _i910.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i704.TripCubit(
          trip: trip,
          saveTrip: gh<_i687.UpdateTrip>(),
          deleteTrip: gh<_i504.DeleteTrip>(),
          listenDayTrips: gh<_i278.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i730.UpdateDayTripsIndexes>(),
          listenTrip: gh<_i228.ListenTrip>(),
          removeUserForShare: gh<_i424.RemoveUserForShare>(),
          crashlytics: gh<_i141.FirebaseCrashlytics>(),
        )..init());
    gh.factoryParam<_i144.NewTripCubit, _i910.Trip?, String>((
      existingTrip,
      userId,
    ) =>
        _i144.NewTripCubit(
          createTrip: gh<_i1008.CreateTrip>(),
          createFromExistingTrip: gh<_i672.CreateFromExistingTrip>(),
          settings: gh<_i247.Settings>(),
          deviceLocale: gh<_i264.Locale>(instanceName: 'deviceLocale'),
          existingTrip: existingTrip,
          userId: userId,
        ));
    gh.factoryParam<_i391.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i391.NewDayTripCubit(
          createDayTrip: gh<_i228.CreateDayTrip>(),
          settings: gh<_i247.Settings>(),
          tripId: tripId,
        ));
    gh.lazySingleton<_i729.OldTripsRepository>(
        () => _i662.OldTripsRepositoryImpl(
              gh<_i219.OldTripsDataSource>(),
              gh<_i141.FirebaseCrashlytics>(),
            ));
    gh.factory<_i202.GooglePlacesCubit>(() => _i202.GooglePlacesCubit(
          fetchSuggestions: gh<_i487.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i888.FetchPlaceDetails>(),
        ));
    gh.factoryParam<_i197.TripStopCubit, _i197.TripStopCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i197.TripStopCubit(
          params: params,
          tripStopDone: gh<_i1041.TripStopDone>(),
          updateTripStopNote: gh<_i272.UpdateTripStopNote>(),
          deleteTripStop: gh<_i851.DeleteTripStop>(),
          updateTripStop: gh<_i676.UpdateTripStop>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i590.UpdateTripStopsDirectionsUpToDate>(),
        ));
    gh.factoryParam<_i1009.DiscoverNewTripStopsCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i1009.DiscoverNewTripStopsCubit(
          getPublicTripStops: gh<_i893.GetPublicTripStops>(),
          tripId: tripId,
          dayTripId: dayTripId,
        )..init());
    gh.lazySingleton<_i244.ReadOldTrips>(
        () => _i244.ReadOldTrips(gh<_i729.OldTripsRepository>()));
    gh.lazySingleton<_i396.ImportOldTrips>(
        () => _i396.ImportOldTrips(gh<_i729.OldTripsRepository>()));
    gh.lazySingleton<_i290.UserRepository>(() => _i524.UserRepositoryImpl(
          gh<_i190.UserDataSource>(),
          gh<_i141.FirebaseCrashlytics>(),
        ));
    gh.factoryParam<_i896.TripStopsMapCubit, _i910.Trip, _i383.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i896.TripStopsMapCubit(
          fetchPolylinePoints: gh<_i372.FetchTripStopsDirections>(),
          saveTripStopsDirections: gh<_i602.SaveTripStopsDirections>(),
          listenDayTrip: gh<_i350.ListenDayTrip>(),
          updateTripStopsDirectionsUpToDate:
              gh<_i590.UpdateTripStopsDirectionsUpToDate>(),
          updateDayTripShowDirections: gh<_i154.UpdateDayTripShowDirections>(),
          updateDayTripUseDifferentDirectionsColors:
              gh<_i254.UpdateDayTripUseDifferentDirectionsColors>(),
          crashlytics: gh<_i141.FirebaseCrashlytics>(),
          trip: trip,
          dayTrip: dayTrip,
        ));
    gh.factoryParam<_i193.ImportOldTripsCubit, _i1023.User, dynamic>((
      user,
      _,
    ) =>
        _i193.ImportOldTripsCubit(
          user: user,
          readOldTrips: gh<_i244.ReadOldTrips>(),
          importOldTrips: gh<_i396.ImportOldTrips>(),
        )..reload());
    gh.factoryParam<_i230.DiscoverNewTripsCubit, String, dynamic>((
      userId,
      _,
    ) =>
        _i230.DiscoverNewTripsCubit(
          getPublicTrips: gh<_i816.GetPublicTrips>(),
          userId: userId,
        )..init());
    gh.lazySingleton<_i274.DeleteUser>(() => _i274.DeleteUser(
          gh<_i290.UserRepository>(),
          gh<_i843.TripsRepository>(),
          gh<_i161.InternetConnection>(),
        ));
    gh.factoryParam<_i338.DiscoverNewDailyTripsCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i338.DiscoverNewDailyTripsCubit(
          tripId: tripId,
          getPublicDayTrips: gh<_i1049.GetPublicDayTrips>(),
        )..init());
    gh.lazySingleton<_i986.UpdateSettings>(
        () => _i986.UpdateSettings(gh<_i290.UserRepository>()));
    gh.lazySingleton<_i636.LogoutUser>(
        () => _i636.LogoutUser(gh<_i290.UserRepository>()));
    gh.lazySingleton<_i62.ListenUser>(
        () => _i62.ListenUser(gh<_i290.UserRepository>()));
    gh.lazySingleton<_i934.ReauthenticateUser>(
        () => _i934.ReauthenticateUser(gh<_i290.UserRepository>()));
    gh.lazySingleton<_i705.RegisterUser>(
        () => _i705.RegisterUser(gh<_i290.UserRepository>()));
    gh.lazySingleton<_i203.RecoverPassword>(
        () => _i203.RecoverPassword(gh<_i290.UserRepository>()));
    gh.lazySingleton<_i303.GetUsersNames>(
        () => _i303.GetUsersNames(gh<_i290.UserRepository>()));
    gh.lazySingleton<_i460.LoginUser>(
        () => _i460.LoginUser(gh<_i290.UserRepository>()));
    gh.lazySingleton<_i969.UpdateTutorialsData>(
        () => _i969.UpdateTutorialsData(gh<_i290.UserRepository>()));
    gh.lazySingleton<_i975.UpdateUserDetails>(
        () => _i975.UpdateUserDetails(gh<_i290.UserRepository>()));
    gh.factoryParam<_i523.AccountCubit, dynamic, dynamic>((
      user,
      _,
    ) =>
        _i523.AccountCubit(
          user: user,
          logoutUser: gh<_i636.LogoutUser>(),
          reauthenticateUser: gh<_i934.ReauthenticateUser>(),
          updateUserDetails: gh<_i975.UpdateUserDetails>(),
          deleteUser: gh<_i274.DeleteUser>(),
        ));
    gh.factory<_i724.LoginSignupCubit>(() => _i724.LoginSignupCubit(
          registerUser: gh<_i705.RegisterUser>(),
          loginUser: gh<_i460.LoginUser>(),
          recoverPassword: gh<_i203.RecoverPassword>(),
        ));
    gh.factory<_i58.TutorialCubit>(() => _i58.TutorialCubit(
        updateTutorialsData: gh<_i969.UpdateTutorialsData>()));
    gh.factory<_i792.SettingsCubit>(
        () => _i792.SettingsCubit(updateSettings: gh<_i986.UpdateSettings>()));
    gh.lazySingleton<_i110.UserCubit>(
        () => _i110.UserCubit(listenUserState: gh<_i62.ListenUser>()));
    gh.factoryParam<_i360.ShareCubit, _i360.ShareCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i360.ShareCubit(
          params: params,
          addUserForShare: gh<_i605.AddUserForShare>(),
          removeUserForShare: gh<_i424.RemoveUserForShare>(),
          getUsersNames: gh<_i303.GetUsersNames>(),
        ));
    return this;
  }
}

class _$Network extends _i738.Network {}

class _$DeviceModule extends _i738.DeviceModule {}

class _$SettingsModule extends _i792.SettingsModule {}

class _$FirebaseModule extends _i738.FirebaseModule {}

class _$GooglePlacesModule extends _i738.GooglePlacesModule {}

class _$BlocObserModule extends _i738.BlocObserModule {}

class _$TalkerModule extends _i228.TalkerModule {}
