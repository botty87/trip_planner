import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import '../../../../../core/constants.dart';
import '../../cubit/trip/trip_cubit.dart';
import 'add_day_trip_card.dart';
import 'day_trips_list.dart';
import 'delete_trip_button.dart';
import 'trip_header.dart';

class TripPageLoadedWidget extends HookWidget {
  const TripPageLoadedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).smallerOrEqualTo(MOBILE)) {
      return const _VerticalLayout();
    } else {
      return OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return const _VerticalLayout();
          } else {
            return const _HorizontalLayout();
          }
        },
      );
    }
    return SafeArea(
      //bottom: false,
      child: Builder(builder: (context) {
        if (ResponsiveBreakpoints.of(context).smallerOrEqualTo(MOBILE)) {
          return const _VerticalLayout();
        } else {
          return OrientationBuilder(
            builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                return const _VerticalLayout();
              } else {
                return const _HorizontalLayout();
              }
            },
          );
        }
      }),
    );
  }
}

class _VerticalLayout extends StatelessWidget {
  const _VerticalLayout();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: defaultPagePadding,
      child: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final maxWidth = ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                ? constraints.maxWidth * 0.8
                : constraints.maxWidth;

            return ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: maxWidth,
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: verticalSpaceXL),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    BlocSelector<TripCubit, TripState, String?>(
                      selector: (state) => state.trip.description,
                      builder: (context, description) => TripHeader(headerText: description),
                    ),
                    const DayTripsList(),
                    const SizedBox(height: verticalSpaceS),
                    const AddDayTripCard(),
                    const SizedBox(height: verticalSpaceL),
                    const DeleteTripButton(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _HorizontalLayout extends StatelessWidget {
  const _HorizontalLayout();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
    /* return Padding(
      padding: const EdgeInsets.symmetric(horizontal: pageHorizontalPadding),
      child: Column(children: [
        Expanded(
          child: Row(
            children: [
              const Expanded(child: SingleChildScrollView(child: _DayTripsList())),
              const SizedBox(width: horizontalSpaceL),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: SingleChildScrollView(
                        child: BlocSelector<TripCubit, TripState, String?>(
                          selector: (state) => state.trip.description,
                          builder: (context, description) => _TripHeader(headerText: description),
                        ),
                      ),
                    ),
                    const _AddDayTripCard(),
                    const SizedBox(height: verticalSpaceXL),
                    _DeleteTripButton(isDeleting: isDeleting),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    ); */
  }
}
