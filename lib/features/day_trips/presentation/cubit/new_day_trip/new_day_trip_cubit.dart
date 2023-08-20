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
        super(NewDayTripState.normal());

  descriptionChanged(String value) {
    emit(state.copyWith(description: value));
  }

  createDayTrip() async {
    emit(NewDayTripState.saving(description: state.description));

    final result = await _createDayTrip(CreateDayTripParams(
      description: state.description,
      tripId: _tripId,
    ));

    result.fold(
      (failure) {
        emit(NewDayTripState.error(
          description: state.description,
          errorMessage: failure.message ?? LocaleKeys.unknownErrorRetry.tr(),
        ));
        emit(NewDayTripState.normal(description: state.description));
      },
      (_) {
        emit(NewDayTripState.created());
      },
    );
  }
}
