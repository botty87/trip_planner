part of 'share_cubit.dart';

@freezed
class ShareState with _$ShareState {
  const factory ShareState.initial({
    Map<String, String>? sharedUsers,
    @Default('') String userEmailQuery,
  }) = ShareStateInitial;

  const factory ShareState.loaded({
    required Map<String, String>? sharedUsers,
    @Default('') String userEmailQuery,
  }) = ShareStateLoaded;

  const factory ShareState.error({
    required Map<String, String>? sharedUsers,
    required String userEmailQuery,
    required String errorMessage,
  }) = ShareStateError;

  const factory ShareState.userAdded({
    required Map<String, String>? sharedUsers,
    @Default('') String userEmailQuery,
  }) = ShareStateUserAdded;
}
