import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trips/domain/usecases/create_trip.dart';
import 'package:trip_planner/features/trips/errors/trips_failure.dart';
import 'package:trip_planner/features/trips/presentation/cubit/new_trip/new_trip_cubit.dart';
import 'package:trip_planner/features/user_account/domain/entities/user.dart';
import 'package:trip_planner/features/user_account/presentation/cubit/user/user_cubit.dart';
import 'package:easy_logger/easy_logger.dart';

import 'new_trip_cubit_test.mocks.dart';

class MockUserCubit extends MockCubit<UserState> implements UserCubit {}

@GenerateNiceMocks([MockSpec<CreateTrip>()])
void main() {
  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  group('NewTripCubit', () {
    late MockUserCubit mockUserTrip;
    late MockCreateTrip mockCreateTrip;

    setUp(() {
      mockUserTrip = MockUserCubit();
      mockCreateTrip = MockCreateTrip();
    });

    blocTest<NewTripCubit, NewTripState>('When name change emit state with name changed',
        build: () => NewTripCubit(mockUserTrip, mockCreateTrip),
        act: (cubit) => cubit.nameChanged('test'),
        expect: () => [NewTripState.normal(tripName: 'test')]);

    blocTest<NewTripCubit, NewTripState>(
        'When description change emit state with description changed',
        build: () => NewTripCubit(mockUserTrip, mockCreateTrip),
        act: (cubit) => cubit.descriptionChanged('test'),
        expect: () => [NewTripState.normal(tripDescription: 'test')]);

    group('Create trip tests', () {
      final tUser = User(id: '1', email: '');
      final tStartDate = DateTime.now();

      setUp(() {
        whenListen(
          mockUserTrip,
          Stream.fromIterable([UserStateLoggedIn(user: tUser)]),
          initialState: UserStateLoggedIn(user: tUser),
        );
      });

      blocTest<NewTripCubit, NewTripState>(
        'When create trip with empty name emit state with error message',
        build: () => NewTripCubit(mockUserTrip, mockCreateTrip),
        act: (cubit) => cubit.createTrip(),
        expect: () => [
          NewTripState.error(
            tripName: null,
            errorMessage: LocaleKeys.tripNameEmpty,
            tripDescription: null,
            startDate: null,
          ),
          NewTripState.normal(),
        ],
      );

      blocTest<NewTripCubit, NewTripState>(
        'When create trip with empty startDate emit state with error message',
        build: () => NewTripCubit(mockUserTrip, mockCreateTrip),
        seed: () => NewTripState.normal(tripName: 'test'),
        act: (cubit) => cubit.createTrip(),
        expect: () => [
          NewTripState.error(
            tripName: 'test',
            errorMessage: LocaleKeys.tripStartDateEmpty,
            tripDescription: null,
            startDate: null,
          ),
          NewTripState.normal(tripName: 'test'),
        ],
      );

      blocTest<NewTripCubit, NewTripState>(
        'When create trip with valid name and startDate emit state with error message null',
        setUp: () => when(mockCreateTrip(any)).thenAnswer((_) async => Right(null)),
        seed: () => NewTripState.normal(tripName: 'test', startDate: tStartDate),
        build: () => NewTripCubit(mockUserTrip, mockCreateTrip),
        act: (cubit) => cubit.createTrip(),
        expect: () => [
          NewTripState.saving(tripName: 'test', startDate: tStartDate, tripDescription: null),
          NewTripState.created(),
        ],
        verify: (bloc) => verify(mockCreateTrip(any)).called(1),
      );

      blocTest<NewTripCubit, NewTripState>(
        'When create trip with valid name and startDate emit state with error message when error occurs',
        setUp: () => when(mockCreateTrip(any)).thenAnswer((_) async => Left(TripsFailure())),
        build: () => NewTripCubit(mockUserTrip, mockCreateTrip),
        seed: () => NewTripState.normal(tripName: 'test', startDate: tStartDate),
        act: (cubit) => cubit.createTrip(),
        expect: () => [
          NewTripState.saving(tripName: 'test', startDate: tStartDate, tripDescription: null),
          NewTripState.error(
            tripName: 'test',
            errorMessage: LocaleKeys.tripSaveError,
            startDate: tStartDate,
            tripDescription: null,
          ),
          NewTripState.normal(tripName: 'test',tripDescription: null, startDate: tStartDate),
        ],
        verify: (bloc) => verify(mockCreateTrip(any)).called(1),
      );
    });
  });
}
