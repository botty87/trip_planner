import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'tutorials_state.dart';

class TutorialsCubit extends Cubit<TutorialsState> {
  TutorialsCubit() : super(TutorialsInitial());
}
