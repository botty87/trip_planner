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
import 'package:trip_planner/features/user_account/data/datasources/user_data_source.dart'
    as _i4;
import 'package:trip_planner/features/user_account/data/repositories/user_repository_impl.dart'
    as _i6;
import 'package:trip_planner/features/user_account/domain/repositories/user_repository.dart'
    as _i5;
import 'package:trip_planner/features/user_account/domain/usecases/listen_user.dart'
    as _i7;
import 'package:trip_planner/features/user_account/domain/usecases/register_user.dart'
    as _i8;
import 'package:trip_planner/features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart'
    as _i10;
import 'package:trip_planner/features/user_account/presentation/cubit/user/user_cubit.dart'
    as _i9;

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
    gh.lazySingleton<_i4.UserDataSource>(() => _i4.UserDataSourceImpl());
    gh.lazySingleton<_i5.UserRepository>(
        () => _i6.UserRepositoryImpl(gh<_i4.UserDataSource>()));
    gh.lazySingleton<_i7.ListenUser>(
        () => _i7.ListenUser(gh<_i5.UserRepository>()));
    gh.lazySingleton<_i8.RegisterUser>(
        () => _i8.RegisterUser(gh<_i5.UserRepository>()));
    gh.lazySingleton<_i9.UserCubit>(
        () => _i9.UserCubit(listenUser: gh<_i7.ListenUser>()));
    gh.factory<_i10.LoginSignupCubit>(
        () => _i10.LoginSignupCubit(gh<_i8.RegisterUser>()));
    return this;
  }
}
