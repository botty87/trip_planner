import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/usecases/usecase.dart';
import '../../../../user_account/domain/entities/user.dart';
import '../../../domain/usecases/hide_show_public_trip.dart';
import '../../../domain/usecases/hide_show_welcome.dart';
import '../../../domain/entities/tutorials_state.dart';

part 'tutorial_cubit.freezed.dart';
part 'tutorial_state.dart';

@injectable
class TutorialCubit extends Cubit<TutorialState> {
  final HideShowWelcome _hideShowWelcome;
  final HideShowPublicTrip _hideShowPublicTrip;

  TutorialCubit({
    required User user,
    required HideShowWelcome hideShowWelcome,
    required HideShowPublicTrip hideShowPublicTrip,
  })  : _hideShowWelcome = hideShowWelcome,
        _hideShowPublicTrip = hideShowPublicTrip,
        super(user.tutorialsState.toTutorialState());

  //TODO implement test
  void onWelcomeDone() {
    _hideShowWelcome(const NoParams());
    emit(state.copyWith(showWelcome: false));
  }

  //TODO implement test
  void onPublicTripDone() {
    _hideShowPublicTrip(const NoParams());
    emit(state.copyWith(showPublicTrip: false));
  }
}
