import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/settings/domain/entities/view_preferences.dart';
import '../../../features/settings/domain/usecases/update_view_preferences.dart';
import '../../../features/user_account/presentation/cubit/user/user_cubit.dart';

class ViewModeListener extends StatelessWidget {
  final ViewModePage viewModePage;
  final Function(ViewMode) onViewModeChanged;
  final Widget? child;

  const ViewModeListener({
    super.key,
    required this.viewModePage,
    required this.onViewModeChanged,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserCubit, UserState>(
      listenWhen: (previous, current) {
        final previousViewMode = switch (previous) {
          final UserStateLoggedIn loggedInState => loggedInState.user.viewPreferences.tripsViewMode,
          _ => null,
        };
        final currentViewMode = switch (current) {
          final UserStateLoggedIn loggedInState => loggedInState.user.viewPreferences.tripsViewMode,
          _ => null,
        };
        return previousViewMode != currentViewMode;
      },
      listener: (context, state) {
        if (state case final UserStateLoggedIn loggedInState) {
          switch (viewModePage) {
            case ViewModePage.trips:
              onViewModeChanged(loggedInState.user.viewPreferences.tripsViewMode);
            case ViewModePage.trip:
              onViewModeChanged(loggedInState.user.viewPreferences.tripViewMode);
            case ViewModePage.dayTrip:
              onViewModeChanged(loggedInState.user.viewPreferences.dayTripViewMode);
          }
        }
      },
      child: child,
    );
  }
}
