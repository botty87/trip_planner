part of 'map_widget.dart';

class _MapTypeChanger extends StatelessWidget {
  const _MapTypeChanger();

  @override
  Widget build(BuildContext context) {
    final mapType = context.select((MapCubit cubit) => cubit.state.mapType);

    return SafeArea(
      minimum: const EdgeInsets.all(16.0),
      child: IconButton.filled(
        icon: Icon(mapType == MapType.normal ? Icons.satellite : Icons.map),
        onPressed: () => context.read<MapCubit>().changeMapType(),
      ),
    );
  }
}
