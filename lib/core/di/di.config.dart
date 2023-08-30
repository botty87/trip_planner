// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:dio/dio.dart' as _i9;
import 'package:flutter_bloc/flutter_bloc.dart' as _i25;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i14;
import 'package:trip_planner/core/bloc_observer.dart' as _i26;
import 'package:trip_planner/core/di/di.dart' as _i47;
import 'package:trip_planner/core/routes/app_router.dart' as _i3;
import 'package:trip_planner/features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i5;
import 'package:trip_planner/features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i7;
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart'
    as _i31;
import 'package:trip_planner/features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i6;
import 'package:trip_planner/features/day_trips/domain/usecases/create_day_trip.dart'
    as _i27;
import 'package:trip_planner/features/day_trips/domain/usecases/delete_day_trip.dart'
    as _i8;
import 'package:trip_planner/features/day_trips/domain/usecases/listen_day_trips.dart'
    as _i13;
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trip.dart'
    as _i19;
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i20;
import 'package:trip_planner/features/day_trips/presentation/cubit/day_trip/cubit/day_trip_cubit.dart'
    as _i29;
import 'package:trip_planner/features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i39;
import 'package:trip_planner/features/google_places/data/datasources/google_places_data_source.dart'
    as _i10;
import 'package:trip_planner/features/google_places/data/repositories/google_places_repository_impl.dart'
    as _i12;
import 'package:trip_planner/features/google_places/domain/repositories/google_places_repository.dart'
    as _i11;
import 'package:trip_planner/features/google_places/domain/usecases/fetch_place_details.dart'
    as _i33;
import 'package:trip_planner/features/google_places/domain/usecases/fetch_suggestions.dart'
    as _i34;
import 'package:trip_planner/features/google_places/presentation/cubit/google_places_cubit.dart'
    as _i35;
import 'package:trip_planner/features/trip_stops/presentation/cubit/cubit/new_trip_stop_cubit.dart'
    as _i15;
import 'package:trip_planner/features/trips/data/datasources/trips_data_source.dart'
    as _i16;
import 'package:trip_planner/features/trips/data/repositories/trips_repository_impl.dart'
    as _i18;
import 'package:trip_planner/features/trips/domain/entities/trip.dart' as _i30;
import 'package:trip_planner/features/trips/domain/repositories/trips_repository.dart'
    as _i17;
import 'package:trip_planner/features/trips/domain/usecases/create_trip.dart'
    as _i28;
import 'package:trip_planner/features/trips/domain/usecases/delete_trip.dart'
    as _i32;
import 'package:trip_planner/features/trips/domain/usecases/listen_trips.dart'
    as _i36;
import 'package:trip_planner/features/trips/domain/usecases/update_trip.dart'
    as _i21;
import 'package:trip_planner/features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i45;
import 'package:trip_planner/features/trips/presentation/cubit/trip/trip_cubit.dart'
    as _i42;
import 'package:trip_planner/features/trips/presentation/cubit/trips/trips_cubit.dart'
    as _i46;
import 'package:trip_planner/features/user_account/data/datasources/user_data_source.dart'
    as _i22;
import 'package:trip_planner/features/user_account/data/repositories/user_repository_impl.dart'
    as _i24;
import 'package:trip_planner/features/user_account/domain/repositories/user_repository.dart'
    as _i23;
import 'package:trip_planner/features/user_account/domain/usecases/listen_user.dart'
    as _i37;
import 'package:trip_planner/features/user_account/domain/usecases/login_user.dart'
    as _i38;
import 'package:trip_planner/features/user_account/domain/usecases/recover_password.dart'
    as _i40;
import 'package:trip_planner/features/user_account/domain/usecases/register_user.dart'
    as _i41;
import 'package:trip_planner/features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i44;
import 'package:trip_planner/features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i43;

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
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.lazySingleton<_i4.Connectivity>(() => network.connectivity);
    gh.lazySingleton<_i5.DayTripsDataSource>(
        () => _i5.DayTripsDataSourceImpl());
    gh.lazySingleton<_i6.DayTripsRepository>(
        () => _i7.DayTripsRepositoryImpl(gh<_i5.DayTripsDataSource>()));
    gh.lazySingleton<_i8.DeleteDayTrip>(
        () => _i8.DeleteDayTrip(gh<_i6.DayTripsRepository>()));
    gh.lazySingleton<_i9.Dio>(() => network.client);
    gh.lazySingleton<_i10.GooglePlacesDataSource>(
        () => _i10.GooglePlacesDataSourceImpl(
              gh<_i9.Dio>(),
              gh<_i4.Connectivity>(),
            ));
    gh.lazySingleton<_i11.GooglePlacesRepository>(() =>
        _i12.GooglePlacesRepositoryImpl(gh<_i10.GooglePlacesDataSource>()));
    gh.lazySingleton<_i13.ListenDayTrips>(
        () => _i13.ListenDayTrips(gh<_i6.DayTripsRepository>()));
    gh.lazySingleton<_i14.Logger>(() => registerModule.logger);
    gh.factoryParam<_i15.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i15.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
        ));
    gh.lazySingleton<_i16.TripsDataSource>(() => _i16.TripsDataSourceImpl());
    gh.lazySingleton<_i17.TripsRepository>(() =>
        _i18.TripsRepositoryImpl(tripsDataSource: gh<_i16.TripsDataSource>()));
    gh.lazySingleton<_i19.UpdateDayTrip>(
        () => _i19.UpdateDayTrip(gh<_i6.DayTripsRepository>()));
    gh.lazySingleton<_i20.UpdateDayTripsIndexes>(
        () => _i20.UpdateDayTripsIndexes(gh<_i6.DayTripsRepository>()));
    gh.lazySingleton<_i21.UpdateTrip>(
        () => _i21.UpdateTrip(gh<_i17.TripsRepository>()));
    gh.lazySingleton<_i22.UserDataSource>(() => _i22.UserDataSourceImpl());
    gh.lazySingleton<_i23.UserRepository>(
        () => _i24.UserRepositoryImpl(gh<_i22.UserDataSource>()));
    gh.lazySingleton<_i25.BlocObserver>(
        () => _i26.SimpleBlocObserver(logger: gh<_i14.Logger>()));
    gh.lazySingleton<_i27.CreateDayTrip>(
        () => _i27.CreateDayTrip(gh<_i6.DayTripsRepository>()));
    gh.lazySingleton<_i28.CreateTrip>(
        () => _i28.CreateTrip(gh<_i17.TripsRepository>()));
    gh.factoryParam<_i29.DayTripCubit, _i30.Trip, _i31.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i29.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i19.UpdateDayTrip>(),
          deleteDayTrip: gh<_i8.DeleteDayTrip>(),
        ));
    gh.lazySingleton<_i32.DeleteTrip>(
        () => _i32.DeleteTrip(gh<_i17.TripsRepository>()));
    gh.lazySingleton<_i33.FetchPlaceDetails>(
        () => _i33.FetchPlaceDetails(gh<_i11.GooglePlacesRepository>()));
    gh.lazySingleton<_i34.FetchSuggestions>(
        () => _i34.FetchSuggestions(gh<_i11.GooglePlacesRepository>()));
    gh.factory<_i35.GooglePlacesCubit>(() => _i35.GooglePlacesCubit(
          fetchSuggestions: gh<_i34.FetchSuggestions>(),
          fetchPlaceDetails: gh<_i33.FetchPlaceDetails>(),
        ));
    gh.lazySingleton<_i36.ListenTrips>(
        () => _i36.ListenTrips(gh<_i17.TripsRepository>()));
    gh.lazySingleton<_i37.ListenUser>(
        () => _i37.ListenUser(gh<_i23.UserRepository>()));
    gh.lazySingleton<_i38.LoginUser>(
        () => _i38.LoginUser(gh<_i23.UserRepository>()));
    gh.factoryParam<_i39.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i39.NewDayTripCubit(
          createDayTrip: gh<_i27.CreateDayTrip>(),
          tripId: tripId,
        ));
    gh.lazySingleton<_i40.RecoverPassword>(
        () => _i40.RecoverPassword(gh<_i23.UserRepository>()));
    gh.lazySingleton<_i41.RegisterUser>(
        () => _i41.RegisterUser(gh<_i23.UserRepository>()));
    gh.factoryParam<_i42.TripCubit, _i30.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i42.TripCubit(
          trip: trip,
          saveTrip: gh<_i21.UpdateTrip>(),
          deleteTrip: gh<_i32.DeleteTrip>(),
          listenDayTrips: gh<_i13.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i20.UpdateDayTripsIndexes>(),
        ));
    gh.lazySingleton<_i43.UserCubit>(
        () => _i43.UserCubit(listenUserState: gh<_i37.ListenUser>()));
    gh.factory<_i44.LoginSignupCubit>(() => _i44.LoginSignupCubit(
          registerUser: gh<_i41.RegisterUser>(),
          loginUser: gh<_i38.LoginUser>(),
          recoverPassword: gh<_i40.RecoverPassword>(),
        ));
    gh.factory<_i45.NewTripCubit>(() => _i45.NewTripCubit(
          gh<_i43.UserCubit>(),
          gh<_i28.CreateTrip>(),
        ));
    gh.factory<_i46.TripsCubit>(() => _i46.TripsCubit(
          gh<_i36.ListenTrips>(),
          gh<_i43.UserCubit>(),
        ));
    return this;
  }
}

class _$Network extends _i47.Network {}

class _$RegisterModule extends _i47.RegisterModule {}
