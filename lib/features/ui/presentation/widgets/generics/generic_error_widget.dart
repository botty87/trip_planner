import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../core/constants.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../background/background_image_wrapper.dart';

class GenericErrorWidget extends StatelessWidget with BackgroundImageMixin {
  final String message;
  final VoidCallback? onRetry;
  const GenericErrorWidget({super.key, required this.message, this.onRetry});

  @override
  Widget build(BuildContext context) {
    final hasBackgroundImage = this.hasBackgroundImage(context);

    if (hasBackgroundImage) {
      return Card(
        margin: defaultPagePadding,
        elevation: 8,
        child: _body(context),
      );
    } else {
      return _body(context);
    }
  }

  Widget _body(BuildContext context) {
    return SafeArea(
      minimum: defaultPagePadding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.4),
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
              key: const Key('retryButton'),
              onPressed: onRetry,
              child: Text(LocaleKeys.retry.tr()),
            ),
          ]
        ],
      ),
    );
  }
}
