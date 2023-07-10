import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../domain/usecases/create_day_trip.dart';

part 'new_day_trip_state.dart';
part 'new_day_trip_cubit.freezed.dart';

@injectable
class NewDayTripCubit extends Cubit<NewDayTripState> {
  final String _tripId;
  final CreateDayTrip _createDayTrip;

  NewDayTripCubit({required CreateDayTrip createDayTrip, @factoryParam required String tripId})
      : _createDayTrip = createDayTrip,
        _tripId = tripId,
        super(NewDayTripState());

  nameChanged(String value) {
    emit(state.copyWith(name: value));
  }

  descriptionChanged(String value) {
    emit(state.copyWith(description: value));
  }

  createDayTrip() async {
    if (state.name == null || state.name!.isEmpty) {
      emit(state.copyWith(errorMessage: LocaleKeys.dayTripNameEmpty.tr()));
      emit(state.copyWith(errorMessage: null));
      return;
    }

    emit(state.copyWith(isSaving: true));

    final result = await _createDayTrip(CreateDayTripParams(
      name: state.name!,
      description: state.description,
      tripId: _tripId,
    ));

    result.fold(
      (failure) {
        emit(state.copyWith(
          isSaving: false,
          errorMessage: failure.message ?? LocaleKeys.unknownErrorRetry.tr(),
        ));
      },
      (_) {
        emit(state.copyWith(
          isSaving: false,
          createSuccess: true,
        ));
      },
    );
  }
}
