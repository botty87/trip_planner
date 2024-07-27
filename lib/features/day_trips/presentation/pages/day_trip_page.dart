import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/utilities/extensions.dart';
import '../../../trips/domain/entities/trip.dart';
import '../../../../ui/widgets/background/scaffold_transparent.dart';
import '../../../../ui/widgets/generics/snackbars.dart';
import '../../../../ui/widgets/generics/trip_pages_animated_switcher.dart';
import '../../domain/entities/day_trip.dart';
import '../cubit/day_trip/day_trip_cubit.dart';
import '../cubit/trip_stops_map/trip_stops_map_cubit.dart';
import '../widgets/day_trip_page/day_trip_error_widget.dart';
import '../widgets/day_trip_page/day_trip_page_initial_widget.dart';
import '../widgets/day_trip_page/day_trip_page_loaded.dart';
import '../widgets/day_trip_page/list_tab/save_cancel_edit_buttons.dart';
import '../widgets/new_edit_day_trip_form/new_edit_day_trip_form.dart';

@RoutePage()
class DayTripPage extends HookWidget {
  const DayTripPage({super.key, required Trip trip, required DayTrip dayTrip})
      : _trip = trip,
        _dayTrip = dayTrip;

  final Trip _trip;
  final DayTrip _dayTrip;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DayTripCubit>(
          create: (context) => getIt(param1: _trip, param2: _dayTrip)
            //TODO replace with injectable init
            ..startListenTripStops()
            ..startListenDayTrip(),
        ),
        BlocProvider<TripStopsMapCubit>(
          create: (context) => getIt(param1: _trip, param2: _dayTrip),
        ),
      ],
      child: const _Body(),
    );
  }
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    //Instantiate the tab controller and add the listener to it
    final tabController = useTabController(initialLength: 2, initialIndex: 0);
    useEffect(() {
      tabController.addListener(() {
        final index = tabController.index;
        context.read<DayTripCubit>().setCurrentSelectedTab(index);
      });
      return null;
    }, [tabController]);

    final isModalBottomEditing = useRef<bool>(false);

    final isSaving = useStreamController<bool>();
    final errorMessageStream = useStreamController<String?>();

    return PopScope(
        canPop: false,
        onPopInvoked: (bool didPop) async {
          if (didPop) {
            return;
          }

          final success = await _onWillPop(context);

          if (success && context.mounted) {
            Navigator.of(context).pop();
          }
        },
        child: OrientationBuilder(builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _verticalLayout(context, isSaving, isModalBottomEditing, errorMessageStream, tabController);
          } else {
            return _horizontalLayout(context, isSaving, isModalBottomEditing, errorMessageStream);
          }
        }));
  }

  Widget _verticalLayout(BuildContext context, StreamController<bool> isSaving, ObjectRef isModalBottomEditing,
      StreamController<String?> errorMessageStream, TabController tabController) {
    return _horizontalLayout(context, isSaving, isModalBottomEditing, errorMessageStream,
        orientation: Orientation.portrait, tabController: tabController);
  }

  Widget _horizontalLayout(BuildContext context, StreamController<bool> isSaving, ObjectRef isModalBottomEditing,
      StreamController<String?> errorMessageStream,
      {Orientation orientation = Orientation.landscape, TabController? tabController}) {
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

  Future<bool> _onWillPop(BuildContext context) async {
    return context.read<DayTripCubit>().saveDayTripStopStartTime(forced: true);
  }

  PreferredSizeWidget _buildAppBar(
    BuildContext context,
    Orientation orientation, {
    TabController? tabController,
  }) {
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
