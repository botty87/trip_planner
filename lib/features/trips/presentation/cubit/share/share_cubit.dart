import 'package:easy_localization/easy_localization.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../user_account/domain/usecases/get_users_names.dart';
import '../../../domain/usecases/add_user_for_share.dart';
import '../../../errors/trips_failure.dart';

part 'share_cubit.freezed.dart';
part 'share_state.dart';

@injectable
class ShareCubit extends Cubit<ShareState> {
  final AddUserForShare _addUserForShare;
  final GetUsersNames _getUsersNames;

  final String _tripId;
  final String _userEmail;

  ShareCubit({
    @factoryParam required ShareCubitParams params,
    required AddUserForShare addUserForShare,
    required GetUsersNames getUsersNames,
  })  : _tripId = params.tripId,
        _userEmail = params.userEmail,
        _addUserForShare = addUserForShare,
        _getUsersNames = getUsersNames,
        super(const ShareState.initial());

  void onUserEmailQueryChanged(String value) {
    emit(state.copyWith(userEmailQuery: value));
  }

  void addUser() {
    final email = state.userEmailQuery.trim();

    if (email.isEmpty) {
      emit(ShareState.error(
        sharedUsers: state.sharedUsers,
        userEmailQuery: state.userEmailQuery,
        errorMessage: LocaleKeys.emailEmpty.tr(),
      ));
      return;
    } else if (email == _userEmail) {
      emit(ShareState.error(
        sharedUsers: state.sharedUsers,
        userEmailQuery: state.userEmailQuery,
        errorMessage: LocaleKeys.cannotShareWithYourself.tr(),
      ));
      return;
    }

    _addUserForShare(AddUserForShareParams(tripId: _tripId, email: email)).then((result) {
      result.fold(
        (failure) => _foldFailure(failure),
        (_) {
          emit(ShareState.userAdded(sharedUsers: state.sharedUsers));
          emit(ShareState.loaded(sharedUsers: state.sharedUsers));
        },
      );
    });
  }

  _foldFailure(ShareTripFailure failure) {
    failure.when(
      (message) => emit(ShareState.error(
        sharedUsers: state.sharedUsers,
        userEmailQuery: state.userEmailQuery,
        errorMessage: message ?? LocaleKeys.error.tr(),
      )),
      userNotFound: () => emit(ShareState.error(
        sharedUsers: state.sharedUsers,
        userEmailQuery: state.userEmailQuery,
        errorMessage: LocaleKeys.userNotFound.tr(),
      )),
      noInternetConnection: () => emit(ShareState.error(
        sharedUsers: state.sharedUsers,
        userEmailQuery: state.userEmailQuery,
        errorMessage: LocaleKeys.noInternetConnectionMessage.tr(),
      )),
    );
  }

  void updatedSharedUsers(List<String> sharedUsersIds) async {
    final sharedUsers = await _getUsersNames(GetUsersNamesParams(userIds: sharedUsersIds));

    sharedUsers.fold(
      (failure) => emit(ShareState.error(
        sharedUsers: null,
        userEmailQuery: state.userEmailQuery,
        errorMessage: failure.getUserFailureErrorMessage(),
      )),
      (sharedUsers) => emit(ShareState.loaded(
        sharedUsers: sharedUsers,
        userEmailQuery: state.userEmailQuery,
      )),
    );
  }
}

class ShareCubitParams extends Equatable {
  final List<String> sharedUsers;
  final String tripId;
  final String userEmail;

  const ShareCubitParams({
    required this.sharedUsers,
    required this.tripId,
    required this.userEmail,
  });

  @override
  List<Object?> get props => [sharedUsers, tripId, userEmail];
}
