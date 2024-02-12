import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/di/di.dart';
import '../../../user_account/errors/user_failures.dart';
import '../../../user_account/presentation/cubit/user/user_cubit.dart';
import '../../domain/entities/background_remote_image.dart';
import '../../domain/entities/backgrounds_container.dart';
import '../../domain/entities/settings.dart';
import '../../domain/usecases/update_settings.dart';

part 'settings_cubit.freezed.dart';
part 'settings_state.dart';

@lazySingleton
class SettingsCubit extends Cubit<SettingsState> {
  final UpdateSettings _updateSettings;

  late final StreamSubscription<Settings?> _settingsSubscription;

  SettingsCubit({
    required UpdateSettings updateSettings,
    required UserCubit userCubit,
  })  : _updateSettings = updateSettings,
        super(const SettingsState(settings: Settings())) {
    _init(userCubit);
  }

  _init(UserCubit userCubit) {
    _settingsSubscription = userCubit.stream
        .map((userState) {
          return userState.mapOrNull(
            loggedIn: (value) => value.user.settings,
          );
        })
        .distinct()
        .listen((settings) {
          if (settings != null) {
            emit(state.copyWith(settings: settings));
          }
        });
  }

  void setDefaultDayTripStartTime(TimeOfDay value) {
    emit(state.copyWith(settings: state.settings.copyWith(defaultDayTripStartTime: value)));
  }

  setShowDirections(bool value) {
    emit(state.copyWith(settings: state.settings.copyWith(showDirections: value)));
  }

  setUseDifferentDirectionsColors(bool value) {
    emit(state.copyWith(settings: state.settings.copyWith(useDifferentDirectionsColors: value)));
  }

  updateSettings() async {
    emit(state.copyWith(failure: null));

    final result = await _updateSettings(UpdateSettingsParams(settings: state.settings));
    result.leftMap((failure) => emit(state.copyWith(failure: failure)));
  }

  travelModeChanged(TravelMode driving) {
    emit(state.copyWith(settings: state.settings.copyWith(travelMode: driving)));
  }

  //TODO add tests
  void setBackground({required BackgroundType backgroundType, required BackgroundRemoteImage value}) {
    switch (backgroundType) {
      case BackgroundType.light:
        emit(state.copyWith.settings.backgroundsContainer(ligthBackground: value));
        break;
      case BackgroundType.dark:
        emit(state.copyWith.settings.backgroundsContainer(darkBackground: value));
        break;
    }
  }

  //TODO add tests
  void removeBackground({required BackgroundType backgroundType}) {
    switch (backgroundType) {
      case BackgroundType.light:
        emit(state.copyWith.settings.backgroundsContainer(ligthBackground: null));
        break;
      case BackgroundType.dark:
        emit(state.copyWith.settings.backgroundsContainer(darkBackground: null));
        break;
    }
  }

  @override
  Future<void> close() {
    _settingsSubscription.cancel();
    return super.close();
  }
}

@module
abstract class SettingsModule {
  @injectable
  Settings get settings => getIt<SettingsCubit>().state.settings;
}
