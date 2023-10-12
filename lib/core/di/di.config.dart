// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_bloc/flutter_bloc.dart' as _i25;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i9;
import 'package:trip_planner/core/bloc_observer.dart' as _i26;
import 'package:trip_planner/core/di/di.dart' as _i47;
import 'package:trip_planner/core/routes/app_router.dart' as _i3;
import 'package:trip_planner/features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i4;
import 'package:trip_planner/features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i6;
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart'
    as _i43;
import 'package:trip_planner/features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i5;
import 'package:trip_planner/features/day_trips/domain/usecases/create_day_trip.dart'
    as _i27;
import 'package:trip_planner/features/day_trips/domain/usecases/delete_day_trip.dart'
    as _i7;
import 'package:trip_planner/features/day_trips/domain/usecases/listen_day_trips.dart'
    as _i8;
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trip.dart'
    as _i16;
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i17;
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i18;
import 'package:trip_planner/features/day_trips/presentation/cubit/day_trip/cubit/day_trip_cubit.dart'
    as _i42;
import 'package:trip_planner/features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i35;
import 'package:trip_planner/features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i10;
import 'package:trip_planner/features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i12;
import 'package:trip_planner/features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i11;
import 'package:trip_planner/features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i29;
import 'package:trip_planner/features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i31;
import 'package:trip_planner/features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i19;
import 'package:trip_planner/features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i21;
import 'package:trip_planner/features/trip_stops/presentation/cubit/cubit/new_trip_stop_cubit.dart'
    as _i36;
import 'package:trip_planner/features/trips/data/datasources/trips_data_source.dart'
    as _i13;
import 'package:trip_planner/features/trips/data/repositories/trips_repository_impl.dart'
    as _i15;
import 'package:trip_planner/features/trips/domain/entities/trip.dart' as _i40;
import 'package:trip_planner/features/trips/domain/repositories/trips_repository.dart'
    as _i14;
import 'package:trip_planner/features/trips/domain/usecases/create_trip.dart'
    as _i28;
import 'package:trip_planner/features/trips/domain/usecases/delete_trip.dart'
    as _i30;
import 'package:trip_planner/features/trips/domain/usecases/listen_trips.dart'
    as _i32;
import 'package:trip_planner/features/trips/domain/usecases/update_trip.dart'
    as _i20;
import 'package:trip_planner/features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i45;
import 'package:trip_planner/features/trips/presentation/cubit/trip/trip_cubit.dart'
    as _i39;
import 'package:trip_planner/features/trips/presentation/cubit/trips/trips_cubit.dart'
    as _i46;
import 'package:trip_planner/features/user_account/data/datasources/user_data_source.dart'
    as _i22;
import 'package:trip_planner/features/user_account/data/repositories/user_repository_impl.dart'
    as _i24;
import 'package:trip_planner/features/user_account/domain/repositories/user_repository.dart'
    as _i23;
import 'package:trip_planner/features/user_account/domain/usecases/listen_user.dart'
    as _i33;
import 'package:trip_planner/features/user_account/domain/usecases/login_user.dart'
    as _i34;
import 'package:trip_planner/features/user_account/domain/usecases/recover_password.dart'
    as _i37;
import 'package:trip_planner/features/user_account/domain/usecases/register_user.dart'
    as _i38;
import 'package:trip_planner/features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i44;
import 'package:trip_planner/features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i41;

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
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.lazySingleton<_i4.DayTripsDataSource>(
        () => _i4.DayTripsDataSourceImpl());
    gh.lazySingleton<_i5.DayTripsRepository>(
        () => _i6.DayTripsRepositoryImpl(gh<_i4.DayTripsDataSource>()));
    gh.lazySingleton<_i7.DeleteDayTrip>(
        () => _i7.DeleteDayTrip(gh<_i5.DayTripsRepository>()));
    gh.lazySingleton<_i8.ListenDayTrips>(
        () => _i8.ListenDayTrips(gh<_i5.DayTripsRepository>()));
    gh.lazySingleton<_i9.Logger>(() => registerModule.logger);
    gh.lazySingleton<_i10.TripStopsDataSource>(
        () => _i10.TripStopsDataSourceImpl());
    gh.lazySingleton<_i11.TripStopsRepository>(
        () => _i12.TripStopsRepositoryImpl(gh<_i10.TripStopsDataSource>()));
    gh.lazySingleton<_i13.TripsDataSource>(() => _i13.TripsDataSourceImpl());
    gh.lazySingleton<_i14.TripsRepository>(() =>
        _i15.TripsRepositoryImpl(tripsDataSource: gh<_i13.TripsDataSource>()));
    gh.lazySingleton<_i16.UpdateDayTrip>(
        () => _i16.UpdateDayTrip(gh<_i5.DayTripsRepository>()));
    gh.lazySingleton<_i17.UpdateDayTripStartTime>(
        () => _i17.UpdateDayTripStartTime(gh<_i5.DayTripsRepository>()));
    gh.lazySingleton<_i18.UpdateDayTripsIndexes>(
        () => _i18.UpdateDayTripsIndexes(gh<_i5.DayTripsRepository>()));
    gh.lazySingleton<_i19.UpdateTravelTime>(
        () => _i19.UpdateTravelTime(gh<_i11.TripStopsRepository>()));
    gh.lazySingleton<_i20.UpdateTrip>(
        () => _i20.UpdateTrip(gh<_i14.TripsRepository>()));
    gh.lazySingleton<_i21.UpdateTripStopsIndexes>(
        () => _i21.UpdateTripStopsIndexes(gh<_i11.TripStopsRepository>()));
    gh.lazySingleton<_i22.UserDataSource>(() => _i22.UserDataSourceImpl());
    gh.lazySingleton<_i23.UserRepository>(
        () => _i24.UserRepositoryImpl(gh<_i22.UserDataSource>()));
    gh.lazySingleton<_i25.BlocObserver>(
        () => _i26.SimpleBlocObserver(logger: gh<_i9.Logger>()));
    gh.lazySingleton<_i27.CreateDayTrip>(
        () => _i27.CreateDayTrip(gh<_i5.DayTripsRepository>()));
    gh.lazySingleton<_i28.CreateTrip>(
        () => _i28.CreateTrip(gh<_i14.TripsRepository>()));
    gh.lazySingleton<_i29.CreateTripStop>(
        () => _i29.CreateTripStop(gh<_i11.TripStopsRepository>()));
    gh.lazySingleton<_i30.DeleteTrip>(
        () => _i30.DeleteTrip(gh<_i14.TripsRepository>()));
    gh.lazySingleton<_i31.ListenTripStops>(
        () => _i31.ListenTripStops(gh<_i11.TripStopsRepository>()));
    gh.lazySingleton<_i32.ListenTrips>(
        () => _i32.ListenTrips(gh<_i14.TripsRepository>()));
    gh.lazySingleton<_i33.ListenUser>(
        () => _i33.ListenUser(gh<_i23.UserRepository>()));
    gh.lazySingleton<_i34.LoginUser>(
        () => _i34.LoginUser(gh<_i23.UserRepository>()));
    gh.factoryParam<_i35.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i35.NewDayTripCubit(
          createDayTrip: gh<_i27.CreateDayTrip>(),
          tripId: tripId,
        ));
    gh.factoryParam<_i36.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i36.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i29.CreateTripStop>(),
        ));
    gh.lazySingleton<_i37.RecoverPassword>(
        () => _i37.RecoverPassword(gh<_i23.UserRepository>()));
    gh.lazySingleton<_i38.RegisterUser>(
        () => _i38.RegisterUser(gh<_i23.UserRepository>()));
    gh.factoryParam<_i39.TripCubit, _i40.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i39.TripCubit(
          trip: trip,
          saveTrip: gh<_i20.UpdateTrip>(),
          deleteTrip: gh<_i30.DeleteTrip>(),
          listenDayTrips: gh<_i8.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i18.UpdateDayTripsIndexes>(),
        ));
    gh.lazySingleton<_i41.UserCubit>(
        () => _i41.UserCubit(listenUserState: gh<_i33.ListenUser>()));
    gh.factoryParam<_i42.DayTripCubit, _i40.Trip, _i43.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i42.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i16.UpdateDayTrip>(),
          deleteDayTrip: gh<_i7.DeleteDayTrip>(),
          listenTripStops: gh<_i31.ListenTripStops>(),
          updateDayTripStartTime: gh<_i17.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i21.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i19.UpdateTravelTime>(),
        ));
    gh.factory<_i44.LoginSignupCubit>(() => _i44.LoginSignupCubit(
          registerUser: gh<_i38.RegisterUser>(),
          loginUser: gh<_i34.LoginUser>(),
          recoverPassword: gh<_i37.RecoverPassword>(),
        ));
    gh.factory<_i45.NewTripCubit>(() => _i45.NewTripCubit(
          gh<_i41.UserCubit>(),
          gh<_i28.CreateTrip>(),
        ));
    gh.factory<_i46.TripsCubit>(() => _i46.TripsCubit(
          gh<_i32.ListenTrips>(),
          gh<_i41.UserCubit>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i47.RegisterModule {}
