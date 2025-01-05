part of '../my_app.dart';

final class _BackgroundImageListener extends BlocListener<SettingsCubit, SettingsState> {
  _BackgroundImageListener({required BuildContext context})
      : super(
          listenWhen: (previous, current) {
            final previousBackgroundIndexType = _getBackgroundIndexType(state: previous, context: context);
            final currentBackgroundIndexType = _getBackgroundIndexType(state: current, context: context);
            return previousBackgroundIndexType != currentBackgroundIndexType;
          },
          listener: (context, state) {
            final backgroundsCubit = context.read<BackgroundsCubit>();
            final backgroundIndexType = _getBackgroundIndexType(state: state, context: context);
            backgroundsCubit.loadCurrentBackgroundFile(
              backgroundIndexType: backgroundIndexType != null
                  ? (index: backgroundIndexType.index, type: backgroundIndexType.type)
                  : null,
            );
          },
        );

  static ({int index, BackgroundType type, AdaptiveThemeMode themeMode})? _getBackgroundIndexType(
      {required SettingsState state, required BuildContext context}) {
    final BackgroundType backgroundType;
    final int? index;

    switch (state.settings.themeMode) {
      case AdaptiveThemeMode.light:
        backgroundType = BackgroundType.light;
        index = state.settings.backgroundsContainer.lightBackgroundIndex;
        break;
      case AdaptiveThemeMode.dark:
        backgroundType = BackgroundType.dark;
        index = state.settings.backgroundsContainer.darkBackgroundIndex;
        break;
      case AdaptiveThemeMode.system:
        backgroundType = context.isDarkMode ? BackgroundType.dark : BackgroundType.light;
        index = context.isDarkMode
            ? state.settings.backgroundsContainer.darkBackgroundIndex
            : state.settings.backgroundsContainer.lightBackgroundIndex;
        break;
    }

    if (index == null || kIsWeb) return null;

    return (index: index, type: backgroundType, themeMode: state.settings.themeMode);
  }
}