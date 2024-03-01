part of 'backgrounds_cubit.dart';

@freezed
class BackgroundsState with _$BackgroundsState {
  const factory BackgroundsState({
    @Default({}) Map<int, File> lightBackgrounds,
    @Default({}) Map<int, File> darkBackgrounds,
    File? currentBackgroundImage,
  }) = _BackgroundsState;
}
