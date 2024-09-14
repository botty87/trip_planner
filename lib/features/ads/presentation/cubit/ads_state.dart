part of 'ads_cubit.dart';

@freezed
sealed class AdsState with _$AdsState {
  factory AdsState.initial() = AdsInitial;

  const factory AdsState.loaded({required AdWithView ad}) = AdsLoaded;

  const factory AdsState.error() = AdsError;

  const factory AdsState.notSupported() = AdsNotSupported;
}
