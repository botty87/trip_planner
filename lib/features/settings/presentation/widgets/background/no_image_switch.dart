part of 'background_section.dart';

class _NoImageSwitch extends StatelessWidget {
  const _NoImageSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final hasSelectedBackground =
        context.select((SettingsCubit cubit) => cubit.state.settings.backgroundContainer != null);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Text(
            LocaleKeys.noBackgroundImage.tr(),
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.onSurface),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(width: horizontalSpaceS),
        Switch.adaptive(
          value: !hasSelectedBackground,
          onChanged: (value) => context.read<SettingsCubit>().setBackgroundContainer(null),
        ),
      ],
    );
  }
}
