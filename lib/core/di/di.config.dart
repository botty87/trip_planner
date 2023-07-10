// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_bloc/flutter_bloc.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i7;
import 'package:trip_planner/core/bloc_observer.dart' as _i15;
import 'package:trip_planner/core/di/di.dart' as _i32;
import 'package:trip_planner/core/routes/app_router.dart' as _i3;
import 'package:trip_planner/features/day_trips/data/datasources/day_trips_data_source.dart'
    as _i4;
import 'package:trip_planner/features/day_trips/data/repositories/day_trips_repository_impl.dart'
    as _i6;
import 'package:trip_planner/features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i5;
import 'package:trip_planner/features/day_trips/domain/usecases/create_day_trip.dart'
    as _i16;
import 'package:trip_planner/features/day_trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i22;
import 'package:trip_planner/features/trips/data/datasources/trips_data_source.dart'
    as _i8;
import 'package:trip_planner/features/trips/data/repositories/trips_repository_impl.dart'
    as _i10;
import 'package:trip_planner/features/trips/domain/entities/trip.dart' as _i27;
import 'package:trip_planner/features/trips/domain/repositories/trips_repository.dart'
    as _i9;
import 'package:trip_planner/features/trips/domain/usecases/create_trip.dart'
    as _i17;
import 'package:trip_planner/features/trips/domain/usecases/delete_trip.dart'
    as _i18;
import 'package:trip_planner/features/trips/domain/usecases/listen_trips.dart'
    as _i19;
import 'package:trip_planner/features/trips/domain/usecases/save_trip.dart'
    as _i25;
import 'package:trip_planner/features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i30;
import 'package:trip_planner/features/trips/presentation/cubit/trip/trip_cubit.dart'
    as _i26;
import 'package:trip_planner/features/trips/presentation/cubit/trips/trips_cubit.dart'
    as _i31;
import 'package:trip_planner/features/user_account/data/datasources/user_data_source.dart'
    as _i11;
import 'package:trip_planner/features/user_account/data/repositories/user_repository_impl.dart'
    as _i13;
import 'package:trip_planner/features/user_account/domain/repositories/user_repository.dart'
    as _i12;
import 'package:trip_planner/features/user_account/domain/usecases/listen_user.dart'
    as _i20;
import 'package:trip_planner/features/user_account/domain/usecases/login_user.dart'
    as _i21;
import 'package:trip_planner/features/user_account/domain/usecases/recover_password.dart'
    as _i23;
import 'package:trip_planner/features/user_account/domain/usecases/register_user.dart'
    as _i24;
import 'package:trip_planner/features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i29;
import 'package:trip_planner/features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i28;

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
    gh.lazySingleton<_i7.Logger>(() => registerModule.logger);
    gh.lazySingleton<_i8.TripsDataSource>(() => _i8.TripsDataSourceImpl());
    gh.lazySingleton<_i9.TripsRepository>(() =>
        _i10.TripsRepositoryImpl(tripsDataSource: gh<_i8.TripsDataSource>()));
    gh.lazySingleton<_i11.UserDataSource>(() => _i11.UserDataSourceImpl());
    gh.lazySingleton<_i12.UserRepository>(
        () => _i13.UserRepositoryImpl(gh<_i11.UserDataSource>()));
    gh.lazySingleton<_i14.BlocObserver>(
        () => _i15.SimpleBlocObserver(logger: gh<_i7.Logger>()));
    gh.lazySingleton<_i16.CreateDayTrip>(
        () => _i16.CreateDayTrip(gh<_i5.DayTripsRepository>()));
    gh.lazySingleton<_i17.CreateTrip>(
        () => _i17.CreateTrip(gh<_i9.TripsRepository>()));
    gh.lazySingleton<_i18.DeleteTrip>(
        () => _i18.DeleteTrip(gh<_i9.TripsRepository>()));
    gh.lazySingleton<_i19.ListenTrips>(
        () => _i19.ListenTrips(gh<_i9.TripsRepository>()));
    gh.lazySingleton<_i20.ListenUser>(
        () => _i20.ListenUser(gh<_i12.UserRepository>()));
    gh.lazySingleton<_i21.LoginUser>(
        () => _i21.LoginUser(gh<_i12.UserRepository>()));
    gh.factoryParam<_i22.NewDayTripCubit, String, dynamic>((
      tripId,
      _,
    ) =>
        _i22.NewDayTripCubit(
          createDayTrip: gh<_i16.CreateDayTrip>(),
          tripId: tripId,
        ));
    gh.lazySingleton<_i23.RecoverPassword>(
        () => _i23.RecoverPassword(gh<_i12.UserRepository>()));
    gh.lazySingleton<_i24.RegisterUser>(
        () => _i24.RegisterUser(gh<_i12.UserRepository>()));
    gh.lazySingleton<_i25.SaveTrip>(
        () => _i25.SaveTrip(gh<_i9.TripsRepository>()));
    gh.factoryParam<_i26.TripCubit, _i27.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i26.TripCubit(
          trip: trip,
          saveTrip: gh<_i25.SaveTrip>(),
          deleteTrip: gh<_i18.DeleteTrip>(),
        ));
    gh.lazySingleton<_i28.UserCubit>(
        () => _i28.UserCubit(listenUserState: gh<_i20.ListenUser>()));
    gh.factory<_i29.LoginSignupCubit>(() => _i29.LoginSignupCubit(
          registerUser: gh<_i24.RegisterUser>(),
          loginUser: gh<_i21.LoginUser>(),
          recoverPassword: gh<_i23.RecoverPassword>(),
        ));
    gh.factory<_i30.NewTripCubit>(() => _i30.NewTripCubit(
          gh<_i28.UserCubit>(),
          gh<_i17.CreateTrip>(),
        ));
    gh.factory<_i31.TripsCubit>(() => _i31.TripsCubit(
          gh<_i19.ListenTrips>(),
          gh<_i28.UserCubit>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i32.RegisterModule {}
