import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/usecases/usecase.dart';
import '../../../../domain/entities/user.dart';
import '../../../../domain/usecases/logout_user.dart';

part 'account_cubit.freezed.dart';
part 'account_state.dart';

@injectable
class AccountCubit extends Cubit<AccountState> {
  final LogoutUser _logoutUser;

  AccountCubit({@factoryParam required user, required LogoutUser logoutUser})
      : _logoutUser = logoutUser,
        super(AccountState.normal(user: user));

  logOut() async {
    final result = await _logoutUser(const NoParams());

    result.fold(
      (failure) {
        emit(AccountState.error(
          user: state.user,
          message: failure.getAuthenticationErrorMessage(),
        ));
      },
      (_) => emit(AccountState.normal(user: state.user)),
    );
  }
}
