import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../settings/domain/entities/settings.dart';
import '../../../../user_account/presentation/cubit/user/user_cubit.dart';
import '../../../domain/entities/trip.dart';
import '../../../domain/usecases/create_from_existing_trip.dart';
import '../../../domain/usecases/create_trip.dart';
import '../../../errors/trips_failure.dart';

part 'new_trip_cubit.freezed.dart';
part 'new_trip_state.dart';

@injectable
class NewTripCubit extends Cubit<NewTripState> {
  final CreateTrip _createTrip;
  final CreateFromExistingTrip _createFromExistingTrip;
  final UserCubit _userCubit;
  final Trip? _existingTrip;
  final Settings _settings;

  NewTripCubit({
    required UserCubit userCubit,
    required CreateTrip createTrip,
    required CreateFromExistingTrip createFromExistingTrip,
    required Settings settings,
    @Named(deviceLocaleKey) required Locale deviceLocale,
    @factoryParam Trip? existingTrip,
  })  : _createTrip = createTrip,
        _createFromExistingTrip = createFromExistingTrip,
        _userCubit = userCubit,
        _existingTrip = existingTrip,
        _settings = settings,
        super(NewTripState.normal(languageCode: deviceLocale.languageCode)) {
    if (_existingTrip != null) {
      state.mapOrNull(
        normal: (state) {
          emit(state.copyWith(
            tripName: _existingTrip!.name,
            tripDescription: _existingTrip!.description,
          ));
        },
      );
    }
  }

  void nameChanged(String tripName) {
    state.mapOrNull(normal: (state) => emit(state.copyWith(tripName: tripName)));
  }

  void descriptionChanged(String tripDescription) {
    state.mapOrNull(normal: (state) => emit(state.copyWith(tripDescription: tripDescription)));
  }

  void startDateChanged(DateTime startDate) {
    state.mapOrNull(
        normal: (state) => emit(state.copyWith(
            startDate: startDate,
            isStartDateBeforeToday:
                startDate.isBefore(DateTime.now().add(const Duration(days: -1))))));
  }

  void isPublicChanged(bool selected) {
    state.mapOrNull(normal: (state) => emit(state.copyWith(isPublic: selected)));
  }

  void languageCodeChanged(String languageCode) {
    state.mapOrNull(normal: (state) => emit(state.copyWith(languageCode: languageCode)));
  }

  createTrip() async {
    state.mapOrNull(
      normal: (state) async {
        if (state.tripName == null || state.tripName!.isEmpty) {
          emitError(errorMessage: LocaleKeys.tripNameEmpty.tr());
          return;
        }

        if (state.startDate == null) {
          emitError(errorMessage: LocaleKeys.tripStartDateEmpty.tr());
          return;
        }

        final normalState = state;
        emit(const NewTripState.saving());

        assert(_userCubit.state is UserStateLoggedIn);
        final userId = (_userCubit.state as UserStateLoggedIn).user.id;

        final Either<TripsFailure, void> result;
        if (_existingTrip == null) {
          result = await _createTrip(CreateTripParams(
            userId: userId,
            tripName: state.tripName!,
            tripDescription: state.tripDescription,
            startDate: state.startDate!,
            isPublic: state.isPublic,
            languageCode: state.languageCode,
          ));
        } else {
          result = await _createFromExistingTrip(CreateFromExistingTripParams(
            userId: userId,
            tripName: state.tripName!,
            tripDescription: state.tripDescription,
            startDate: state.startDate!,
            isPublic: state.isPublic,
            existingTrip: _existingTrip!,
            showDirections: _settings.showDirections,
            useDifferentDirectionsColors: _settings.useDifferentDirectionsColors,
          ));
        }

        result.fold(
          (failure) {
            String errorMessage = LocaleKeys.tripSaveError.tr();
            failure.when(
              (message) {
                if (message != null) {
                  errorMessage += "\n\n$message";
                }
              },
              noInternetConnection: () =>
                  errorMessage += "\n\n${LocaleKeys.noInternetConnectionMessage.tr()}",
            );
            emitError(errorMessage: errorMessage, previousState: normalState);
          },
          (_) {
            emit(const NewTripState.created());
          },
        );
      },
    );
  }

  emitError({required String errorMessage, NewTripState? previousState}) {
    final currentState = previousState ?? state;

    emit(NewTripState.error(errorMessage: errorMessage));
    emit(currentState);
  }
}
