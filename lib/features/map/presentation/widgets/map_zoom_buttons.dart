part of 'map_widget.dart';

class _MapZoomButtons extends StatelessWidget {
  const _MapZoomButtons();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton.filled(
            icon: const Icon(Icons.remove),
            onPressed: () => context.read<MapCubit>().zoomOut(),
          ),
          const SizedBox(width: horizontalSpaceS),
          IconButton.filled(
            icon: const Icon(Icons.add),
            onPressed: () => context.read<MapCubit>().zoomIn(),
          ),
        ],
      ),
    );
  }
}
