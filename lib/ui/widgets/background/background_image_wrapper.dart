import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../core/di/di.dart';
import '../../../core/utilities/logger.dart';
import '../../cubit/backgrounds_cubit.dart';

class BackgroundImageWrapper extends StatelessWidget {
  final Widget child;

  const BackgroundImageWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _BackgroundImage(),
        ResponsiveScaledBox(
          width: ResponsiveValue<double>(
            context,
            conditionalValues: [
              const Condition.equals(name: MOBILE, value: 450),
              const Condition.equals(name: TABLET, value: 700),
              const Condition.between(start: 800, end: 1100, value: 900),
              const Condition.between(start: 1000, end: 1300, value: 1100),
              const Condition.between(start: 1250, end: 1600, value: 1400),
              const Condition.between(start: 1550, end: 1950, value: 1800),
              const Condition.equals(name: '4K', value: 2000),
            ],
            defaultValue: 1500,
          ).value,
          child: child,
        ),
      ],
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageFile = context.select((BackgroundsCubit cubit) => cubit.state.currentBackgroundImage);

    return Container(
      color: Theme.of(context).colorScheme.surface,
      width: double.infinity,
      height: double.infinity,
      child: AnimatedSwitcher(duration: const Duration(milliseconds: 500), child: _buildBackgroundImage(imageFile)),
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
        getIt<Logger>().error('Error loading background image', stackTrace: stackTrace, exception: error);
        return const SizedBox.shrink();
      },
    );
  }
}
