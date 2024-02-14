import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/settings/presentation/cubit/settings_cubit.dart';
import '../../utilities/extensions.dart';

class BackgroundWrapperWidget extends StatelessWidget {
  final Widget child;

  const BackgroundWrapperWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final backgroundImageUrl = context.select((SettingsCubit cubit) {
      switch (cubit.state.settings.themeMode) {
        case AdaptiveThemeMode.light:
          return cubit.state.settings.backgroundsContainer.lightBackground?.url;
        case AdaptiveThemeMode.dark:
          return cubit.state.settings.backgroundsContainer.darkBackground?.url;
        case AdaptiveThemeMode.system:
          return context.isDarkMode
              ? cubit.state.settings.backgroundsContainer.darkBackground?.url
              : cubit.state.settings.backgroundsContainer.lightBackground?.url;
      }
    });

    return Stack(
      children: [
        if (backgroundImageUrl != null)
          CachedNetworkImage(
            imageUrl: backgroundImageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            fadeInDuration: const Duration(milliseconds: 200),
            placeholder: (context, url) => Container(
              color: Theme.of(context).colorScheme.background,
            ),
            errorWidget: (context, url, error) => Container(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
        if (backgroundImageUrl == null)
          Container(
            color: Theme.of(context).colorScheme.background,
          ),
        child,
      ],
    );
  }
}

mixin BackgroundImageMixin {
  bool hasBackgroundImage(BuildContext context) => context.select((SettingsCubit cubit) {
        if (context.isDarkMode) {
          return cubit.state.settings.backgroundsContainer.darkBackground?.url.isNotEmpty ?? false;
        } else {
          return cubit.state.settings.backgroundsContainer.lightBackground?.url.isNotEmpty ?? false;
        }
      });
}
