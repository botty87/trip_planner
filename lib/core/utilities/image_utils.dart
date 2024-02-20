import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../../features/settings/domain/entities/backgrounds_container.dart';
import '../constants.dart';

@lazySingleton
class ImageUtils {
  Future<void> loadImage(ImageProvider provider) {
    final ImageConfiguration config = ImageConfiguration(
      bundle: rootBundle,
      devicePixelRatio: WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio,
      platform: defaultTargetPlatform,
    );
    final Completer<void> completer = Completer<void>();
    final ImageStream stream = provider.resolve(config);

    late final ImageStreamListener listener;

    listener = ImageStreamListener((ImageInfo image, bool sync) {
      debugPrint('Image ${image.debugLabel} finished loading');
      completer.complete();
      stream.removeListener(listener);
    }, onError: (Object exception, StackTrace? stackTrace) {
      completer.complete();
      stream.removeListener(listener);
      FlutterError.reportError(FlutterErrorDetails(
        context: ErrorDescription('image failed to load'),
        library: 'image resource service',
        exception: exception,
        stack: stackTrace,
        silent: true,
      ));
    });

    stream.addListener(listener);
    return completer.future;
  }

  String getBackgroundImageName({required int index, required BackgroundType type}) {
    final String backgroundsPrefix =
        type == BackgroundType.light ? lightBackgroundPrefix : darkBackgroundPrefix;
    return '$backgroundsPrefix-$index.$webpExtension';
  }

  Future<File> getBackgroundImageFile({required int index, required BackgroundType type}) async {
    final directory = await getApplicationDocumentsDirectory();

    return File('${directory.path}/${getBackgroundImageName(index: index, type: type)}');
  }

  Future<File> getBackgroundImageNameFile({required String name}) async {
    final directory = await getApplicationDocumentsDirectory();

    return File('${directory.path}/$name');
  }
}
