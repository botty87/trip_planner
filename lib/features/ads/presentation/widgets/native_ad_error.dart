import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../ui/widgets/background/background_widget_container.dart';

class NativeAdError extends StatelessWidget {
  const NativeAdError({super.key, this.padding});

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final AssetGenImage randomImage = Assets.noads.values.elementAt(Random().nextInt(Assets.noads.values.length));

    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: BackgroundWidgetContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(child: randomImage.image(fit: BoxFit.cover)),
            const SizedBox(height: verticalSpace),
            Text(
              LocaleKeys.noAds.tr(),
              style: Theme.of(context).textTheme.titleSmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
