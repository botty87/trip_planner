import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../gen/assets.gen.dart';
import '../constants.dart';
import '../l10n/locale_keys.g.dart';

class GenericErrorWidget extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;
  const GenericErrorWidget({super.key, required this.message, this.onRetry});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: defaultPagePadding,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SvgPicture(
              AssetBytesLoader(Assets.svg.errorSvg),
            ),
          ),
          Text(
            message,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          if (onRetry != null) ...[
            const SizedBox(height: verticalSpace),
            ElevatedButton(
              onPressed: onRetry,
              child: Text(LocaleKeys.retry.tr()),
            ),
          ]
        ],
      ),
    );
  }
}
