import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/error/failures.dart';
import '../../../core/l10n/locale_keys.g.dart';

part 'user_failures.freezed.dart';

@freezed
sealed class UserFailures with _$UserFailures implements Failure {
  const UserFailures._();

  const factory UserFailures.emailAlreadyInUse() = _EmailAlreadyInUse;

  const factory UserFailures.networkRequestFailed() = _NetworkRequestFailed;

  const factory UserFailures.weakPassword() = _WeakPassword;

  const factory UserFailures.userNotFound() = _UserNotFound;

  const factory UserFailures.tooManyRequests() = _TooManyRequests;

  const factory UserFailures.userDisabled() = _UserDisabled;

  const factory UserFailures.wrongPassword() = _WrongPassword;

  const factory UserFailures.invalidEmail() = _InvalidEmail;

  const factory UserFailures.unknownError({String? message}) = _UnknownError;

  const factory UserFailures.noInternetConnection() = _NoInternetConnection;

  String getUserFailureErrorMessage() {
    return map(
      emailAlreadyInUse: (_) => LocaleKeys.emailAlreadyInUse.tr(),
      networkRequestFailed: (_) => LocaleKeys.networkRequestFailed.tr(),
      weakPassword: (_) => LocaleKeys.weakPassword.tr(),
      userNotFound: (_) => LocaleKeys.userNotFound.tr(),
      wrongPassword: (_) => LocaleKeys.wrongPassword.tr(),
      invalidEmail: (_) => LocaleKeys.invalidEmail.tr(),
      tooManyRequests: (_) => LocaleKeys.tooManyRequests.tr(),
      userDisabled: (_) => LocaleKeys.userDisabled.tr(),
      noInternetConnection: (_) => LocaleKeys.noInternetConnectionMessage.tr(),
      unknownError: (e) => e.message ?? LocaleKeys.unknownError.tr(),
    );
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
  invalidEmail,
}
