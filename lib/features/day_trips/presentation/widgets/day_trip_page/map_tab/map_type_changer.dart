part of '../../../pages/day_trip_page.dart';

class _MapTypeChanger extends StatelessWidget {
  const _MapTypeChanger();

  @override
  Widget build(BuildContext context) {
    final mapType = context.select((TripStopsMapCubit cubit) => cubit.state.mapType);
    
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: IconButton.filled(
        icon: Icon(
          mapType != MapType.hybrid ? Icons.map : Icons.map_outlined,
          color: Colors.white,
        ),
        onPressed: () => context.read<TripStopsMapCubit>().changeMapType(),
      ),
    );
  }
}