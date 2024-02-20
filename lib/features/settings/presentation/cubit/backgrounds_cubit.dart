import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants.dart';
import '../../../../core/utilities/extensions.dart';
import '../../../../core/utilities/image_utils.dart';
import '../../domain/entities/backgrounds_container.dart';

part 'backgrounds_state.dart';
part 'backgrounds_cubit.freezed.dart';

@injectable
class BackgroundsCubit extends Cubit<BackgroundsState> {
  final Reference lightBackgroundsRef;
  final Reference darkBackgroundsRef;
  final ImageUtils _imageUtils;

  BackgroundsCubit({
    required FirebaseStorage firebaseStorage,
    required ImageUtils imageUtils,
  })  : lightBackgroundsRef = firebaseStorage.lightBackgroundsRef,
        darkBackgroundsRef = firebaseStorage.darkBackgroundsRef,
        _imageUtils = imageUtils,
        super(const BackgroundsState());

  void loadBackgroundImage({required int index, required BackgroundType type}) async {
    emitFile(File imageFile) async {
      if (isClosed) return;

      await _imageUtils.loadImage(FileImage(imageFile));
      
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

    final imageFile = await _imageUtils.getBackgroundImageFile(index: index, type: type);

    if (imageFile.existsSync()) {
      emitFile(imageFile);
      return;
    }

    final imageRef = type == BackgroundType.light ? lightBackgroundsRef : darkBackgroundsRef;
    final imageBytes = await imageRef.child('$index.$webpExtension').getData();
    if (imageBytes == null) return;

    await imageFile.writeAsBytes(imageBytes);

    emitFile(imageFile);
  }
}
