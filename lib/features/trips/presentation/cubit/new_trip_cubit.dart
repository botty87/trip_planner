import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';

part 'new_trip_state.dart';
part 'new_trip_cubit.freezed.dart';

@injectable
class NewTripCubit extends Cubit<NewTripState> {
  NewTripCubit() : super(NewTripState());

  void tripNameChanged(String tripName) {
    emit(NewTripState(tripName: tripName));
  }

  void createTrip() {
    if (state.tripName == null || state.tripName!.isEmpty) {
      emit(NewTripState.error(
        tripName: state.tripName,
        message: LocaleKeys.tripNameEmpty.tr(),
      ));
    }
  }
}
