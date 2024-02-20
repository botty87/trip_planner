import 'dart:io';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/settings/domain/entities/backgrounds_container.dart';
import '../../../features/settings/presentation/cubit/settings_cubit.dart';
import '../../di/di.dart';
import '../../utilities/extensions.dart';
import '../../utilities/image_utils.dart';

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
  final _imageUtils = getIt<ImageUtils>();

  @override
  Widget build(BuildContext context) {
    final backgroundImageName = context.select((SettingsCubit cubit) {
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

      if (index == null) return null;

      return _imageUtils.getBackgroundImageName(index: index, type: backgroundType);
    });

    return Container(
      color: Theme.of(context).colorScheme.background,
      width: double.infinity,
      height: double.infinity,
      child: FutureBuilder(
        future: _getBackgroundImageFile(backgroundImageName),
        builder: (context, snapshot) {
          return AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: _buildBackgroundImage(snapshot, context));
        },
      ),
    );
  }

  Future<File?> _getBackgroundImageFile(String? name) async {
    if (name == null) return null;
    final imageFile = await _imageUtils.getBackgroundImageNameFile(name: name);
    await _imageUtils.loadImage(FileImage(imageFile));
    return imageFile;
  }

  Widget _buildBackgroundImage(AsyncSnapshot<File?> snapshot, BuildContext context) {
    if (!snapshot.hasData || snapshot.hasError) {
      return const SizedBox.shrink();
    }

    return Image.file(
      snapshot.data!,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
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
