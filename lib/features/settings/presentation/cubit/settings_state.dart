part of 'settings_cubit.dart';

@freezed
sealed class SettingsState with _$SettingsState {
  const factory SettingsState({
    required Settings settings,
    UserFailures? failure,
  }) = _SettingsState;
}
