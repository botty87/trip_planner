import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/di/di.dart';
import '../../../../../core/utilities/logger.dart';
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
    final imageFile =
        context.select((BackgroundsCubit cubit) => cubit.state.currentBackgroundImage);

    return Container(
      color: Theme.of(context).colorScheme.surface,
      width: double.infinity,
      height: double.infinity,
      child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500), child: _buildBackgroundImage(imageFile)),
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
        getIt<Logger>()
            .error('Error loading background image', stackTrace: stackTrace, exception: error);
        return const SizedBox.shrink();
      },
    );
  }
}

mixin BackgroundImageMixin {
  bool hasBackgroundImage(BuildContext context) =>
      context.select((BackgroundsCubit cubit) => cubit.state.currentBackgroundImage != null);
}
