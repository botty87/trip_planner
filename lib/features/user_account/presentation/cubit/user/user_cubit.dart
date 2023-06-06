import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/core/usecases/usecase.dart';

import '../../../domain/entities/user.dart';
import '../../../domain/usecases/listen_user.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

@lazySingleton
class UserCubit extends Cubit<UserState> {
  final ListenUser listenUserState;

  UserCubit({required this.listenUserState}) : super(const UserState.loading()) {
    listenUserState(const NoParams()).listen((result) {
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
