import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../core/utilities/extensions.dart';
import '../../../ui/presentation/widgets/generics/snackbars.dart';
import '../../../ui/presentation/widgets/background/background_image_wrapper.dart';
import '../../../ui/presentation/widgets/background/scaffold_transparent.dart';
import '../../../ui/presentation/widgets/generics/trip_pages_animated_switcher.dart';
import '../../../trips/domain/entities/trip.dart';
import '../../domain/entities/day_trip.dart';
import '../cubit/day_trip/day_trip_cubit.dart';
import '../cubit/trip_stops_map/trip_stops_map_cubit.dart';
import '../widgets/day_trip_page/day_trip_error_widget.dart';
import '../widgets/day_trip_page/day_trip_page_initial_widget.dart';
import '../widgets/day_trip_page/day_trip_page_loaded.dart';
import '../widgets/day_trip_page/list_tab/save_cancel_edit_buttons.dart';
import '../widgets/new_edit_day_trip_form/new_edit_day_trip_form.dart';

@RoutePage()
class DayTripPage extends HookWidget with BackgroundImageMixin {
  final Trip _trip;
  final DayTrip _dayTrip;

  const DayTripPage({super.key, required Trip trip, required DayTrip dayTrip})
      : _trip = trip,
        _dayTrip = dayTrip;

  @override
  Widget build(BuildContext context) {
    final isModalBottomEditing = useRef<bool>(false);

    final isSaving = useStreamController<bool>();
    final errorMessageStream = useStreamController<String?>();

    return MultiBlocProvider(
      providers: [
        BlocProvider<DayTripCubit>(
          create: (context) => getIt(param1: _trip, param2: _dayTrip)
            ..startListenTripStops()
            ..startListenDayTrip(),
        ),
        BlocProvider<TripStopsMapCubit>(
          create: (context) => getIt(param1: _trip, param2: _dayTrip),
        ),
      ],
      child: Builder(
        builder: (BuildContext context) {
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
            child: ResponsiveBreakpoints.of(context).smallerOrEqualTo(MOBILE)
                ? _verticalLayout(context, isSaving, isModalBottomEditing, errorMessageStream)
                : OrientationBuilder(builder: (context, orientation) {
                    if (orientation == Orientation.portrait) {
                      return _verticalLayout(
                          context, isSaving, isModalBottomEditing, errorMessageStream);
                    } else {
                      return _horizontalLayout(
                          context, isSaving, isModalBottomEditing, errorMessageStream);
                    }
                  }),
          );
        },
      ),
    );
  }

  Widget _verticalLayout(BuildContext context, StreamController<bool> isSaving,
      ObjectRef isModalBottomEditing, StreamController<String?> errorMessageStream) {
    return DefaultTabController(
      length: 2,
      child: _horizontalLayout(context, isSaving, isModalBottomEditing, errorMessageStream,
          orientation: Orientation.portrait),
    );
  }

  Widget _horizontalLayout(BuildContext context, StreamController<bool> isSaving,
      ObjectRef isModalBottomEditing, StreamController<String?> errorMessageStream,
      {Orientation orientation = Orientation.landscape}) {
    return ScaffoldTransparent(
      appBar: _buildAppBar(context, orientation),
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
        child: Builder(builder: (context) {
          return NotificationListener(
            onNotification: (notification) {
              if (orientation == Orientation.portrait && notification is ScrollEndNotification) {
                final tabIndex = DefaultTabController.of(context).index;
                context.read<TripStopsMapCubit>().selectTab(tabIndex == 1);
              }
              return false;
            },
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
                    loaded: (_) => Center(
                        key: const ValueKey('loaded'),
                        child: DayTripPageLoaded(
                          orientation: orientation,
                        )),
                    error: (state) => Center(
                      key: const ValueKey('error'),
                      child: DayTripErrorWidget(message: state.errorMessage),
                    ),
                    orElse: () => throw UnimplementedError(),
                  ),
                );
              },
            ),
          );
        }),
      ),
    );
  }

  Future<bool> _onWillPop(BuildContext context) async {
    return context.read<DayTripCubit>().saveDayTripStopStartTime(forced: true);
  }

  PreferredSizeWidget _buildAppBar(BuildContext context, Orientation orientation) {
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
                  tabs: [
                    Tab(icon: Icon(Icons.list, semanticLabel: LocaleKeys.list.tr())),
                    Tab(icon: Icon(Icons.map, semanticLabel: LocaleKeys.map.tr())),
                  ],
                  indicator: const UnderlineTabIndicator(borderSide: BorderSide.none),
                  dividerColor: Colors.transparent),
            )
          : null,
    );
  }

  _showModalBottomEditing(BuildContext context, StreamController<bool> isSaving,
      ObjectRef isModalBottomEditing, StreamController<String?> errorMessage) {
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
