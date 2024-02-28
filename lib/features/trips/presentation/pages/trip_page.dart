import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/utilities/extensions.dart';
import '../../../../core/widgets/snackbars.dart';
import '../../../ui/presentation/widgets/background/background_image_wrapper.dart';
import '../../../ui/presentation/widgets/background/scaffold_transparent.dart';
import '../../../../core/widgets/trip_pages_animated_switcher.dart';
import '../../domain/entities/trip.dart';
import '../cubit/trip/trip_cubit.dart';
import '../widgets/new_edit_trip_form/new_edit_trip_form.dart';
import '../widgets/trip_page/loaded_widget/trip_page_loaded_widget.dart';
import '../widgets/trip_page/save_cancel_edit_buttons.dart';
import '../widgets/trip_page/trip_error_widget.dart';
import '../widgets/trip_page/trip_page_initial_widget.dart';

@RoutePage()
class TripPage extends HookWidget {
  final Trip _trip;
  const TripPage(this._trip, {super.key});

  @override
  Widget build(BuildContext context) {
    final isSaving = useStreamController<bool>();
    final errorMessageStream = useStreamController<String?>();

    final isModalBottomEditing = useRef<bool>(false);

    return BlocProvider<TripCubit>(
      create: (context) => getIt<TripCubit>(param1: _trip)..startListenDayTrips(),
      child: ScaffoldTransparent(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: _TripPageAppBar(),
        ),
        body: MultiBlocListener(
          listeners: [
            BlocListener<TripCubit, TripState>(
              //Show snackbar when error is not fatal and is not editing
              listenWhen: (previous, current) => current.maybeMap(
                error: (state) => !state.fatal && isModalBottomEditing.value == false,
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
              //Show modal bottom sheet if editing
              listenWhen: (previous, current) => current.maybeMap(
                editing: (_) => current.runtimeType != previous.runtimeType,
                orElse: () => false,
              ),
              listener: (context, state) {
                _showModalBottomEditing(
                    context, isSaving, isModalBottomEditing, errorMessageStream);
              },
            ),
            //Close modal bottom sheet if editing dismissed
            BlocListener<TripCubit, TripState>(
              listenWhen: (previous, current) => current.maybeMap(
                loaded: (_) => previous.maybeMap(
                  editing: (_) => true,
                  orElse: () => false,
                ),
                orElse: () => false,
              ),
              listener: (context, state) {
                if (isModalBottomEditing.value) {
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
                loaded: (_) => const Center(key: ValueKey('loaded'), child: TripPageLoadedWidget()),
                error: (state) => Center(
                  key: const ValueKey('error'),
                  child: TripErrorWidget(message: state.errorMessage),
                ),
                orElse: () => throw UnimplementedError(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _showModalBottomEditing(BuildContext context, StreamController<bool> isSaving,
      ObjectRef isModalBottomEditing, StreamController<String?> errorMessage) {
    final cubit = context.read<TripCubit>();
    isModalBottomEditing.value = true;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      useRootNavigator: true,
      isDismissible: false,
      useSafeArea: true,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: NewEditTripForm(
            onDescriptionChanged: (String value) => cubit.descriptionChanged(value),
            onNameChanged: (String value) => cubit.nameChanged(value),
            onStartDateChanged: (DateTime value) => cubit.startDateChanged(value),
            onLanguageCodeChanged: (String value) => cubit.languageCodeChanged(value),
            saveSection: SaveCancelEditButtons(
              isSaving: isSaving.stream,
              onCancel: () => cubit.modalBottomEditingDismissed(),
              onSave: () => cubit.saveChanges(),
              errorMessage: errorMessage.stream,
            ),
            isSaving: isSaving.stream,
            initialTripName: cubit.state.trip.name,
            initialTripDescription: cubit.state.trip.description,
            initialStartDate: cubit.state.trip.startDate,
            onIsPublicChanged: (bool value) => cubit.isPublicChanged(value),
            initialIsPublic: cubit.state.trip.isPublic,
            initialLanguageCode:
                cubit.state.trip.languageCode ?? getIt<String>(instanceName: deviceLocaleKey),
          ),
        );
      },
    ).then((_) {
      isModalBottomEditing.value = false;
      cubit.modalBottomEditingDismissed();
    });
  }
}

class _TripPageAppBar extends StatelessWidget with BackgroundImageMixin {
  const _TripPageAppBar();

  @override
  Widget build(BuildContext context) {
    final tripName = context.select<TripCubit, String>((cubit) => cubit.state.trip.name);

    final hasBackgroundImage = this.hasBackgroundImage(context);

    return AppBar(
      title: Text(tripName),
      backgroundColor: context.isDarkMode ? appBarDarkColor : appBarLightColor,
      scrolledUnderElevation: hasBackgroundImage ? 0 : null,
      actions: [
        IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () => context.read<TripCubit>().edit(),
        ),
      ],
    );
  }
}
