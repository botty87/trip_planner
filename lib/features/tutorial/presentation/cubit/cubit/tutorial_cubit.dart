import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/usecases/usecase.dart';
import '../../../../user_account/domain/usecases/hide_show_welcome.dart';

part 'tutorial_state.dart';
part 'tutorial_cubit.freezed.dart';

@injectable
class TutorialCubit extends Cubit<TutorialState> {
  final HideShowWelcome _hideShowWelcome;

  TutorialCubit(this._hideShowWelcome) : super(const TutorialState());

  void onDone() => _hideShowWelcome(const NoParams());
}
