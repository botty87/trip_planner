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
    as _i4;
import 'package:trip_planner/features/trips/data/repositories/trips_repository_impl.dart'
    as _i6;
import 'package:trip_planner/features/trips/domain/repositories/trips_repository.dart'
    as _i5;
import 'package:trip_planner/features/trips/domain/usecases/create_trip.dart'
    as _i10;
import 'package:trip_planner/features/trips/presentation/cubit/new_trip_cubit.dart'
    as _i17;
import 'package:trip_planner/features/user_account/data/datasources/user_data_source.dart'
    as _i7;
import 'package:trip_planner/features/user_account/data/repositories/user_repository_impl.dart'
    as _i9;
import 'package:trip_planner/features/user_account/domain/repositories/user_repository.dart'
    as _i8;
import 'package:trip_planner/features/user_account/domain/usecases/listen_user.dart'
    as _i11;
import 'package:trip_planner/features/user_account/domain/usecases/login_user.dart'
    as _i12;
import 'package:trip_planner/features/user_account/domain/usecases/recover_password.dart'
    as _i13;
import 'package:trip_planner/features/user_account/domain/usecases/register_user.dart'
    as _i14;
import 'package:trip_planner/features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i16;
import 'package:trip_planner/features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i15;

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
    gh.lazySingleton<_i4.TripsDataSource>(() => _i4.TripsDataSourceImpl());
    gh.lazySingleton<_i5.TripsRepository>(() =>
        _i6.TripsRepositoryImpl(tripsDataSource: gh<_i4.TripsDataSource>()));
    gh.lazySingleton<_i7.UserDataSource>(() => _i7.UserDataSourceImpl());
    gh.lazySingleton<_i8.UserRepository>(
        () => _i9.UserRepositoryImpl(gh<_i7.UserDataSource>()));
    gh.lazySingleton<_i10.CreateTrip>(
        () => _i10.CreateTrip(gh<_i5.TripsRepository>()));
    gh.lazySingleton<_i11.ListenUser>(
        () => _i11.ListenUser(gh<_i8.UserRepository>()));
    gh.lazySingleton<_i12.LoginUser>(
        () => _i12.LoginUser(gh<_i8.UserRepository>()));
    gh.lazySingleton<_i13.RecoverPassword>(
        () => _i13.RecoverPassword(gh<_i8.UserRepository>()));
    gh.lazySingleton<_i14.RegisterUser>(
        () => _i14.RegisterUser(gh<_i8.UserRepository>()));
    gh.lazySingleton<_i15.UserCubit>(
        () => _i15.UserCubit(listenUserState: gh<_i11.ListenUser>()));
    gh.factory<_i16.LoginSignupCubit>(() => _i16.LoginSignupCubit(
          gh<_i14.RegisterUser>(),
          gh<_i12.LoginUser>(),
          gh<_i13.RecoverPassword>(),
        ));
    gh.factory<_i17.NewTripCubit>(() => _i17.NewTripCubit(
          gh<_i15.UserCubit>(),
          gh<_i10.CreateTrip>(),
        ));
    return this;
  }
}
