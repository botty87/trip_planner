import 'dart:async';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/di/di.dart';
import '../../../user_account/errors/user_failures.dart';
import '../../domain/entities/backgrounds_container.dart';
import '../../domain/entities/settings.dart';
import '../../domain/usecases/update_settings.dart';

part 'settings_cubit.freezed.dart';
part 'settings_state.dart';

@injectable
class SettingsCubit extends Cubit<SettingsState> {
  final UpdateSettings _updateSettings;

  late final StreamSubscription<Settings?> _settingsSubscription;

  SettingsCubit({
    required UpdateSettings updateSettings,
  })  : _updateSettings = updateSettings,
        super(const SettingsState(settings: Settings()));

  void updateSettingsFromUser(Settings? settings) {
    emit(state.copyWith(settings: settings ?? const Settings()));
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

  disableDisplayBackgroundsDialog() {
    emit(state.copyWith(settings: state.settings.copyWith(showBackgroundsDialog: false)));
  }

  updateSettings() async {
    emit(state.copyWith(failure: null));

    final result = await _updateSettings(UpdateSettingsParams(settings: state.settings));
    result.leftMap((failure) => emit(state.copyWith(failure: failure)));
  }

  travelModeChanged(TravelMode driving) {
    emit(state.copyWith(settings: state.settings.copyWith(travelMode: driving)));
  }

  void setBackground({required BackgroundType backgroundType, required int index}) {
    switch (backgroundType) {
      case BackgroundType.light:
        emit(state.copyWith.settings.backgroundsContainer(lightBackgroundIndex: index));
        break;
      case BackgroundType.dark:
        emit(state.copyWith.settings.backgroundsContainer(darkBackgroundIndex: index));
        break;
    }
  }

  void removeBackground({required BackgroundType backgroundType}) {
    switch (backgroundType) {
      case BackgroundType.light:
        emit(state.copyWith.settings.backgroundsContainer(lightBackgroundIndex: null));
        break;
      case BackgroundType.dark:
        emit(state.copyWith.settings.backgroundsContainer(darkBackgroundIndex: null));
        break;
    }
  }

  changeThemeMode(AdaptiveThemeMode theme) {
    emit(state.copyWith.settings(themeMode: theme));
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
