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
import '../../../tutorials/presentation/cubit/tutorial_cubit.dart';
import '../../../ui/presentation/widgets/background/background_image_wrapper.dart';
import '../../../ui/presentation/widgets/background/scaffold_transparent.dart';
import '../../../ui/presentation/widgets/generics/snackbars.dart';
import '../../../ui/presentation/widgets/generics/trip_pages_animated_switcher.dart';
import '../../../user_account/presentation/cubit/user/user_cubit.dart';
import '../../domain/entities/trip.dart';
import '../cubit/share/share_cubit.dart';
import '../cubit/trip/trip_cubit.dart';
import '../widgets/new_edit_trip_form/new_edit_trip_form.dart';
import '../widgets/sharing_section/sharing_trip_section.dart';
import '../widgets/trip_page/loaded_widget/trip_page_loaded_widget.dart';
import '../widgets/trip_page/save_cancel_edit_buttons.dart';
import '../widgets/trip_page/trip_error_widget.dart';
import '../widgets/trip_page/trip_page_initial_widget.dart';

part '../widgets/trip_page/editing_modal_bottom.dart';
part '../widgets/trip_page/sharing_modal_bottom.dart';

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

    return BlocProvider<TripCubit>(
      create: (context) => getIt<TripCubit>(param1: _trip)
        ..startListenDayTrips()
        ..startListenTrip(),
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
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: _TripPageAppBar(showShareButton),
            ),
            body: MultiBlocListener(
              listeners: [
                BlocListener<TripCubit, TripState>(
                  //Show snackbar when error is not fatal and is not editing
                  listenWhen: (previous, current) => current.maybeMap(
                    error: (state) => !state.fatal && !isModalBottomOpen.value,
                    orElse: () => false,
                  ),
                  listener: (context, state) {
                    final errorMessage = state.maybeMap(
                      error: (state) => state.errorMessage,
                      orElse: () => throw const UnexpectedStateException(),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(Snackbars.error(errorMessage));
                  },
                ),
                BlocListener<TripCubit, TripState>(
                  //Show editing modal bottom sheet if editing
                  listenWhen: (previous, current) => current.maybeMap(
                    editing: (_) => current.runtimeType != previous.runtimeType,
                    orElse: () => false,
                  ),
                  listener: (context, state) {
                    _showEditingModalBottom(
                        context, isSaving, isModalBottomOpen, errorMessageStream);
                  },
                ),

                //Close modal bottom sheet if modal bottom dismissed
                BlocListener<TripCubit, TripState>(
                  listenWhen: (previous, current) => current.maybeMap(
                    loaded: (_) => previous.maybeMap(
                      editing: (_) => true,
                      orElse: () => false,
                    ),
                    orElse: () => false,
                  ),
                  listener: (context, state) {
                    if (isModalBottomOpen.value) {
                      Navigator.of(context).pop();
                    }
                  },
                ),
                //On modal error, update errorMessage stream
                BlocListener<TripCubit, TripState>(
                  listenWhen: (previous, current) => current.maybeMap(
                    editing: (currentEditingState) => previous.maybeMap(
                      editing: (previousEditingState) =>
                          currentEditingState.errorMessage != previousEditingState.errorMessage,
                      orElse: () => false,
                    ),
                    orElse: () => false,
                  ),
                  listener: (context, state) {
                    final errorMessage = state.maybeMap(
                      editing: (state) => state.errorMessage,
                      orElse: () => throw const UnexpectedStateException(),
                    );
                    errorMessageStream.add(errorMessage);
                  },
                ),
                //Update isSaving stream
                BlocListener<TripCubit, TripState>(
                  listenWhen: (previous, current) => current.maybeMap(
                    editing: (currentEditingState) => previous.maybeMap(
                      editing: (previousEditingState) =>
                          currentEditingState.isSaving != previousEditingState.isSaving,
                      orElse: () => false,
                    ),
                    orElse: () => false,
                  ),
                  listener: (context, state) {
                    final isSavingValue = state.maybeMap(
                      editing: (state) => state.isSaving,
                      orElse: () => throw const UnexpectedStateException(),
                    );
                    isSaving.add(isSavingValue);
                  },
                ),
                //On trip deleted, pop page
                BlocListener<TripCubit, TripState>(
                  listenWhen: (previous, current) => current.maybeMap(
                    deleted: (_) => true,
                    orElse: () => false,
                  ),
                  listener: (context, state) {
                    Navigator.of(context).pop();
                  },
                ),
              ],
              child: BlocBuilder<TripCubit, TripState>(
                buildWhen: (previous, current) => current.maybeMap(
                  deleting: (_) => false,
                  error: (state) => state.fatal,
                  deleted: (_) => false,
                  orElse: () =>
                      previous.runtimeType != current.runtimeType &&
                      previous.maybeMap(
                        error: (value) => value.fatal,
                        orElse: () => true,
                      ) &&
                      current.maybeMap(
                        editing: (_) => false,
                        orElse: () => true,
                      ),
                ),
                builder: (context, state) => TripPagesAnimatedSwitcher(
                  child: state.maybeMap(
                    initial: (_) => const TripPageInitialWidget(key: ValueKey('initial')),
                    loaded: (_) =>
                        const Center(key: ValueKey('loaded'), child: TripPageLoadedWidget()),
                    error: (state) => Center(
                      key: const ValueKey('error'),
                      child: TripErrorWidget(message: state.errorMessage),
                    ),
                    orElse: () => throw UnimplementedError(),
                  ),
                ),
              ),
            ),
          );
        },
        onFinish: () => context.read<TutorialCubit>().onShareTripDone(),
      ),
    );
  }
}

class _TripPageAppBar extends StatelessWidget with BackgroundImageMixin {
  final bool showShareButton;

  const _TripPageAppBar(this.showShareButton);

  @override
  Widget build(BuildContext context) {
    final tripName = context.select<TripCubit, String>((cubit) => cubit.state.trip.name);

    final hasBackgroundImage = this.hasBackgroundImage(context);

    return AppBar(
      title: Text(tripName),
      backgroundColor: context.isDarkMode ? appBarDarkColor : appBarLightColor,
      scrolledUnderElevation: hasBackgroundImage ? 0 : null,
      actions: [
        if (showShareButton)
          Showcase(
            key: _showCaseKeyOne,
            title: 'Share',
            description: 'Share this trip with your friends',
            child: IconButton(
              icon: const Icon(Icons.share),
              onPressed: () => _showSharingModalBottom(context),
            ),
          ),
        IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () => context.read<TripCubit>().edit(),
        ),
      ],
    );
  }
}
