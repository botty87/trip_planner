part of '../../pages/day_trip_page.dart';

class _ListViewWidget extends StatelessWidget {
  final Stream<bool> isDeleting;

  const _ListViewWidget({required this.isDeleting});

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).smallerOrEqualTo(MOBILE)) {
      return _VerticalLayout(isDeleting: isDeleting);
    } else {
      return OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _VerticalLayout(isDeleting: isDeleting);
          } else {
            return _HorizontalLayout(isDeleting: isDeleting);
          }
        },
      );
    }
  }
}

class _VerticalLayout extends StatelessWidget {
  final Stream<bool> isDeleting;

  const _VerticalLayout({required this.isDeleting});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: defaultPagePadding,
      child: Center(
        child: LayoutBuilder(builder: (context, constraints) {
          final maxWidth = ResponsiveBreakpoints.of(context).largerThan(MOBILE)
              ? constraints.maxWidth * 0.8
              : constraints.maxWidth;

          return ConstrainedBox(
            constraints: BoxConstraints(maxWidth: maxWidth),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const _StartTimeWidget(),
                const SizedBox(height: verticalSpaceS),
                BlocSelector<DayTripCubit, DayTripState, String?>(
                  selector: (state) => state.dayTrip.description,
                  builder: (context, description) => Column(
                    children: [
                      _DayTripDescription(headerText: description),
                      if (description != null) const SizedBox(height: verticalSpaceS),
                    ],
                  ),
                ),
                const _TripStopsList(),
                const SizedBox(height: verticalSpaceL),
                const _AddDayTripStopCard(),
                const SizedBox(height: verticalSpaceL),
                SafeArea(child: _DeleteTripButton(isDeleting: isDeleting)),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class _HorizontalLayout extends StatelessWidget {
  final Stream<bool> isDeleting;

  const _HorizontalLayout({required this.isDeleting});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: pageHorizontalPadding),
      child: Row(
        children: [
          const Expanded(child: SingleChildScrollView(child: _TripStopsList())),
          const SizedBox(width: horizontalSpaceL),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: SingleChildScrollView(
                    child: BlocSelector<DayTripCubit, DayTripState, String?>(
                      selector: (state) => state.dayTrip.description,
                      builder: (context, description) => Column(
                        children: [
                          _DayTripDescription(headerText: description),
                          if (description != null) const SizedBox(height: verticalSpaceS),
                        ],
                      ),
                    ),
                  ),
                ),
                const _AddDayTripStopCard(),
                const SizedBox(height: verticalSpaceXL),
                _DeleteTripButton(isDeleting: isDeleting),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
