import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../core/constants.dart';
import '../../../../core/utilities/extensions.dart';
import '../../../../core/utilities/image_loader.dart';
import '../../domain/entities/backgrounds_container.dart';

part 'backgrounds_state.dart';
part 'backgrounds_cubit.freezed.dart';

@injectable
class BackgroundsCubit extends Cubit<BackgroundsState> {
  final Reference lightBackgroundsRef;
  final Reference darkBackgroundsRef;

  BackgroundsCubit({
    required FirebaseStorage firebaseStorage,
  })  : lightBackgroundsRef = firebaseStorage.lightBackgroundsRef,
        darkBackgroundsRef = firebaseStorage.darkBackgroundsRef,
        super(const BackgroundsState());

  void loadBackgroundImages() async {
    for (var i = 0; i < availableLightBackgrounds; i++) {
      _loadBackgroundImage(i, BackgroundType.light);
    }

    for (var i = 0; i < availableDarkBackgrounds; i++) {
      _loadBackgroundImage(i, BackgroundType.dark);
    }
  }

  void _loadBackgroundImage(int index, BackgroundType type) async {
    emitFile(File imageFile) {
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

    final directory = await getApplicationDocumentsDirectory();

    final String backgroundsPrefix =
        type == BackgroundType.light ? lightBackgroundPrefix : darkBackgroundPrefix;
    final imageFile = File('${directory.path}/$backgroundsPrefix-$index.$webpExtension');

    if (imageFile.existsSync()) {
      //TODO remove
      imageFile.delete();

      //TODO restore
      //emitFile(imageFile);
      //return;
    }

    final imageRef = type == BackgroundType.light ? lightBackgroundsRef : darkBackgroundsRef;
    final imageBytes = await imageRef.child('$index.$webpExtension').getData();
    if (imageBytes == null) return;

    await imageFile.writeAsBytes(imageBytes);

    await loadImage(FileImage(imageFile));

    emitFile(imageFile);
  }
}
