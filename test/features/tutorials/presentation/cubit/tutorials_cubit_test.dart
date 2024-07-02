import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:trip_planner/features/tutorials/domain/entities/tutorials_data.dart';
import 'package:trip_planner/features/tutorials/domain/usecases/update_tutorials_data.dart';
import 'package:trip_planner/features/tutorials/presentation/cubit/tutorial_cubit.dart';

import 'tutorials_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<UpdateTutorialsData>()])
void main() {
  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  late MockUpdateTutorialsData mockUpdateTutorialsData;

  setUp(() {
    mockUpdateTutorialsData = MockUpdateTutorialsData();
  });

  final tTutorialState = const TutorialsData().toTutorialState();

  TutorialCubit getTutorialCubit() => TutorialCubit(updateTutorialsData: mockUpdateTutorialsData);

  blocTest<TutorialCubit, TutorialState>(
    'When onWelcomeDone is called emit state with showWelcome false',
    build: () => getTutorialCubit(),
    act: (cubit) => cubit.onWelcomeDone(),
    expect: () => [tTutorialState.copyWith(showWelcome: false)],
  );

  blocTest<TutorialCubit, TutorialState>(
    'When onPublicTripDone is called emit state with showPublicTrip false',
    build: () => getTutorialCubit(),
    act: (cubit) => cubit.onPublicTripDone(),
    expect: () => [tTutorialState.copyWith(showPublicTrip: false)],
  );

  blocTest<TutorialCubit, TutorialState>(
    'When onCreateFromPublicTripDone is called emit state with showCreateFromPublicTrip false',
    build: () => getTutorialCubit(),
    act: (cubit) => cubit.onCreateFromPublicTripDone(),
    expect: () => [tTutorialState.copyWith(showCreateFromPublicTrip: false)],
  );

  blocTest<TutorialCubit, TutorialState>(
    'When onShowTripStopSlide is called emit state with showTripStopSlide false',
    build: () => getTutorialCubit(),
    act: (cubit) => cubit.onShowTripStopSlideAndPlaceholder(),
    expect: () => [tTutorialState.copyWith(showTripStopSlide: false)],
  );
}
