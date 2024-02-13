part of 'map_widget.dart';

class _MapMarkersFinder extends StatelessWidget {
  const _MapMarkersFinder();

  @override
  Widget build(BuildContext context) {
    final isMapBoundsEmpty = context.select((MapCubit cubit) => cubit.state.isMapBoundsEmpty);

    if (isMapBoundsEmpty) {
      return const SizedBox.shrink();
    }

    return SafeArea(
      minimum: const EdgeInsets.all(16.0),
      child: IconButton.filled(
          icon: const Icon(Icons.place),
          onPressed: () {
            context.read<MapCubit>().findMarkers();
          }),
    );
  }
}
