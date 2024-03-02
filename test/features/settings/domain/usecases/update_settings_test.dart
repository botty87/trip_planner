import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/settings/domain/entities/settings.dart';
import 'package:trip_planner/features/settings/domain/usecases/update_settings.dart';
import 'package:trip_planner/features/user_account/errors/user_failures.dart';

import '../../../user_account/domain/repositories/mock_user_repository.mocks.dart';

void main() {
  late UpdateSettings updateSettings;
  late MockUserRepository mockUserRepository;

  const tSettings = Settings();

  setUp(() {
    mockUserRepository = MockUserRepository();
    updateSettings = UpdateSettings(mockUserRepository);
  });

  test('should update settings', () async {
    // arrange
    when(mockUserRepository.saveSettings(tSettings)).thenAnswer((_) async => const Right(null));
    // act
    final result = await updateSettings(const UpdateSettingsParams(settings: tSettings));
    // assert
    expect(result, const Right(null));
    verify(mockUserRepository.saveSettings(tSettings)).called(1);
    verifyNoMoreInteractions(mockUserRepository);
  });

  test('should return failure when updating settings fails', () async {
    // arrange
    when(mockUserRepository.saveSettings(tSettings))
        .thenAnswer((_) async => const Left(UserFailures.unknownError()));
    // act
    final result = await updateSettings(const UpdateSettingsParams(settings: tSettings));
    // assert
    expect(result, const Left(UserFailures.unknownError()));
    verify(mockUserRepository.saveSettings(tSettings)).called(1);
    verifyNoMoreInteractions(mockUserRepository);
  });
}
