import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:showcaseview/showcaseview.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/utilities/extensions.dart';
import '../../../../ui/widgets/background/scaffold_transparent.dart';
import '../../../../ui/widgets/generics/snackbars.dart';
import '../../../../ui/widgets/generics/trip_pages_animated_switcher.dart';
import '../../../../ui/widgets/view_mode/view_mode_listener.dart';
import '../../../settings/domain/usecases/update_view_preferences.dart';
import '../../../tutorials/presentation/cubit/tutorial_cubit.dart';
import '../../../user_account/presentation/cubit/user/user_cubit.dart';
import '../../domain/entities/trip.dart';
import '../cubit/trip/trip_cubit.dart';
import '../widgets/new_edit_trip_form/new_edit_trip_form.dart';
import '../widgets/trip_page/loaded_widget/trip_page_loaded_widget.dart';
import '../widgets/trip_page/save_cancel_edit_buttons.dart';
import '../widgets/trip_page/trip_error_widget.dart';
import '../widgets/trip_page/trip_page_app_bar.dart';
import '../widgets/trip_page/trip_page_initial_widget.dart';

part '../widgets/trip_page/editing_modal_bottom.dart';

final _showCaseKeyOne = GlobalKey();

@RoutePage()
class TripPage extends HookWidget {
  final Trip _trip;
  const TripPage(this._trip, {super.key});

  @override
  Widget build(BuildContext context) {
    final isSaving = useStreamController<bool>();
    final errorMessageStream = useStreamController<String?>();

    final isModalBottomOpen = useRef<bool>(false);
    final tutorialShowed = useRef(false);

    final showShareButton = switch (context.read<UserCubit>().state) {
      final UserStateLoggedIn userState => userState.user.id == _trip.userId,
      _ => throw const UnexpectedStateException(message: 'User is not logged in'),
    };

    final viewMode = switch (context.read<UserCubit>().state) {
      final UserStateLoggedIn loggedInState => loggedInState.user.viewPreferences.tripsViewMode,
      _ => null,
    };

    return BlocProvider<TripCubit>(
      create: (context) => getIt<TripCubit>(param1: _trip, param2: viewMode),
      //Wrap in a builder to avoid TripCubit not found in onViewModeChanged
      child: Builder(builder: (context) {
        return ViewModeListener(
          viewModePage: ViewModePage.trip,
          onViewModeChanged: (viewMode) => context.read<TripCubit>().updateViewModeFromUser(viewMode),
          child: ShowCaseWidget(
            builder: (context) {
              final showTutorial = context.read<TutorialCubit>().state.showShareTrip && showShareButton;

              if (showTutorial && !tutorialShowed.value) {
                tutorialShowed.value = true;
                WidgetsBinding.instance.addPostFrameCallback((_) async {
                  await Future.delayed(const Duration(milliseconds: 500));
                  if (context.mounted) {
                    ShowCaseWidget.of(context).startShowCase([_showCaseKeyOne]);
                  }
                });
              }

              return ScaffoldTransparent(
                hasBackgroundImage: context.hasBackgroundImage,
                appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(kToolbarHeight),
                  child: TripPageAppBar(showShareButton: showShareButton, showCaseKeyOne: _showCaseKeyOne),
                ),
                body: MultiBlocListener(
                  //Listeners
                  listeners: [
                    BlocListener<TripCubit, TripState>(
                      //Show snackbar when error is not fatal and is not editing
                      listenWhen: (previous, current) => switch (current) {
                        TripStateError(:final fatal) => !fatal && !isModalBottomOpen.value,
                        _ => false,
                      },
                      listener: (context, state) {
                        final errorMessage = switch (state) {
                          TripStateError(:final errorMessage) => errorMessage,
                          _ => throw const UnexpectedStateException(),
                        };
                        ScaffoldMessenger.of(context).showSnackBar(Snackbars.error(errorMessage));
                      },
                    ),

                    //Show editing modal bottom sheet if editing
                    BlocListener<TripCubit, TripState>(
                      listenWhen: (previous, current) => switch (current) {
                        final TripStateEditing _ => switch (previous) {
                            final TripStateEditing _ => false,
                            _ => true,
                          },
                        _ => false,
                      },
                      listener: (context, state) =>
                          _showEditingModalBottom(context, isSaving, isModalBottomOpen, errorMessageStream),
                    ),

                    //Close modal bottom sheet if modal bottom dismissed
                    BlocListener<TripCubit, TripState>(
                      listenWhen: (previous, current) => switch (current) {
                        final TripStateLoaded _ => switch (previous) {
                            final TripStateEditing _ => true,
                            _ => false,
                          },
                        _ => false,
                      },
                      listener: (context, state) {
                        if (isModalBottomOpen.value) {
                          Navigator.of(context).pop();
                        }
                      },
                    ),

                    //On modal error, update errorMessage stream
                    BlocListener<TripCubit, TripState>(
                      listenWhen: (previous, current) => switch (current) {
                        final TripStateEditing currentEditingState => switch (previous) {
                            final TripStateEditing previousEditingState =>
                              currentEditingState.errorMessage != previousEditingState.errorMessage,
                            _ => false,
                          },
                        _ => false,
                      },
                      listener: (context, state) {
                        final errorMessage = switch (state) {
                          TripStateEditing(:final errorMessage) => errorMessage,
                          _ => throw const UnexpectedStateException(),
                        };
                        errorMessageStream.add(errorMessage);
                      },
                    ),

                    //Update isSaving stream
                    BlocListener<TripCubit, TripState>(
                      listenWhen: (previous, current) => switch (current) {
                        final TripStateEditing currentEditingState => switch (previous) {
                            final TripStateEditing previousEditingState =>
                              currentEditingState.isSaving != previousEditingState.isSaving,
                            _ => false,
                          },
                        _ => false,
                      },
                      listener: (context, state) {
                        final isSavingValue = switch (state) {
                          TripStateEditing(:final isSaving) => isSaving,
                          _ => throw const UnexpectedStateException(),
                        };
                        isSaving.add(isSavingValue);
                      },
                    ),
                    
                    //On trip deleted, pop page
                    BlocListener<TripCubit, TripState>(
                      listenWhen: (previous, current) => switch (current) {
                        TripStateDeleted _ => true,
                        _ => false,
                      },
                      listener: (context, state) => Navigator.of(context).pop(),
                    ),
                  ],

                  //Builder
                  child: BlocBuilder<TripCubit, TripState>(
                    buildWhen: (previous, current) {
                      return switch (current) {
                        TripStateDeleting _ => false,
                        TripStateError(:final fatal) => fatal,
                        TripStateDeleted _ => false,
                        _ => previous.runtimeType != current.runtimeType &&
                            switch (previous) {
                              TripStateError(:final fatal) => fatal,
                              _ => true,
                            } &&
                            switch (current) {
                              TripStateEditing _ => false,
                              _ => true,
                            },
                      };
                    },
                    builder: (context, state) => TripPagesAnimatedSwitcher(
                      child: switch (state) {
                        TripStateInitial _ => const TripPageInitialWidget(key: ValueKey('initial')),
                        TripStateLoaded _ => const Center(key: ValueKey('loaded'), child: TripPageLoadedWidget()),
                        TripStateError(:final errorMessage) => Center(
                            key: const ValueKey('error'),
                            child: TripErrorWidget(message: errorMessage),
                          ),
                        _ => throw UnimplementedError(),
                      },
                    ),
                  ),
                ),
              );
            },
            onFinish: () => context.read<TutorialCubit>().onShareTripDone(),
          ),
        );
      }),
    );
  }
}
