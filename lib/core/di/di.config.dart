// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_bloc/flutter_bloc.dart' as _i22;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i9;
import '../bloc_observer.dart' as _i23;
import 'di.dart' as _i44;
import '../routes/app_router.dart' as _i3;
import '../../features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i4;
import '../../features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i6;
import '../../features/day_trips/domain/entities/day_trip.dart'
    as _i40;
import '../../features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i5;
import '../../features/day_trips/domain/usecases/create_day_trip.dart'
    as _i24;
import '../../features/day_trips/domain/usecases/delete_day_trip.dart'
    as _i7;
import '../../features/day_trips/domain/usecases/listen_day_trips.dart'
    as _i8;
import '../../features/day_trips/domain/usecases/update_day_trip.dart'
    as _i16;
import '../../features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i17;
import '../../features/day_trips/presentation/cubit/day_trip/cubit/day_trip_cubit.dart'
    as _i39;
import '../../features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i32;
import '../../features/trip_stops/data/datasources/trip_stops_data_source.dart'
    as _i10;
import '../../features/trip_stops/data/repositories/trip_stops_repository_impl.dart'
    as _i12;
import '../../features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i11;
import '../../features/trip_stops/domain/usecases/create_trip_stop.dart'
    as _i26;
import '../../features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i28;
import '../../features/trip_stops/presentation/cubit/cubit/new_trip_stop_cubit.dart'
    as _i33;
import '../../features/trips/data/datasources/trips_data_source.dart'
    as _i13;
import '../../features/trips/data/repositories/trips_repository_impl.dart'
    as _i15;
import '../../features/trips/domain/entities/trip.dart' as _i37;
import '../../features/trips/domain/repositories/trips_repository.dart'
    as _i14;
import '../../features/trips/domain/usecases/create_trip.dart'
    as _i25;
import '../../features/trips/domain/usecases/delete_trip.dart'
    as _i27;
import '../../features/trips/domain/usecases/listen_trips.dart'
    as _i29;
import '../../features/trips/domain/usecases/update_trip.dart'
    as _i18;
import '../../features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i42;
import '../../features/trips/presentation/cubit/trip/trip_cubit.dart'
    as _i36;
import '../../features/trips/presentation/cubit/trips/trips_cubit.dart'
    as _i43;
import '../../features/user_account/data/datasources/user_data_source.dart'
    as _i19;
import '../../features/user_account/data/repositories/user_repository_impl.dart'
    as _i21;
import '../../features/user_account/domain/repositories/user_repository.dart'
    as _i20;
import '../../features/user_account/domain/usecases/listen_user.dart'
    as _i30;
import '../../features/user_account/domain/usecases/login_user.dart'
    as _i31;
import '../../features/user_account/domain/usecases/recover_password.dart'
    as _i34;
import '../../features/user_account/domain/usecases/register_user.dart'
    as _i35;
import '../../features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i41;
import '../../features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i38;

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
    gh.lazySingleton<_i17.UpdateDayTripsIndexes>(
        () => _i17.UpdateDayTripsIndexes(gh<_i5.DayTripsRepository>()));
    gh.lazySingleton<_i18.UpdateTrip>(
        () => _i18.UpdateTrip(gh<_i14.TripsRepository>()));
    gh.lazySingleton<_i19.UserDataSource>(() => _i19.UserDataSourceImpl());
    gh.lazySingleton<_i20.UserRepository>(
        () => _i21.UserRepositoryImpl(gh<_i19.UserDataSource>()));
    gh.lazySingleton<_i22.BlocObserver>(
        () => _i23.SimpleBlocObserver(logger: gh<_i9.Logger>()));
    gh.lazySingleton<_i24.CreateDayTrip>(
        () => _i24.CreateDayTrip(gh<_i5.DayTripsRepository>()));
    gh.lazySingleton<_i25.CreateTrip>(
        () => _i25.CreateTrip(gh<_i14.TripsRepository>()));
    gh.lazySingleton<_i26.CreateTripStop>(
        () => _i26.CreateTripStop(gh<_i11.TripStopsRepository>()));
    gh.lazySingleton<_i27.DeleteTrip>(
        () => _i27.DeleteTrip(gh<_i14.TripsRepository>()));
    gh.lazySingleton<_i28.ListenTripStops>(
        () => _i28.ListenTripStops(gh<_i11.TripStopsRepository>()));
    gh.lazySingleton<_i29.ListenTrips>(
        () => _i29.ListenTrips(gh<_i14.TripsRepository>()));
    gh.lazySingleton<_i30.ListenUser>(
        () => _i30.ListenUser(gh<_i20.UserRepository>()));
    gh.lazySingleton<_i31.LoginUser>(
        () => _i31.LoginUser(gh<_i20.UserRepository>()));
    gh.factoryParam<_i32.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i32.NewDayTripCubit(
          createDayTrip: gh<_i24.CreateDayTrip>(),
          tripId: tripId,
        ));
    gh.factoryParam<_i33.NewTripStopCubit, String, String>((
      tripId,
      dayTripId,
    ) =>
        _i33.NewTripStopCubit(
          tripId: tripId,
          dayTripId: dayTripId,
          createTripStop: gh<_i26.CreateTripStop>(),
        ));
    gh.lazySingleton<_i34.RecoverPassword>(
        () => _i34.RecoverPassword(gh<_i20.UserRepository>()));
    gh.lazySingleton<_i35.RegisterUser>(
        () => _i35.RegisterUser(gh<_i20.UserRepository>()));
    gh.factoryParam<_i36.TripCubit, _i37.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i36.TripCubit(
          trip: trip,
          saveTrip: gh<_i18.UpdateTrip>(),
          deleteTrip: gh<_i27.DeleteTrip>(),
          listenDayTrips: gh<_i8.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i17.UpdateDayTripsIndexes>(),
        ));
    gh.lazySingleton<_i38.UserCubit>(
        () => _i38.UserCubit(listenUserState: gh<_i30.ListenUser>()));
    gh.factoryParam<_i39.DayTripCubit, _i37.Trip, _i40.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i39.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
          updateDayTrip: gh<_i16.UpdateDayTrip>(),
          deleteDayTrip: gh<_i7.DeleteDayTrip>(),
          listenTripStops: gh<_i28.ListenTripStops>(),
        ));
    gh.factory<_i41.LoginSignupCubit>(() => _i41.LoginSignupCubit(
          registerUser: gh<_i35.RegisterUser>(),
          loginUser: gh<_i31.LoginUser>(),
          recoverPassword: gh<_i34.RecoverPassword>(),
        ));
    gh.factory<_i42.NewTripCubit>(() => _i42.NewTripCubit(
          gh<_i38.UserCubit>(),
          gh<_i25.CreateTrip>(),
        ));
    gh.factory<_i43.TripsCubit>(() => _i43.TripsCubit(
          gh<_i29.ListenTrips>(),
          gh<_i38.UserCubit>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i44.RegisterModule {}
