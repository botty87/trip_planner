import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../user_account/domain/entities/user.dart';
import '../../../domain/entities/tutorials_data.dart';
import '../../../domain/usecases/update_tutorials_data.dart';

part 'tutorial_cubit.freezed.dart';
part 'tutorial_state.dart';

@injectable
class TutorialCubit extends Cubit<TutorialState> {
  final UpdateTutorialsData _updateTutorialsData;

  TutorialCubit({
    required User user,
    required UpdateTutorialsData hideShowWelcome,
  })  : _updateTutorialsData = hideShowWelcome,
        super(user.tutorialsData.toTutorialState());

  //TODO implement test
  void onWelcomeDone() {
    emit(state.copyWith(showWelcome: false));
    _updateTutorialsData(UpdateTutorialsDataParams(state.toTutorialsData()));
  }

  //TODO implement test
  void onPublicTripDone() {
    emit(state.copyWith(showPublicTrip: false));
    _updateTutorialsData(UpdateTutorialsDataParams(state.toTutorialsData()));
  }
}
