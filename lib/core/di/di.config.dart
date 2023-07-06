// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:trip_planner/core/routes/app_router.dart' as _i3;
import 'package:trip_planner/features/trips/data/datasources/trips_data_source.dart'
    as _i5;
import 'package:trip_planner/features/trips/data/repositories/trips_repository_impl.dart'
    as _i7;
import 'package:trip_planner/features/trips/domain/entities/trip.dart' as _i19;
import 'package:trip_planner/features/trips/domain/repositories/trips_repository.dart'
    as _i6;
import 'package:trip_planner/features/trips/domain/usecases/create_trip.dart'
    as _i11;
import 'package:trip_planner/features/trips/domain/usecases/listen_trips.dart'
    as _i12;
import 'package:trip_planner/features/trips/domain/usecases/save_trip.dart'
    as _i17;
import 'package:trip_planner/features/trips/presentation/cubit/new_day_trip/new_day_trip_cubit.dart'
    as _i4;
import 'package:trip_planner/features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i22;
import 'package:trip_planner/features/trips/presentation/cubit/trip/trip_cubit.dart'
    as _i18;
import 'package:trip_planner/features/trips/presentation/cubit/trips/trips_cubit.dart'
    as _i23;
import 'package:trip_planner/features/user_account/data/datasources/user_data_source.dart'
    as _i8;
import 'package:trip_planner/features/user_account/data/repositories/user_repository_impl.dart'
    as _i10;
import 'package:trip_planner/features/user_account/domain/repositories/user_repository.dart'
    as _i9;
import 'package:trip_planner/features/user_account/domain/usecases/listen_user.dart'
    as _i13;
import 'package:trip_planner/features/user_account/domain/usecases/login_user.dart'
    as _i14;
import 'package:trip_planner/features/user_account/domain/usecases/recover_password.dart'
    as _i15;
import 'package:trip_planner/features/user_account/domain/usecases/register_user.dart'
    as _i16;
import 'package:trip_planner/features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i21;
import 'package:trip_planner/features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i20;

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
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.factory<_i4.NewDayTripCubit>(() => _i4.NewDayTripCubit());
    gh.lazySingleton<_i5.TripsDataSource>(() => _i5.TripsDataSourceImpl());
    gh.lazySingleton<_i6.TripsRepository>(() =>
        _i7.TripsRepositoryImpl(tripsDataSource: gh<_i5.TripsDataSource>()));
    gh.lazySingleton<_i8.UserDataSource>(() => _i8.UserDataSourceImpl());
    gh.lazySingleton<_i9.UserRepository>(
        () => _i10.UserRepositoryImpl(gh<_i8.UserDataSource>()));
    gh.lazySingleton<_i11.CreateTrip>(
        () => _i11.CreateTrip(gh<_i6.TripsRepository>()));
    gh.lazySingleton<_i12.ListenTrips>(
        () => _i12.ListenTrips(gh<_i6.TripsRepository>()));
    gh.lazySingleton<_i13.ListenUser>(
        () => _i13.ListenUser(gh<_i9.UserRepository>()));
    gh.lazySingleton<_i14.LoginUser>(
        () => _i14.LoginUser(gh<_i9.UserRepository>()));
    gh.lazySingleton<_i15.RecoverPassword>(
        () => _i15.RecoverPassword(gh<_i9.UserRepository>()));
    gh.lazySingleton<_i16.RegisterUser>(
        () => _i16.RegisterUser(gh<_i9.UserRepository>()));
    gh.lazySingleton<_i17.SaveTrip>(
        () => _i17.SaveTrip(gh<_i6.TripsRepository>()));
    gh.factoryParam<_i18.TripCubit, _i19.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i18.TripCubit(
          trip: trip,
          saveTrip: gh<_i17.SaveTrip>(),
        ));
    gh.lazySingleton<_i20.UserCubit>(
        () => _i20.UserCubit(listenUserState: gh<_i13.ListenUser>()));
    gh.factory<_i21.LoginSignupCubit>(() => _i21.LoginSignupCubit(
          registerUser: gh<_i16.RegisterUser>(),
          loginUser: gh<_i14.LoginUser>(),
          recoverPassword: gh<_i15.RecoverPassword>(),
        ));
    gh.factory<_i22.NewTripCubit>(() => _i22.NewTripCubit(
          gh<_i20.UserCubit>(),
          gh<_i11.CreateTrip>(),
        ));
    gh.factory<_i23.TripsCubit>(() => _i23.TripsCubit(
          gh<_i12.ListenTrips>(),
          gh<_i20.UserCubit>(),
        ));
    return this;
  }
}
