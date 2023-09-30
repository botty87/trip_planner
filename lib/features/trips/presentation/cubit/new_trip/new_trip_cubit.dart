import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../domain/usecases/create_trip.dart';
import '../../../../user_account/presentation/cubit/user/user_cubit.dart';

part 'new_trip_cubit.freezed.dart';
part 'new_trip_state.dart';

@injectable
class NewTripCubit extends Cubit<NewTripState> {
  final CreateTrip _createTrip;
  final UserCubit _userCubit;

  NewTripCubit(this._userCubit, this._createTrip) : super(const NewTripState.normal());

  void nameChanged(String tripName) {
    emit(state.copyWith(tripName: tripName));
  }

  void descriptionChanged(String tripDescription) {
    emit(state.copyWith(tripDescription: tripDescription));
  }

  void startDateChanged(DateTime startDate) {
    emit(state.copyWith(
        startDate: startDate,
        isStartDateBeforeToday: startDate.isBefore(DateTime.now().add(const Duration(days: -1)))));
  }

  createTrip() async {
    if (state.tripName == null || state.tripName!.isEmpty) {
      emitError(LocaleKeys.tripNameEmpty.tr());
      return;
    }

    if (state.startDate == null) {
      emitError(LocaleKeys.tripStartDateEmpty.tr());
      return;
    }

    emit(NewTripState.saving(
        tripName: state.tripName,
        tripDescription: state.tripDescription,
        startDate: state.startDate,
        isStartDateBeforeToday: state.isStartDateBeforeToday));

    assert(_userCubit.state is UserStateLoggedIn);
    final userId = (_userCubit.state as UserStateLoggedIn).user.id;
    final result = await _createTrip(CreateTripParams(
      userId: userId,
      tripName: state.tripName!,
      tripDescription: state.tripDescription,
      startDate: state.startDate!,
    ));

    result.fold(
      (failure) {
        String errorMessage = LocaleKeys.tripSaveError.tr();
        if (failure.message != null) {
          errorMessage += "\n\n${failure.message!}";
        }
        emitError(errorMessage);
      },
      (_) {
        emit(const NewTripState.created());
      },
    );
  }

  emitError(String errorMessage) {
    emit(NewTripState.error(
        tripName: state.tripName,
        tripDescription: state.tripDescription,
        startDate: state.startDate,
        isStartDateBeforeToday: state.isStartDateBeforeToday,
        errorMessage: errorMessage));
    emit(NewTripState.normal(
        tripName: state.tripName,
        tripDescription: state.tripDescription,
        isStartDateBeforeToday: state.isStartDateBeforeToday,
        startDate: state.startDate));
  }
}
