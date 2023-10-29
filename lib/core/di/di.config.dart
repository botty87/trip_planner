// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_bloc/flutter_bloc.dart' as _i26;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i9;

import '../../features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i4;
import '../../features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i6;
import '../../features/day_trips/domain/entities/day_trip.dart' as _i46;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i5;
import '../../features/day_trips/domain/usecases/create_day_trip.dart' as _i28;
import '../../features/day_trips/domain/usecases/delete_day_trip.dart' as _i7;
import '../../features/day_trips/domain/usecases/listen_day_trips.dart' as _i8;
import '../../features/day_trips/domain/usecases/update_day_trip.dart' as _i16;
import '../../features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i17;
import '../../features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i18;
import '../../features/day_trips/presentation/cubit/day_trip/cubit/day_trip_cubit.dart'
    as _i45;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i37;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i10;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i12;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i11;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i30;
import '../../features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i32;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i33;
import '../../features/trip_stops/domain/usecases/trip_stop_done.dart' as _i43;
import '../../features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i19;
import '../../features/trip_stops/domain/usecases/update_trip_stop_note.dart'
    as _i21;
import '../../features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i22;
import '../../features/trip_stops/presentation/cubit/new_trip_stop/new_trip_stop_cubit.dart'
    as _i38;
import '../../features/trip_stops/presentation/cubit/trip_stop/trip_stop_cubit.dart'
    as _i49;
import '../../features/trips/data/datasources/trips_data_source.dart' as _i13;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i15;
import '../../features/trips/domain/entities/trip.dart' as _i42;
import '../../features/trips/domain/repositories/trips_repository.dart' as _i14;
import '../../features/trips/domain/usecases/create_trip.dart' as _i29;
import '../../features/trips/domain/usecases/delete_trip.dart' as _i31;
import '../../features/trips/domain/usecases/listen_trips.dart' as _i34;
import '../../features/trips/domain/usecases/update_trip.dart' as _i20;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i48;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart' as _i41;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart' as _i50;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i23;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i25;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i24;
import '../../features/user_account/domain/usecases/listen_user.dart' as _i35;
import '../../features/user_account/domain/usecases/login_user.dart' as _i36;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i39;
import '../../features/user_account/domain/usecases/register_user.dart' as _i40;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i47;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i44;
import '../bloc_observer.dart' as _i27;
import '../routes/app_router.dart' as _i3;
import 'di.dart' as _i51;

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
    gh.lazySingleton<_i21.UpdateTripStopNote>(
        () => _i21.UpdateTripStopNote(gh<_i11.TripStopsRepository>()));
    gh.lazySingleton<_i22.UpdateTripStopsIndexes>(
        () => _i22.UpdateTripStopsIndexes(gh<_i11.TripStopsRepository>()));
    gh.lazySingleton<_i23.UserDataSource>(() => _i23.UserDataSourceImpl());
    gh.lazySingleton<_i24.UserRepository>(
        () => _i25.UserRepositoryImpl(gh<_i23.UserDataSource>()));
    gh.lazySingleton<_i26.BlocObserver>(
        () => _i27.SimpleBlocObserver(logger: gh<_i9.Logger>()));
    gh.lazySingleton<_i28.CreateDayTrip>(
        () => _i28.CreateDayTrip(gh<_i5.DayTripsRepository>()));
    gh.lazySingleton<_i29.CreateTrip>(
        () => _i29.CreateTrip(gh<_i14.TripsRepository>()));
    gh.lazySingleton<_i30.CreateTripStop>(
        () => _i30.CreateTripStop(gh<_i11.TripStopsRepository>()));
    gh.lazySingleton<_i31.DeleteTrip>(
        () => _i31.DeleteTrip(gh<_i14.TripsRepository>()));
    gh.lazySingleton<_i32.DeleteTripStop>(
        () => _i32.DeleteTripStop(gh<_i11.TripStopsRepository>()));
    gh.lazySingleton<_i33.ListenTripStops>(
        () => _i33.ListenTripStops(gh<_i11.TripStopsRepository>()));
    gh.lazySingleton<_i34.ListenTrips>(
        () => _i34.ListenTrips(gh<_i14.TripsRepository>()));
    gh.lazySingleton<_i35.ListenUser>(
        () => _i35.ListenUser(gh<_i24.UserRepository>()));
    gh.lazySingleton<_i36.LoginUser>(
        () => _i36.LoginUser(gh<_i24.UserRepository>()));
    gh.factoryParam<_i37.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i37.NewDayTripCubit(
          createDayTrip: gh<_i28.CreateDayTrip>(),
          tripId: tripId,
        ));
    gh.factoryParam<_i38.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i38.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i30.CreateTripStop>(),
        ));
    gh.lazySingleton<_i39.RecoverPassword>(
        () => _i39.RecoverPassword(gh<_i24.UserRepository>()));
    gh.lazySingleton<_i40.RegisterUser>(
        () => _i40.RegisterUser(gh<_i24.UserRepository>()));
    gh.factoryParam<_i41.TripCubit, _i42.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i41.TripCubit(
          trip: trip,
          saveTrip: gh<_i20.UpdateTrip>(),
          deleteTrip: gh<_i31.DeleteTrip>(),
          listenDayTrips: gh<_i8.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i18.UpdateDayTripsIndexes>(),
        ));
    gh.lazySingleton<_i43.TripStopDone>(
        () => _i43.TripStopDone(gh<_i11.TripStopsRepository>()));
    gh.lazySingleton<_i44.UserCubit>(
        () => _i44.UserCubit(listenUserState: gh<_i35.ListenUser>()));
    gh.factoryParam<_i45.DayTripCubit, _i42.Trip, _i46.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i45.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i16.UpdateDayTrip>(),
          deleteDayTrip: gh<_i7.DeleteDayTrip>(),
          listenTripStops: gh<_i33.ListenTripStops>(),
          updateDayTripStartTime: gh<_i17.UpdateDayTripStartTime>(),
          updateDayTripsIndexes: gh<_i22.UpdateTripStopsIndexes>(),
          updateTravelTime: gh<_i19.UpdateTravelTime>(),
        ));
    gh.factory<_i47.LoginSignupCubit>(() => _i47.LoginSignupCubit(
          registerUser: gh<_i40.RegisterUser>(),
          loginUser: gh<_i36.LoginUser>(),
          recoverPassword: gh<_i39.RecoverPassword>(),
        ));
    gh.factory<_i48.NewTripCubit>(() => _i48.NewTripCubit(
          gh<_i44.UserCubit>(),
          gh<_i29.CreateTrip>(),
        ));
    gh.factoryParam<_i49.TripStopCubit, _i49.TripStopCubitParams, dynamic>((
      params,
      _,
    ) =>
        _i49.TripStopCubit(
          params: params,
          tripStopDone: gh<_i43.TripStopDone>(),
          updateTripStopNote: gh<_i21.UpdateTripStopNote>(),
          deleteTripStop: gh<_i32.DeleteTripStop>(),
        ));
    gh.factory<_i50.TripsCubit>(() => _i50.TripsCubit(
          gh<_i34.ListenTrips>(),
          gh<_i44.UserCubit>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i51.RegisterModule {}
