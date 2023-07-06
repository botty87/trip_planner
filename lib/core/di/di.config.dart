// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_bloc/flutter_bloc.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i4;
import 'package:trip_planner/core/bloc_observer.dart' as _i13;
import 'package:trip_planner/core/di/di.dart' as _i27;
import 'package:trip_planner/core/routes/app_router.dart' as _i3;
import 'package:trip_planner/features/trips/data/datasources/trips_data_source.dart'
    as _i6;
import 'package:trip_planner/features/trips/data/repositories/trips_repository_impl.dart'
    as _i8;
import 'package:trip_planner/features/trips/domain/entities/trip.dart' as _i22;
import 'package:trip_planner/features/trips/domain/repositories/trips_repository.dart'
    as _i7;
import 'package:trip_planner/features/trips/domain/usecases/create_trip.dart'
    as _i14;
import 'package:trip_planner/features/trips/domain/usecases/listen_trips.dart'
    as _i15;
import 'package:trip_planner/features/trips/domain/usecases/save_trip.dart'
    as _i20;
import 'package:trip_planner/features/trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i5;
import 'package:trip_planner/features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i25;
import 'package:trip_planner/features/trips/presentation/cubit/trip/trip_cubit.dart'
    as _i21;
import 'package:trip_planner/features/trips/presentation/cubit/trips/trips_cubit.dart'
    as _i26;
import 'package:trip_planner/features/user_account/data/datasources/user_data_source.dart'
    as _i9;
import 'package:trip_planner/features/user_account/data/repositories/user_repository_impl.dart'
    as _i11;
import 'package:trip_planner/features/user_account/domain/repositories/user_repository.dart'
    as _i10;
import 'package:trip_planner/features/user_account/domain/usecases/listen_user.dart'
    as _i16;
import 'package:trip_planner/features/user_account/domain/usecases/login_user.dart'
    as _i17;
import 'package:trip_planner/features/user_account/domain/usecases/recover_password.dart'
    as _i18;
import 'package:trip_planner/features/user_account/domain/usecases/register_user.dart'
    as _i19;
import 'package:trip_planner/features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i24;
import 'package:trip_planner/features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i23;

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
    gh.lazySingleton<_i4.Logger>(() => registerModule.logger);
    gh.factory<_i5.NewDayTripCubit>(() => _i5.NewDayTripCubit());
    gh.lazySingleton<_i6.TripsDataSource>(() => _i6.TripsDataSourceImpl());
    gh.lazySingleton<_i7.TripsRepository>(() =>
        _i8.TripsRepositoryImpl(tripsDataSource: gh<_i6.TripsDataSource>()));
    gh.lazySingleton<_i9.UserDataSource>(() => _i9.UserDataSourceImpl());
    gh.lazySingleton<_i10.UserRepository>(
        () => _i11.UserRepositoryImpl(gh<_i9.UserDataSource>()));
    gh.lazySingleton<_i12.BlocObserver>(
        () => _i13.SimpleBlocObserver(logger: gh<_i4.Logger>()));
    gh.lazySingleton<_i14.CreateTrip>(
        () => _i14.CreateTrip(gh<_i7.TripsRepository>()));
    gh.lazySingleton<_i15.ListenTrips>(
        () => _i15.ListenTrips(gh<_i7.TripsRepository>()));
    gh.lazySingleton<_i16.ListenUser>(
        () => _i16.ListenUser(gh<_i10.UserRepository>()));
    gh.lazySingleton<_i17.LoginUser>(
        () => _i17.LoginUser(gh<_i10.UserRepository>()));
    gh.lazySingleton<_i18.RecoverPassword>(
        () => _i18.RecoverPassword(gh<_i10.UserRepository>()));
    gh.lazySingleton<_i19.RegisterUser>(
        () => _i19.RegisterUser(gh<_i10.UserRepository>()));
    gh.lazySingleton<_i20.SaveTrip>(
        () => _i20.SaveTrip(gh<_i7.TripsRepository>()));
    gh.factoryParam<_i21.TripCubit, _i22.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i21.TripCubit(
          trip: trip,
          saveTrip: gh<_i20.SaveTrip>(),
        ));
    gh.lazySingleton<_i23.UserCubit>(
        () => _i23.UserCubit(listenUserState: gh<_i16.ListenUser>()));
    gh.factory<_i24.LoginSignupCubit>(() => _i24.LoginSignupCubit(
          registerUser: gh<_i19.RegisterUser>(),
          loginUser: gh<_i17.LoginUser>(),
          recoverPassword: gh<_i18.RecoverPassword>(),
        ));
    gh.factory<_i25.NewTripCubit>(() => _i25.NewTripCubit(
          gh<_i23.UserCubit>(),
          gh<_i14.CreateTrip>(),
        ));
    gh.factory<_i26.TripsCubit>(() => _i26.TripsCubit(
          gh<_i15.ListenTrips>(),
          gh<_i23.UserCubit>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i27.RegisterModule {}
