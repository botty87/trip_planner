import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trip_planner/features/trips/presentation/cubit/trips/trips_cubit.dart';

class MockTripsCubit extends MockCubit<TripsState> implements TripsCubit {}

void main() {
  late TripsCubit mockTripsCubit;

  setUp(() {
    mockTripsCubit = MockTripsCubit();
  });

  
}