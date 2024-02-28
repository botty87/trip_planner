import 'dart:io';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import '../../../../../core/utilities/extensions.dart';
import '../../../../../core/utilities/pair.dart';
import '../../../../settings/domain/entities/backgrounds_container.dart';
import '../../../../settings/presentation/cubit/settings_cubit.dart';
import '../../cubit/backgrounds_cubit.dart';

class BackgroundImageWrapper extends StatelessWidget {
  final Widget child;

  const BackgroundImageWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _BackgroundImage(),
        child,
      ],
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Listen for changes in the settings cubit
    final backgroundsCubit = context.read<BackgroundsCubit>();

    final Pair<int, BackgroundType>? backgroundIndexType = context.select((SettingsCubit cubit) {
      final BackgroundType backgroundType;
      final int? index;

      switch (cubit.state.settings.themeMode) {
        case AdaptiveThemeMode.light:
          backgroundType = BackgroundType.light;
          index = cubit.state.settings.backgroundsContainer.lightBackgroundIndex;
          break;
        case AdaptiveThemeMode.dark:
          backgroundType = BackgroundType.dark;
          index = cubit.state.settings.backgroundsContainer.darkBackgroundIndex;
          break;
        case AdaptiveThemeMode.system:
          backgroundType = context.isDarkMode ? BackgroundType.dark : BackgroundType.light;
          index = context.isDarkMode
              ? cubit.state.settings.backgroundsContainer.darkBackgroundIndex
              : cubit.state.settings.backgroundsContainer.lightBackgroundIndex;
          break;
      }

      if (index == null || kIsWeb) return null;

      return Pair(index, backgroundType);
    });

    //Load the current background image
    backgroundsCubit.loadCurrentBackgroundFile(backgroundIndexType: backgroundIndexType);

    //Rebuild the background image when the current background image changes
    return BlocSelector<BackgroundsCubit, BackgroundsState, File?>(
      selector: (state) => state.currentBackgroundImage,
      builder: (context, imageFile) {
        return Container(
          color: Theme.of(context).colorScheme.background,
          width: double.infinity,
          height: double.infinity,
          child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500), child: _buildBackgroundImage(imageFile)),
        );
      },
    );
  }

  Widget _buildBackgroundImage(File? imageFile) {
    if (imageFile == null) {
      return const SizedBox.shrink();
    }

    return Image.file(
      imageFile,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
      errorBuilder: (context, error, stackTrace) {
        Logger().e('Error loading background image', stackTrace: stackTrace);
        return const SizedBox.shrink();
      },
    );
  }
}

mixin BackgroundImageMixin {
  bool hasBackgroundImage(BuildContext context) => context.select((SettingsCubit cubit) {
        if (context.isDarkMode) {
          return cubit.state.settings.backgroundsContainer.darkBackgroundIndex != null;
        } else {
          return cubit.state.settings.backgroundsContainer.lightBackgroundIndex != null;
        }
      });
}
