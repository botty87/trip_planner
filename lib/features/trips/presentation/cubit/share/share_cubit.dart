import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../domain/usecases/add_user_for_share.dart';
import '../../../errors/trips_failure.dart';

part 'share_cubit.freezed.dart';
part 'share_state.dart';

@injectable
class ShareCubit extends Cubit<ShareState> {
  final AddUserForShare _addUserForShare;

  final String _tripId;

  ShareCubit({
    @factoryParam required Map<String, String?>? sharedUsers,
    @factoryParam required String tripId,
    required AddUserForShare addUserForShare,
  })  : _tripId = tripId,
        _addUserForShare = addUserForShare,
        super(ShareState.normal(sharedUsers: sharedUsers));

  void onUserEmailQueryChanged(String value) {
    emit(state.copyWith(userEmailQuery: value));
  }

  void addUser() {
    final email = state.userEmailQuery.trim();
    if (email.isNotEmpty) {
      _addUserForShare(AddUserForShareParams(tripId: _tripId, email: email)).then((result) {
        result.fold(
          (failure) => _foldFailure(failure),
          (_) {
            emit(ShareState.userAdded(sharedUsers: state.sharedUsers));
            emit(ShareState.normal(sharedUsers: state.sharedUsers));
          },
        );
      });
    } else {
      emit(ShareState.error(
        sharedUsers: state.sharedUsers,
        userEmailQuery: state.userEmailQuery,
        errorMessage: LocaleKeys.emailEmpty.tr(),
      ));
    }
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
      ))
    );
  }
}
