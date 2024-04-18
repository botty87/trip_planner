part of 'share_cubit.dart';

@freezed
class ShareState with _$ShareState {
  const factory ShareState.initial({
    Map<String, String>? sharedUsers,
    @Default('') String userEmailQuery,
  }) = _InitialShareState;

  const factory ShareState.loaded({
    required Map<String, String>? sharedUsers,
    @Default('') String userEmailQuery,
  }) = _LoadedShareState;

  const factory ShareState.error({
    required Map<String, String>? sharedUsers,
    required String userEmailQuery,
    required String errorMessage,
  }) = _ErrorShareState;

  const factory ShareState.userAdded({
    required Map<String, String>? sharedUsers,
    @Default('') String userEmailQuery,
  }) = _UserAddedShareState;
}
