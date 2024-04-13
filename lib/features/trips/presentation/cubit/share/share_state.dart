part of 'share_cubit.dart';

@freezed
class ShareState with _$ShareState {
  const factory ShareState.normal({
    required Map<String, String?>? sharedUsers,
    @Default('') String userEmailQuery,
  }) = _NormalShareState;

  const factory ShareState.error({
    required Map<String, String?>? sharedUsers,
    required String userEmailQuery,
    required String errorMessage,
  }) = _ErrorShareState;

  const factory ShareState.userAdded({
    required Map<String, String?>? sharedUsers,
    @Default('') String userEmailQuery,
  }) = _UserAddedShareState;
}
