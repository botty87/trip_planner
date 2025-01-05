import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

@module
abstract class BlocObserModule {
  @lazySingleton
  BlocObserver blocObserver(Talker talker) => TalkerBlocObserver(
        talker: talker,
        settings: const TalkerBlocLoggerSettings(
          printChanges: true,
          printEvents: true,
          printTransitions: true,
          printCreations: true,
          printClosings: true,
        ),
      );
}
