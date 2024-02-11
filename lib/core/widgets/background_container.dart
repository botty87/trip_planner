import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/settings/presentation/cubit/settings_cubit.dart';

class BackgroundContainer extends StatelessWidget {
  final Widget child;

  const BackgroundContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final backgroundImageUrl =
        context.select((SettingsCubit cubit) => cubit.state.settings.backgroundContainer?.url);

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

mixin BackgroundImageListener {
  bool hasBackgroundImage(BuildContext context) =>
      context.select((SettingsCubit cubit) => cubit.state.settings.backgroundContainer?.url) !=
      null;
}
