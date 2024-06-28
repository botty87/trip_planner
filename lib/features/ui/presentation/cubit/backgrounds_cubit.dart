import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/utilities/extensions.dart';
import '../../../../core/utilities/logger.dart';
import '../../../../core/utilities/pair.dart';
import '../../../settings/domain/entities/backgrounds_container.dart';

part 'backgrounds_cubit.freezed.dart';
part 'backgrounds_state.dart';

@injectable
class BackgroundsCubit extends Cubit<BackgroundsState> {
  final Reference lightBackgroundsRef;
  final Reference darkBackgroundsRef;

  BackgroundsCubit({
    required FirebaseStorage firebaseStorage,
  })  : lightBackgroundsRef = firebaseStorage.lightBackgroundsRef,
        darkBackgroundsRef = firebaseStorage.darkBackgroundsRef,
        super(const BackgroundsState());

  void loadBackgroundImage({required int index, required BackgroundType type}) async {
    emitFile(File imageFile) async {
      if (isClosed) return;

      await preloadImage(FileImage(imageFile));

      if (isClosed) return;

      switch (type) {
        case BackgroundType.light:
          emit(state.copyWith(
              lightBackgrounds: Map.from(state.lightBackgrounds)..addAll({index: imageFile})));
          break;
        case BackgroundType.dark:
          emit(state.copyWith(
              darkBackgrounds: Map.from(state.darkBackgrounds)..addAll({index: imageFile})));
          break;
      }
    }

    final imageFile = await getBackgroundImageFile(index: index, type: type);

    if (imageFile.existsSync()) {
      emitFile(imageFile);
      return;
    }

    final imageBytes = await _downloadBackgroundImageBytes(index: index, type: type);
    if (imageBytes == null) return;

    await imageFile.writeAsBytes(imageBytes);

    emitFile(imageFile);
  }

  Future<Uint8List?> _downloadBackgroundImageBytes({
    required int index,
    required BackgroundType type,
  }) async {
    try {
      final imageRef = type == BackgroundType.light ? lightBackgroundsRef : darkBackgroundsRef;
      return await imageRef.child('$index.$webpExtension').getData();
    } catch (e) {
      getIt<Logger>().error('Error downloading background image: $e', exception: e);
      return null;
    }
  }

  Future<void> preloadImage(ImageProvider provider) {
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

  String _getBackgroundImageName({required int index, required BackgroundType type}) {
    final String backgroundsPrefix =
        type == BackgroundType.light ? lightBackgroundPrefix : darkBackgroundPrefix;
    return '$backgroundsPrefix-$index.$webpExtension';
  }

  Future<File> getBackgroundImageFile({required int index, required BackgroundType type}) async {
    final directory = await getApplicationDocumentsDirectory();

    return File('${directory.path}/${_getBackgroundImageName(index: index, type: type)}');
  }

  void loadCurrentBackgroundFile({required Pair<int, BackgroundType>? backgroundIndexType}) async {
    if (backgroundIndexType != null) {
      final imageFile = await getBackgroundImageFile(
          index: backgroundIndexType.first, type: backgroundIndexType.second);

      //If the file does not exist, download it
      if (!imageFile.existsSync()) {
        final imageBytes = await _downloadBackgroundImageBytes(
            index: backgroundIndexType.first, type: backgroundIndexType.second);
        if (imageBytes == null) return;

        await imageFile.writeAsBytes(imageBytes);
      }

      await preloadImage(FileImage(imageFile));

      emit(state.copyWith(currentBackgroundImage: imageFile));
    } else {
      emit(state.copyWith(currentBackgroundImage: null));
    }
  }
}
