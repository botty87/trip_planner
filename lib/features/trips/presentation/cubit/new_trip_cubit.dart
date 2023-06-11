import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:trip_planner/features/trips/domain/usecases/create_trip.dart';
import 'package:trip_planner/features/user_account/presentation/cubit/user/user_cubit.dart';

part 'new_trip_state.dart';
part 'new_trip_cubit.freezed.dart';

@injectable
class NewTripCubit extends Cubit<NewTripState> {
  final CreateTrip _createTrip;
  final UserCubit _userCubit;

  NewTripCubit(this._userCubit, this._createTrip) : super(const NewTripState());

  void tripNameChanged(String tripName) {
    emit(state.copyWith(tripName: tripName));
  }

  void tripDescriptionChanged(String tripDescription) {
    emit(state.copyWith(tripDescription: tripDescription));
  }

  void createTrip() async {
    if (state.tripName == null || state.tripName!.isEmpty) {
      emit(state.copyWith(errorMessage: LocaleKeys.tripNameEmpty.tr()));
      emit(state.copyWith(errorMessage: null));
      return;
    }

    assert (_userCubit.state is UserStateLoggedIn);
    final userId = (_userCubit.state as UserStateLoggedIn).user.id;
    final result = await _createTrip(CreateTripParams(
      userId: userId,
      tripName: state.tripName!,
      tripDescription: state.tripDescription,
    ));

    result.fold(
      (failure) {
        String errorMessage = LocaleKeys.tripSaveError.tr();
        if(failure.message != null) {
          errorMessage += "\n\n${failure.message!}";
        }
        emit(state.copyWith(errorMessage: errorMessage));
      },
      (_) => emit(state.copyWith(errorMessage: null)),
    );
  }
}
