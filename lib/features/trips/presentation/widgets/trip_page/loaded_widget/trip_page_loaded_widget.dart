import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../../cubit/trip/trip_cubit.dart';
import 'trip_page_loaded_horizontal_layout.dart';
import 'trip_page_loaded_vertical_layout.dart';

class TripPageLoadedWidget extends StatelessWidget {
  //Used for testing to avoid ResponsiveBreakpoints.of(context) trouble
  final bool isTest;
  const TripPageLoadedWidget({super.key, this.isTest = false});

  @override
  Widget build(BuildContext context) {
    final absorbed = context.select((TripCubit cubit) => cubit.state.maybeMap(
          deleting: (_) => true,
          orElse: () => false,
        ));

    return AbsorbPointer(
      absorbing: absorbed,
      child: Column(
        children: [
          absorbed ? const LinearProgressIndicator() : const SizedBox.shrink(),
          Expanded(
            child: Builder(
              builder: (context) {
                if (ResponsiveBreakpoints.of(context).smallerOrEqualTo(MOBILE) && !isTest) {
                  return const TripPageLoadedVerticalLayout();
                } else {
                  return OrientationBuilder(
                    builder: (context, orientation) {
                      if (orientation == Orientation.portrait) {
                        return const TripPageLoadedVerticalLayout();
                      } else {
                        return const TripPageLoadedHorizontalLayout();
                      }
                    },
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
