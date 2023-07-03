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
import 'package:trip_planner/features/trips/domain/entities/trip.dart' as _i18;
import 'package:trip_planner/features/trips/domain/repositories/trips_repository.dart'
    as _i5;
import 'package:trip_planner/features/trips/domain/usecases/create_trip.dart'
    as _i10;
import 'package:trip_planner/features/trips/domain/usecases/listen_trips.dart'
    as _i11;
import 'package:trip_planner/features/trips/domain/usecases/save_trip.dart'
    as _i16;
import 'package:trip_planner/features/trips/presentation/cubit/new_trip/new_trip_cubit.dart'
    as _i21;
import 'package:trip_planner/features/trips/presentation/cubit/trip/cubit/trip_cubit.dart'
    as _i17;
import 'package:trip_planner/features/trips/presentation/cubit/trips/trips_cubit.dart'
    as _i22;
import 'package:trip_planner/features/user_account/data/datasources/user_data_source.dart'
    as _i7;
import 'package:trip_planner/features/user_account/data/repositories/user_repository_impl.dart'
    as _i9;
import 'package:trip_planner/features/user_account/domain/repositories/user_repository.dart'
    as _i8;
import 'package:trip_planner/features/user_account/domain/usecases/listen_user.dart'
    as _i12;
import 'package:trip_planner/features/user_account/domain/usecases/login_user.dart'
    as _i13;
import 'package:trip_planner/features/user_account/domain/usecases/recover_password.dart'
    as _i14;
import 'package:trip_planner/features/user_account/domain/usecases/register_user.dart'
    as _i15;
import 'package:trip_planner/features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i20;
import 'package:trip_planner/features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i19;

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
    gh.lazySingleton<_i11.ListenTrips>(
        () => _i11.ListenTrips(gh<_i5.TripsRepository>()));
    gh.lazySingleton<_i12.ListenUser>(
        () => _i12.ListenUser(gh<_i8.UserRepository>()));
    gh.lazySingleton<_i13.LoginUser>(
        () => _i13.LoginUser(gh<_i8.UserRepository>()));
    gh.lazySingleton<_i14.RecoverPassword>(
        () => _i14.RecoverPassword(gh<_i8.UserRepository>()));
    gh.lazySingleton<_i15.RegisterUser>(
        () => _i15.RegisterUser(gh<_i8.UserRepository>()));
    gh.lazySingleton<_i16.SaveTrip>(
        () => _i16.SaveTrip(gh<_i5.TripsRepository>()));
    gh.factoryParam<_i17.TripCubit, _i18.Trip, dynamic>((
      trip,
      _,
    ) =>
        _i17.TripCubit(
          trip: trip,
          saveTrip: gh<_i16.SaveTrip>(),
        ));
    gh.lazySingleton<_i19.UserCubit>(
        () => _i19.UserCubit(listenUserState: gh<_i12.ListenUser>()));
    gh.factory<_i20.LoginSignupCubit>(() => _i20.LoginSignupCubit(
          registerUser: gh<_i15.RegisterUser>(),
          loginUser: gh<_i13.LoginUser>(),
          recoverPassword: gh<_i14.RecoverPassword>(),
        ));
    gh.factory<_i21.NewTripCubit>(() => _i21.NewTripCubit(
          gh<_i19.UserCubit>(),
          gh<_i10.CreateTrip>(),
        ));
    gh.factory<_i22.TripsCubit>(() => _i22.TripsCubit(
          gh<_i11.ListenTrips>(),
          gh<_i19.UserCubit>(),
        ));
    return this;
  }
}
