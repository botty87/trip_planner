part of 'theme_section.dart';

class _ModeSelector extends StatelessWidget {
  const _ModeSelector();

  @override
  Widget build(BuildContext context) {
    final themeMode = context.select((SettingsCubit cubit) => cubit.state.settings.themeMode);
    final themeText = switch (themeMode) {
      AdaptiveThemeMode.light => LocaleKeys.light.tr(),
      AdaptiveThemeMode.dark => LocaleKeys.dark.tr(),
      AdaptiveThemeMode.system => LocaleKeys.system.tr()
    };

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(verticalSpace),
          child: Text(themeText,
              style:
                  Theme.of(context).textTheme.titleMedium?.copyWith(fontStyle: FontStyle.italic)),
        ),
        SegmentedButton<AdaptiveThemeMode>(
          showSelectedIcon: false,
          segments: const [
            ButtonSegment(
              icon: Icon(Icons.light_mode),
              value: AdaptiveThemeMode.light,
            ),
            ButtonSegment(
              icon: Icon(Icons.dark_mode),
              value: AdaptiveThemeMode.dark,
            ),
            ButtonSegment(
              icon: Icon(Icons.auto_awesome),
              value: AdaptiveThemeMode.system,
            ),
          ],
          selected: {themeMode},
          onSelectionChanged: (selected) {
            context.setThemeMode(selected.first);
            context.read<SettingsCubit>().changeThemeMode(selected.first);
          },
        ),
      ],
    );
  }
}
