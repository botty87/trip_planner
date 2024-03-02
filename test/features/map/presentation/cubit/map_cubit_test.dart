import 'package:bloc_test/bloc_test.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:trip_planner/features/map/presentation/cubit/map_cubit.dart';

import 'map_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<GoogleMapController>()])
void main() {
  late MockGoogleMapController mockGoogleMapController;

  final tLatLngBounds = LatLngBounds(
    southwest: const LatLng(0, 0),
    northeast: const LatLng(0, 0),
  );

  setUp(() {
    mockGoogleMapController = MockGoogleMapController();
  });

  setUpAll(() async {
    EasyLocalization.logger.enableLevels = [LevelMessages.error, LevelMessages.debug];
  });

  MapCubit cubit({required MapStateType mapStateType}) {
    return MapCubit(mapStateType: mapStateType);
  }

  blocTest(
    'on mapCreated, should emit [MapState.single(isMapReady: true)] when isMultiple is true',
    seed: () => MapState.multiple(
      isMapReady: false,
      markerLatLngBounds: tLatLngBounds,
    ),
    build: () => cubit(mapStateType: const MapStateType.multiple()),
    act: (MapCubit cubit) => cubit.mapCreated(mockGoogleMapController),
    expect: () => [
      MapState.multiple(
        isMapReady: true,
        markerLatLngBounds: tLatLngBounds,
      ),
    ],
    verify: (_) {
      verify(mockGoogleMapController.moveCamera(any)).called(1);
    },
  );

  blocTest(
    'on mapCreated, should emit [MapState.single(isMapReady: true)] when isMultiple is false',
    seed: () => const MapState.single(
      isMapReady: false,
      markerPosition: LatLng(0, 0),
    ),
    build: () => cubit(mapStateType: const MapStateType.single()),
    act: (MapCubit cubit) => cubit.mapCreated(mockGoogleMapController),
    expect: () => [
      const MapState.single(
        isMapReady: true,
        markerPosition: LatLng(0, 0),
      ),
    ],
    verify: (_) {
      verify(mockGoogleMapController.moveCamera(any)).called(1);
    },
  );

  blocTest(
    'on changeMapType, should emit [MapState.single(mapType: MapType.hybrid)] when mapType is MapType.normal',
    seed: () => const MapState.single(mapType: MapType.normal),
    build: () => cubit(mapStateType: const MapStateType.single()),
    act: (MapCubit cubit) => cubit.changeMapType(),
    expect: () => [const MapState.single(mapType: MapType.hybrid)],
  );

  blocTest(
    'on changeMapType, should emit [MapState.single(mapType: MapType.normal)] when mapType is MapType.hybrid',
    seed: () => const MapState.single(mapType: MapType.hybrid),
    build: () => cubit(mapStateType: const MapStateType.single()),
    act: (MapCubit cubit) => cubit.changeMapType(),
    expect: () => [const MapState.single(mapType: MapType.normal)],
  );

  blocTest(
    'on zoomOut, should call animateCamera(CameraUpdate.zoomOut())',
    seed: () => const MapState.single(),
    build: () => cubit(mapStateType: const MapStateType.single()),
    act: (MapCubit cubit) {
      cubit.mapCreated(mockGoogleMapController);
      cubit.zoomOut();
    },
    verify: (_) {
      verify(mockGoogleMapController.animateCamera(any)).called(1);
    },
  );

  blocTest(
    'on zoomIn, should call animateCamera(CameraUpdate.zoomIn())',
    seed: () => const MapState.single(),
    build: () => cubit(mapStateType: const MapStateType.single()),
    act: (MapCubit cubit) {
      cubit.mapCreated(mockGoogleMapController);
      cubit.zoomIn();
    },
    verify: (_) {
      verify(mockGoogleMapController.animateCamera(any)).called(1);
    },
  );

  blocTest(
    'on findMarkers, should call animateCamera(CameraUpdate.newLatLngBounds()) when isMultiple is true',
    seed: () => MapState.multiple(
      isMapReady: true,
      markerLatLngBounds: tLatLngBounds,
    ),
    build: () => cubit(mapStateType: const MapStateType.multiple()),
    act: (MapCubit cubit) {
      cubit.mapCreated(mockGoogleMapController);
      cubit.findMarkers();
    },
    verify: (_) {
      verify(mockGoogleMapController.moveCamera(any)).called(1);
      verify(mockGoogleMapController.animateCamera(any)).called(1);
    },
  );

  blocTest(
    'on findMarkers, should call animateCamera(CameraUpdate.newLatLngZoom()) when isMultiple is false',
    seed: () => const MapState.single(
      isMapReady: true,
      markerPosition: LatLng(0, 0),
    ),
    build: () => cubit(mapStateType: const MapStateType.single()),
    act: (MapCubit cubit) {
      cubit.mapCreated(mockGoogleMapController);
      cubit.findMarkers();
    },
    verify: (_) {
      verify(mockGoogleMapController.moveCamera(any)).called(1);
      verify(mockGoogleMapController.animateCamera(any)).called(1);
    },
  );

  blocTest(
    'on updateMarkerLatLngBounds, should emit [MapState.multiple(markerLatLngBounds: tLatLngBounds)]',
    seed: () => const MapState.multiple(),
    build: () => cubit(mapStateType: const MapStateType.multiple()),
    act: (MapCubit cubit) => cubit.updateMarkerLatLngBounds(tLatLngBounds),
    expect: () => [MapState.multiple(markerLatLngBounds: tLatLngBounds)],
    verify: (_) {
      verifyNever(mockGoogleMapController.animateCamera(any));
    },
  );

  blocTest(
    'on updateMarkerPosition, should emit [MapState.single(markerPosition: LatLng(0, 0))]',
    seed: () => const MapState.single(),
    build: () => cubit(mapStateType: const MapStateType.single()),
    act: (MapCubit cubit) => cubit.updateMarkerPosition(const LatLng(0, 0)),
    expect: () => [const MapState.single(markerPosition: LatLng(0, 0))],
    verify: (_) {
      verifyNever(mockGoogleMapController.animateCamera(any));
    },
  );
}
