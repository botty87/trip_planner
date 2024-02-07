import 'package:flutter/material.dart';

class TripStopPageBodyHorizontal extends StatelessWidget {
  const TripStopPageBodyHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
    /* return Padding(
      padding: const EdgeInsets.symmetric(horizontal: pageHorizontalPadding),
      child: BlocSelector<TripStopCubit, TripStopState, String?>(
        selector: (state) => state.tripStop.description,
        builder: (context, description) {
          return Row(
            children: [
              Expanded(
                child: SafeArea(
                  minimum: const EdgeInsets.only(bottom: pageVerticalPadding),
                  child: Column(
                    children: [
                      const Expanded(child: _MapWidget()),
                      if (!kIsWeb) ...[
                        const SizedBox(height: verticalSpaceXL),
                        const _TripStopNavigateToButton(),
                      ],
                      const SizedBox(height: verticalSpaceL),
                      _DeleteTripStopButton(isDeleting: isDeleting),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: horizontalSpaceL),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: pageVerticalPadding),
                  child: Column(
                    children: [
                      if (description?.isNotEmpty ?? false) ...[
                        _TripStopDescription(headerText: description),
                        const SizedBox(height: verticalSpaceXL),
                      ],
                      const _TripStopNoteWidget(),
                      const SizedBox(height: verticalSpaceL),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [_TripStopDurationWidget(), _TripStopDoneWidget()],
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
   */
  }
}
