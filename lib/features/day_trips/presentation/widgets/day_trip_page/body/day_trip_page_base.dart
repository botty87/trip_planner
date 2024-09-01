import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../../core/constants.dart';
import '../../../../../../core/error/exceptions.dart';
import '../../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../../core/utilities/extensions.dart';
import '../../../../../../ui/widgets/background/scaffold_transparent.dart';
import '../../../../../../ui/widgets/generics/snackbars.dart';
import '../../../../../../ui/widgets/generics/trip_pages_animated_switcher.dart';
import '../../../../../trips/presentation/widgets/trip_page/save_cancel_edit_buttons.dart';
import '../../../cubit/day_trip/day_trip_cubit.dart';
import '../../new_edit_day_trip_form/new_edit_day_trip_form.dart';
import '../day_trip_error_widget.dart';
import '../day_trip_page_initial_widget.dart';
import '../day_trip_page_loaded.dart';

class DayTripPageBaseLayout extends StatelessWidget {
  const DayTripPageBaseLayout({
    super.key,
    required this.isSaving,
    required this.isModalBottomEditing,
    required this.errorMessageStream,
    this.tabController,
    required this.orientation,
  })
  //Assert that tabController is not null if orientation is portrait
  : assert(orientation == Orientation.portrait ? tabController != null : true, 'tabController cannot be null');

  final StreamController<bool> isSaving;
  final ObjectRef isModalBottomEditing;
  final StreamController<String?> errorMessageStream;
  final TabController? tabController;
  final Orientation orientation;

  @override
  Widget build(BuildContext context) {
    return ScaffoldTransparent(
      hasBackgroundImage: context.hasBackgroundImage,
      appBar: _buildAppBar(context, orientation, tabController: tabController),
      body: MultiBlocListener(
        listeners: [
          //Show snackbar when error is not fatal and is not editing
          BlocListener<DayTripCubit, DayTripState>(
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
          //On delete, pop page
          BlocListener<DayTripCubit, DayTripState>(
            listenWhen: (previous, current) => current.maybeMap(
              deleted: (_) => true,
              orElse: () => false,
            ),
            listener: (context, state) => context.router.maybePop(),
          ),
          BlocListener<DayTripCubit, DayTripState>(
            //Show modal bottom sheet if editing
            listenWhen: (previous, current) => current.maybeMap(
              editing: (_) => current.runtimeType != previous.runtimeType,
              orElse: () => false,
            ),
            listener: (context, state) {
              _showModalBottomEditing(context, isSaving, isModalBottomEditing, errorMessageStream);
            },
          ),
          //Close modal bottom sheet if editing dismissed
          BlocListener<DayTripCubit, DayTripState>(
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
        ],
        child: BlocBuilder<DayTripCubit, DayTripState>(
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
          builder: (context, state) {
            return TripPagesAnimatedSwitcher(
              child: state.maybeMap(
                initial: (_) => const DayTripPageInitialWidget(key: ValueKey('initial')),
                loaded: (_) =>
                    Center(key: const ValueKey('loaded'), child: DayTripPageLoaded(orientation: orientation)),
                error: (state) => Center(
                  key: const ValueKey('error'),
                  child: DayTripErrorWidget(message: state.errorMessage),
                ),
                orElse: () => throw UnimplementedError(),
              ),
            );
          },
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context, Orientation orientation, {TabController? tabController}) {
    return AppBar(
      title: Text("${LocaleKeys.day.tr()} ${context.read<DayTripCubit>().state.dayTrip.index + 1}"),
      backgroundColor: context.isDarkMode ? appBarDarkColor : appBarLightColor,
      actions: [
        IconButton(
          icon: const Icon(Icons.edit),
          onPressed: () => context.read<DayTripCubit>().edit(),
        ),
      ],
      bottom: orientation == Orientation.portrait
          ? PreferredSize(
              preferredSize: const Size.fromHeight(48),
              child: TabBar(
                controller: tabController,
                tabs: [
                  Tab(icon: Icon(Icons.list, semanticLabel: LocaleKeys.list.tr())),
                  Tab(icon: Icon(Icons.map, semanticLabel: LocaleKeys.map.tr())),
                ],
                indicator: const UnderlineTabIndicator(borderSide: BorderSide.none),
                dividerColor: Colors.transparent,
              ),
            )
          : null,
    );
  }

  _showModalBottomEditing(BuildContext context, StreamController<bool> isSaving, ObjectRef isModalBottomEditing,
      StreamController<String?> errorMessage) {
    final cubit = context.read<DayTripCubit>();
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
          padding: const EdgeInsets.all(16),
          child: Padding(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: NewEditDayTripForm(
              isSaving: isSaving.stream,
              onDescriptionChanged: (description) => cubit.descriptionChanged(description),
              initialDayTripDescription: cubit.state.dayTrip.description,
              saveSection: SaveCancelEditButtons(
                isSaving: isSaving.stream,
                onCancel: () => cubit.cancelEditing(),
                onSave: () => cubit.saveChanges(),
                errorMessage: errorMessage.stream,
              ),
            ),
          ),
        );
      },
    ).then((_) {
      isModalBottomEditing.value = false;
      cubit.modalBottomEditingDismissed();
    });
  }
}
