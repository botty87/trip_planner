// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_bloc/flutter_bloc.dart' as _i20;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i11;
import 'package:trip_planner/core/bloc_observer.dart' as _i21;
import 'package:trip_planner/core/di/di.dart' as _i36;
import 'package:trip_planner/core/routes/app_router.dart' as _i3;
import 'package:trip_planner/features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i7;
import 'package:trip_planner/features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i9;
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart'
    as _i6;
import 'package:trip_planner/features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i8;
import 'package:trip_planner/features/day_trips/domain/usecases/create_day_trip.dart'
    as _i22;
import 'package:trip_planner/features/day_trips/domain/usecases/listen_day_trips.dart'
    as _i10;
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trips_indexes.dart'
    as _i15;
import 'package:trip_planner/features/day_trips/presentation/cubit/day_trip/cubit/day_trip_cubit.dart'
    as _i4;
import 'package:trip_planner/features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i28;
import 'package:trip_planner/features/trips/data/datasources/trips_data_source.dart'
    as _i12;
import 'package:trip_planner/features/trips/data/repositories/trips_repository_impl.dart'
    as _i14;
import 'package:trip_planner/features/trips/domain/entities/trip.dart' as _i5;
import 'package:trip_planner/features/trips/domain/repositories/trips_repository.dart'
    as _i13;
import 'package:trip_planner/features/trips/domain/usecases/create_trip.dart'
    as _i23;
import 'package:trip_planner/features/trips/domain/usecases/delete_trip.dart'
    as _i24;
import 'package:trip_planner/features/trips/domain/usecases/listen_trips.dart'
    as _i25;
import 'package:trip_planner/features/trips/domain/usecases/update_trip.dart'
    as _i16;
import 'package:trip_planner/features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i34;
import 'package:trip_planner/features/trips/presentation/cubit/trip/trip_cubit.dart'
    as _i31;
import 'package:trip_planner/features/trips/presentation/cubit/trips/trips_cubit.dart'
    as _i35;
import 'package:trip_planner/features/user_account/data/datasources/user_data_source.dart'
    as _i17;
import 'package:trip_planner/features/user_account/data/repositories/user_repository_impl.dart'
    as _i19;
import 'package:trip_planner/features/user_account/domain/repositories/user_repository.dart'
    as _i18;
import 'package:trip_planner/features/user_account/domain/usecases/listen_user.dart'
    as _i26;
import 'package:trip_planner/features/user_account/domain/usecases/login_user.dart'
    as _i27;
import 'package:trip_planner/features/user_account/domain/usecases/recover_password.dart'
    as _i29;
import 'package:trip_planner/features/user_account/domain/usecases/register_user.dart'
    as _i30;
import 'package:trip_planner/features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i33;
import 'package:trip_planner/features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i32;

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
    gh.factoryParam<_i4.DayTripCubit, _i5.Trip, _i6.DayTrip>((
      trip,
      dayTrip,
    ) =>
        _i4.DayTripCubit(
          trip: trip,
          dayTrip: dayTrip,
        ));
    gh.lazySingleton<_i7.DayTripsDataSource>(
        () => _i7.DayTripsDataSourceImpl());
    gh.lazySingleton<_i8.DayTripsRepository>(
        () => _i9.DayTripsRepositoryImpl(gh<_i7.DayTripsDataSource>()));
    gh.lazySingleton<_i10.ListenDayTrips>(
        () => _i10.ListenDayTrips(gh<_i8.DayTripsRepository>()));
    gh.lazySingleton<_i11.Logger>(() => registerModule.logger);
    gh.lazySingleton<_i12.TripsDataSource>(() => _i12.TripsDataSourceImpl());
    gh.lazySingleton<_i13.TripsRepository>(() =>
        _i14.TripsRepositoryImpl(tripsDataSource: gh<_i12.TripsDataSource>()));
    gh.lazySingleton<_i15.UpdateDayTripsIndexes>(
        () => _i15.UpdateDayTripsIndexes(gh<_i8.DayTripsRepository>()));
    gh.lazySingleton<_i16.UpdateTrip>(
        () => _i16.UpdateTrip(gh<_i13.TripsRepository>()));
    gh.lazySingleton<_i17.UserDataSource>(() => _i17.UserDataSourceImpl());
    gh.lazySingleton<_i18.UserRepository>(
        () => _i19.UserRepositoryImpl(gh<_i17.UserDataSource>()));
    gh.lazySingleton<_i20.BlocObserver>(
        () => _i21.SimpleBlocObserver(logger: gh<_i11.Logger>()));
    gh.lazySingleton<_i22.CreateDayTrip>(
        () => _i22.CreateDayTrip(gh<_i8.DayTripsRepository>()));
    gh.lazySingleton<_i23.CreateTrip>(
        () => _i23.CreateTrip(gh<_i13.TripsRepository>()));
    gh.lazySingleton<_i24.DeleteTrip>(
        () => _i24.DeleteTrip(gh<_i13.TripsRepository>()));
    gh.lazySingleton<_i25.ListenTrips>(
        () => _i25.ListenTrips(gh<_i13.TripsRepository>()));
    gh.lazySingleton<_i26.ListenUser>(
        () => _i26.ListenUser(gh<_i18.UserRepository>()));
    gh.lazySingleton<_i27.LoginUser>(
        () => _i27.LoginUser(gh<_i18.UserRepository>()));
    gh.factoryParam<_i28.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i28.NewDayTripCubit(
          createDayTrip: gh<_i22.CreateDayTrip>(),
          tripId: tripId,
        ));
    gh.lazySingleton<_i29.RecoverPassword>(
        () => _i29.RecoverPassword(gh<_i18.UserRepository>()));
    gh.lazySingleton<_i30.RegisterUser>(
        () => _i30.RegisterUser(gh<_i18.UserRepository>()));
    gh.factoryParam<_i31.TripCubit, _i5.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i31.TripCubit(
          trip: trip,
          saveTrip: gh<_i16.UpdateTrip>(),
          deleteTrip: gh<_i24.DeleteTrip>(),
          listenDayTrips: gh<_i10.ListenDayTrips>(),
          updateDayTripsIndexes: gh<_i15.UpdateDayTripsIndexes>(),
        ));
    gh.lazySingleton<_i32.UserCubit>(
        () => _i32.UserCubit(listenUserState: gh<_i26.ListenUser>()));
    gh.factory<_i33.LoginSignupCubit>(() => _i33.LoginSignupCubit(
          registerUser: gh<_i30.RegisterUser>(),
          loginUser: gh<_i27.LoginUser>(),
          recoverPassword: gh<_i29.RecoverPassword>(),
        ));
    gh.factory<_i34.NewTripCubit>(() => _i34.NewTripCubit(
          gh<_i32.UserCubit>(),
          gh<_i23.CreateTrip>(),
        ));
    gh.factory<_i35.TripsCubit>(() => _i35.TripsCubit(
          gh<_i25.ListenTrips>(),
          gh<_i32.UserCubit>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i36.RegisterModule {}
