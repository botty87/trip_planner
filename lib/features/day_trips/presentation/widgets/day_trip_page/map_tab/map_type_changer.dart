part of '../../../pages/day_trip_page.dart';

class _MapTypeChanger extends HookWidget {
  const _MapTypeChanger();

  @override
  Widget build(BuildContext context) {
    final mapTypeStreamController = useStreamController<MapType>();
    
    return BlocListener<TripStopsMapCubit, TripStopsMapState>(
      listener: (context, state) => mapTypeStreamController.add(state.mapType),
      listenWhen: (previous, current) => previous.mapType != current.mapType,
      child: DefaultMapTypeChanger(
        mapTypeStream: mapTypeStreamController.stream,
        initialMapType: context.read<TripStopsMapCubit>().state.mapType,
        onTap: () => context.read<TripStopsMapCubit>().changeMapType(),
      ),
    );
  }
}
