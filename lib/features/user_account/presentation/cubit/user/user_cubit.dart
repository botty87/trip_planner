import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/usecases/usecase.dart';

import '../../../domain/entities/user.dart';
import '../../../domain/usecases/listen_user.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

@lazySingleton
class UserCubit extends Cubit<UserState> {
  final ListenUser _listenUserState;

  UserCubit({required ListenUser listenUserState})
      : _listenUserState = listenUserState,
        super(const UserState.loading()) {
    _listenUserState(const NoParams()).listen((result) {
      result.fold(
        (failure) => emit(const UserState.error()),
        (user) {
          if (user == null) {
            emit(const UserState.loggedOut());
          } else {
            emit(UserState.loggedIn(user: user));
          }
        },
      );
    });
  }
}
