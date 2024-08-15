import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'day_trip_page_base.dart';

class DayTripPageVerticalLayout extends StatelessWidget {
  const DayTripPageVerticalLayout({
    super.key,
    required this.isSaving,
    required this.isModalBottomEditing,
    required this.errorMessageStream,
    required this.tabController,
  });

  final StreamController<bool> isSaving;
  final ObjectRef isModalBottomEditing;
  final StreamController<String?> errorMessageStream;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return DayTripPageBaseLayout(
      isSaving: isSaving,
      isModalBottomEditing: isModalBottomEditing,
      errorMessageStream: errorMessageStream,
      tabController: tabController,
      orientation: Orientation.portrait,
    );
  }
}
