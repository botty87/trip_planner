import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'day_trip_page_base.dart';

class DayTripPageHorizontalLayout extends StatelessWidget {
  const DayTripPageHorizontalLayout({
    super.key,
    required this.isSaving,
    required this.isModalBottomEditing,
    required this.errorMessageStream,
  });

  final StreamController<bool> isSaving;
  final ObjectRef isModalBottomEditing;
  final StreamController<String?> errorMessageStream;

  @override
  Widget build(BuildContext context) {
    return DayTripPageBaseLayout(
      isSaving: isSaving,
      isModalBottomEditing: isModalBottomEditing,
      errorMessageStream: errorMessageStream,
      orientation: Orientation.landscape,
    );
  }
}
