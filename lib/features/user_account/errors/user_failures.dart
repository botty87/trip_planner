import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/error/failures.dart';
import '../../../core/l10n/locale_keys.g.dart';


part 'user_failures.freezed.dart';

@freezed
sealed class UserFailures with _$UserFailures implements Failure {
  const UserFailures._();

  factory UserFailures({
    UserFailuresCode? code,
  }) = _UserFailures;

  String getAuthenticationErrorMessage() {
    switch (code) {
      case UserFailuresCode.emailAlreadyInUse:
        return LocaleKeys.emailAlreadyInUse.tr();
      case UserFailuresCode.weakPassword:
        return LocaleKeys.weakPassword.tr();
      case UserFailuresCode.networkRequestFailed:
        return LocaleKeys.networkRequestFailed.tr();
      case UserFailuresCode.userNotFound:
        return LocaleKeys.userNotFound.tr();
      case UserFailuresCode.wrongPassword:
        return LocaleKeys.wrongPassword.tr();
      default:
        return LocaleKeys.unknownError.tr();
    }
  }
}

enum UserFailuresCode {
  emailAlreadyInUse,
  weakPassword,
  userNotFound,
  wrongPassword,
  tooManyRequests,
  userDisabled,
  networkRequestFailed,
}
