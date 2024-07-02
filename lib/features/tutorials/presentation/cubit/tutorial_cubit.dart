import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/tutorials_data.dart';
import '../../domain/usecases/update_tutorials_data.dart';

part 'tutorial_cubit.freezed.dart';
part 'tutorial_state.dart';

@injectable
class TutorialCubit extends Cubit<TutorialState> {
  final UpdateTutorialsData _updateTutorialsData;

  TutorialCubit({
    required UpdateTutorialsData updateTutorialsData,
  })  : _updateTutorialsData = updateTutorialsData,
        super(const TutorialsData().toTutorialState());

  void updateTutorialsDataFromUser(TutorialsData? tutorialsData) {
    emit(tutorialsData?.toTutorialState() ?? const TutorialsData().toTutorialState());
  }

  void onWelcomeDone() {
    emit(state.copyWith(showWelcome: false));
    _updateTutorialsData(UpdateTutorialsDataParams(state.toTutorialsData()));
  }

  void onPublicTripDone() {
    emit(state.copyWith(showPublicTrip: false));
    _updateTutorialsData(UpdateTutorialsDataParams(state.toTutorialsData()));
  }

  void onCreateFromPublicTripDone() {
    emit(state.copyWith(showCreateFromPublicTrip: false));
    _updateTutorialsData(UpdateTutorialsDataParams(state.toTutorialsData()));
  }

  void onShowTripStopSlideAndPlaceholder() {
    emit(state.copyWith(showTripStopSlide: false, showTripStopTravelPlaceholder: false));
    _updateTutorialsData(UpdateTutorialsDataParams(state.toTutorialsData()));
  }

  void onShareTripDone() {
    emit(state.copyWith(showShareTrip: false, showTripStopTravelPlaceholder: false));
    _updateTutorialsData(UpdateTutorialsDataParams(state.toTutorialsData()));
  }
}
