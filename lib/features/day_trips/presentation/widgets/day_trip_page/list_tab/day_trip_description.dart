import 'package:flutter/material.dart';

import '../../../../../../core/widgets/trip/generic_trip_header.dart';

final class DayTripDescription extends StatelessWidget {
  final String headerText;

  const DayTripDescription({super.key, required this.headerText});

  @override
  Widget build(BuildContext context) {
    return GenericTripDescription(headerText: headerText);
  }
}
