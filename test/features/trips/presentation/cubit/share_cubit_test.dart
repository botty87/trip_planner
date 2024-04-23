import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trips/domain/usecases/add_user_for_share.dart';
import 'package:trip_planner/features/trips/presentation/cubit/share/share_cubit.dart';
import 'package:trip_planner/features/user_account/domain/usecases/get_users_names.dart';

import 'share_cubit_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<AddUserForShare>(),
  MockSpec<GetUsersNames>(), //TODO implement test
])
void main() {
  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  late MockAddUserForShare mockAddUserForShare;
  late MockGetUsersNames mockGetUsersNames;

  const tTripId = '1';
  const tUserEmail = 'test@example.com';
  const Map<String, String> tSharedUsers = {};
  const List<String> tSharedUserIds = [];

  setUp(() {
    mockAddUserForShare = MockAddUserForShare();
    mockGetUsersNames = MockGetUsersNames();
  });

  ShareCubit getShareCubit() => ShareCubit(
        params: const ShareCubitParams(
          tripId: tTripId,
          userEmail: tUserEmail,
          sharedUsers: tSharedUserIds,
        ),
        addUserForShare: mockAddUserForShare,
        getUsersNames: mockGetUsersNames,
      );

  blocTest<ShareCubit, ShareState>(
    'When user email query changed emit state with user email query changed',
    seed: () => const ShareState.loaded(sharedUsers: tSharedUsers),
    build: () => getShareCubit(),
    act: (cubit) => cubit.onUserEmailQueryChanged('test'),
    expect: () => [const ShareState.loaded(userEmailQuery: 'test', sharedUsers: tSharedUsers)],
  );

  blocTest<ShareCubit, ShareState>(
    'When user email query is empty emit state with error message',
    seed: () => const ShareState.loaded(sharedUsers: tSharedUsers),
    build: () => getShareCubit(),
    act: (cubit) => cubit.addUser(),
    expect: () => [
      ShareState.error(
        userEmailQuery: '',
        sharedUsers: tSharedUsers,
        errorMessage: LocaleKeys.emailEmpty.tr(),
      ),
    ],
  );

  blocTest<ShareCubit, ShareState>(
    'When user email query is the same as user email emit state with error message',
    build: () => getShareCubit(),
    seed: () => const ShareState.loaded(userEmailQuery: tUserEmail, sharedUsers: tSharedUsers),
    act: (cubit) => cubit.addUser(),
    expect: () => [
      ShareState.error(
        userEmailQuery: tUserEmail,
        sharedUsers: tSharedUsers,
        errorMessage: LocaleKeys.cannotShareWithYourself.tr(),
      ),
    ],
  );

  blocTest<ShareCubit, ShareState>(
    'When user added emit state with user added and then normal',
    build: () => getShareCubit(),
    setUp: () =>
        when(mockAddUserForShare(const AddUserForShareParams(tripId: tTripId, email: 'test')))
            .thenAnswer((_) async => const Right(null)),
    seed: () => const ShareState.loaded(userEmailQuery: 'test', sharedUsers: tSharedUsers),
    act: (cubit) => cubit.addUser(),
    expect: () => [
      const ShareState.userAdded(userEmailQuery: '', sharedUsers: tSharedUsers),
      const ShareState.loaded(userEmailQuery: '', sharedUsers: tSharedUsers),
    ],
  );
}
