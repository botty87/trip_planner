part of '../../../pages/discover_new_trip_stops_page.dart';

class _MapTypeChanger extends HookWidget {
  const _MapTypeChanger();

  @override
  Widget build(BuildContext context) {
    final mapTypeStreamController = useStreamController<MapType>();

    return BlocListener<DiscoverNewTripStopsCubit, DiscoverNewTripStopsState>(
      listener: (context, state) {
        state.mapOrNull(
          loaded: (loadedState) => mapTypeStreamController.add(loadedState.mapType),
        );
      },
      listenWhen: (previous, current) {
        final previousMapType = previous.mapOrNull(loaded: (state) => state.mapType);
        final currentMapType = current.mapOrNull(loaded: (state) => state.mapType);
        return previousMapType != currentMapType;
      },
      child: DefaultMapTypeChanger(
        mapTypeStream: mapTypeStreamController.stream,
        initialMapType: context.read<DiscoverNewTripStopsCubit>().state.maybeMap(
              loaded: (state) => state.mapType,
              orElse: () => throw Exception('Unexpected state'),
            ),
        onTap: () => context.read<DiscoverNewTripStopsCubit>().changeMapType(),
      ),
    );
  }
}
