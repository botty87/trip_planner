import '../entities/backgrounds_container.dart';

abstract class BackgroundRepository {
  /// Sets the background
  Future<void> saveBackground({required BackgroundType backgroundType, required int index});

  /// Removes the background
  Future<void> removeBackground({required BackgroundType backgroundType});
}
