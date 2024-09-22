import 'package:flutter/material.dart';

import '../../../features/settings/domain/entities/view_preferences.dart';

class ViewModeActionButton extends StatelessWidget {
  const ViewModeActionButton({super.key, required this.viewMode, required this.onPressed});

  final ViewMode viewMode;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(viewMode == ViewMode.list ? Icons.grid_view : Icons.list),
      onPressed: onPressed,
    );
  }
}
