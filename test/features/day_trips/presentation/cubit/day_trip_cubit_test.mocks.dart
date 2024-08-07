// Mocks generated by Mockito 5.4.4 from annotations
// in trip_planner/test/features/day_trips/presentation/cubit/day_trip_cubit_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;

import 'package:dartz/dartz.dart' as _i3;
import 'package:firebase_core/firebase_core.dart' as _i5;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i19;
import 'package:flutter/material.dart' as _i20;
import 'package:mockito/mockito.dart' as _i1;
import 'package:trip_planner/features/day_trips/domain/entities/day_trip.dart'
    as _i18;
import 'package:trip_planner/features/day_trips/domain/repositories/day_trips_repository.dart'
    as _i2;
import 'package:trip_planner/features/day_trips/domain/usecases/delete_day_trip.dart'
    as _i9;
import 'package:trip_planner/features/day_trips/domain/usecases/listen_day_trip.dart'
    as _i17;
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trip.dart'
    as _i6;
import 'package:trip_planner/features/day_trips/domain/usecases/update_day_trip_start_time.dart'
    as _i13;
import 'package:trip_planner/features/day_trips/domain/usecases/update_trip_stops_directions_up_to_date.dart'
    as _i21;
import 'package:trip_planner/features/day_trips/errors/day_trips_failure.dart'
    as _i8;
import 'package:trip_planner/features/trip_stops/domain/entities/trip_stop.dart'
    as _i12;
import 'package:trip_planner/features/trip_stops/domain/repositories/trip_stops_repository.dart'
    as _i4;
import 'package:trip_planner/features/trip_stops/domain/usecases/delete_trip_stop.dart'
    as _i22;
import 'package:trip_planner/features/trip_stops/domain/usecases/listen_trip_stops.dart'
    as _i10;
import 'package:trip_planner/features/trip_stops/domain/usecases/trip_stop_done.dart'
    as _i16;
import 'package:trip_planner/features/trip_stops/domain/usecases/update_travel_time.dart'
    as _i15;
import 'package:trip_planner/features/trip_stops/domain/usecases/update_trip_stop_placeholder.dart'
    as _i23;
import 'package:trip_planner/features/trip_stops/domain/usecases/update_trip_stops_indexes.dart'
    as _i14;
import 'package:trip_planner/features/trip_stops/errors/trip_stops_failure.dart'
    as _i11;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeDayTripsRepository_0 extends _i1.SmartFake
    implements _i2.DayTripsRepository {
  _FakeDayTripsRepository_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_1<L, R> extends _i1.SmartFake implements _i3.Either<L, R> {
  _FakeEither_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTripStopsRepository_2 extends _i1.SmartFake
    implements _i4.TripStopsRepository {
  _FakeTripStopsRepository_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFirebaseApp_3 extends _i1.SmartFake implements _i5.FirebaseApp {
  _FakeFirebaseApp_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [UpdateDayTrip].
///
/// See the documentation for Mockito's code generation for more information.
class MockUpdateDayTrip extends _i1.Mock implements _i6.UpdateDayTrip {
  @override
  _i2.DayTripsRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeDayTripsRepository_0(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeDayTripsRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.DayTripsRepository);

  @override
  _i7.Future<_i3.Either<_i8.DayTripsFailure, void>> call(
          _i6.UpdateDayTripParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.DayTripsFailure, void>>.value(
            _FakeEither_1<_i8.DayTripsFailure, void>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.DayTripsFailure, void>>.value(
                _FakeEither_1<_i8.DayTripsFailure, void>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.DayTripsFailure, void>>);
}

/// A class which mocks [DeleteDayTrip].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeleteDayTrip extends _i1.Mock implements _i9.DeleteDayTrip {
  @override
  _i2.DayTripsRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeDayTripsRepository_0(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeDayTripsRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.DayTripsRepository);

  @override
  _i7.Future<_i3.Either<_i8.DayTripsFailure, void>> call(
          _i9.DeleteDayTripParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.DayTripsFailure, void>>.value(
            _FakeEither_1<_i8.DayTripsFailure, void>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.DayTripsFailure, void>>.value(
                _FakeEither_1<_i8.DayTripsFailure, void>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.DayTripsFailure, void>>);
}

/// A class which mocks [ListenTripStops].
///
/// See the documentation for Mockito's code generation for more information.
class MockListenTripStops extends _i1.Mock implements _i10.ListenTripStops {
  @override
  _i4.TripStopsRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeTripStopsRepository_2(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeTripStopsRepository_2(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i4.TripStopsRepository);

  @override
  _i7.Stream<_i3.Either<_i11.TripStopsFailure, List<_i12.TripStop>>> call(
          _i10.ListenTripStopsParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i7.Stream<
            _i3.Either<_i11.TripStopsFailure, List<_i12.TripStop>>>.empty(),
        returnValueForMissingStub: _i7.Stream<
            _i3.Either<_i11.TripStopsFailure, List<_i12.TripStop>>>.empty(),
      ) as _i7.Stream<_i3.Either<_i11.TripStopsFailure, List<_i12.TripStop>>>);
}

/// A class which mocks [UpdateDayTripStartTime].
///
/// See the documentation for Mockito's code generation for more information.
class MockUpdateDayTripStartTime extends _i1.Mock
    implements _i13.UpdateDayTripStartTime {
  @override
  _i2.DayTripsRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeDayTripsRepository_0(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeDayTripsRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.DayTripsRepository);

  @override
  _i7.Future<_i3.Either<_i8.DayTripsFailure, void>> call(
          _i13.UpdateDayTripStartTimeParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.DayTripsFailure, void>>.value(
            _FakeEither_1<_i8.DayTripsFailure, void>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.DayTripsFailure, void>>.value(
                _FakeEither_1<_i8.DayTripsFailure, void>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.DayTripsFailure, void>>);
}

/// A class which mocks [UpdateTripStopsIndexes].
///
/// See the documentation for Mockito's code generation for more information.
class MockUpdateTripStopsIndexes extends _i1.Mock
    implements _i14.UpdateTripStopsIndexes {
  @override
  _i7.Future<_i3.Either<_i11.TripStopsFailure, void>> call(
          _i14.UpdateTripStopsIndexesParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i7.Future<_i3.Either<_i11.TripStopsFailure, void>>.value(
            _FakeEither_1<_i11.TripStopsFailure, void>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i11.TripStopsFailure, void>>.value(
                _FakeEither_1<_i11.TripStopsFailure, void>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i11.TripStopsFailure, void>>);
}

/// A class which mocks [UpdateTravelTime].
///
/// See the documentation for Mockito's code generation for more information.
class MockUpdateTravelTime extends _i1.Mock implements _i15.UpdateTravelTime {
  @override
  _i7.Future<_i3.Either<_i11.TripStopsFailure, void>> call(
          _i15.UpdateTravelTimeParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i7.Future<_i3.Either<_i11.TripStopsFailure, void>>.value(
            _FakeEither_1<_i11.TripStopsFailure, void>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i11.TripStopsFailure, void>>.value(
                _FakeEither_1<_i11.TripStopsFailure, void>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i11.TripStopsFailure, void>>);
}

/// A class which mocks [TripStopDone].
///
/// See the documentation for Mockito's code generation for more information.
class MockTripStopDone extends _i1.Mock implements _i16.TripStopDone {
  @override
  _i7.Future<_i3.Either<_i11.TripStopsFailure, void>> call(
          _i16.TripStopDoneParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i7.Future<_i3.Either<_i11.TripStopsFailure, void>>.value(
            _FakeEither_1<_i11.TripStopsFailure, void>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i11.TripStopsFailure, void>>.value(
                _FakeEither_1<_i11.TripStopsFailure, void>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i11.TripStopsFailure, void>>);
}

/// A class which mocks [ListenDayTrip].
///
/// See the documentation for Mockito's code generation for more information.
class MockListenDayTrip extends _i1.Mock implements _i17.ListenDayTrip {
  @override
  _i2.DayTripsRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeDayTripsRepository_0(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeDayTripsRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.DayTripsRepository);

  @override
  _i7.Stream<_i3.Either<_i8.DayTripsFailure, _i18.DayTrip>> call(
          _i17.ListenDayTripParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue:
            _i7.Stream<_i3.Either<_i8.DayTripsFailure, _i18.DayTrip>>.empty(),
        returnValueForMissingStub:
            _i7.Stream<_i3.Either<_i8.DayTripsFailure, _i18.DayTrip>>.empty(),
      ) as _i7.Stream<_i3.Either<_i8.DayTripsFailure, _i18.DayTrip>>);
}

/// A class which mocks [FirebaseCrashlytics].
///
/// See the documentation for Mockito's code generation for more information.
class MockFirebaseCrashlytics extends _i1.Mock
    implements _i19.FirebaseCrashlytics {
  @override
  _i5.FirebaseApp get app => (super.noSuchMethod(
        Invocation.getter(#app),
        returnValue: _FakeFirebaseApp_3(
          this,
          Invocation.getter(#app),
        ),
        returnValueForMissingStub: _FakeFirebaseApp_3(
          this,
          Invocation.getter(#app),
        ),
      ) as _i5.FirebaseApp);

  @override
  set app(_i5.FirebaseApp? _app) => super.noSuchMethod(
        Invocation.setter(
          #app,
          _app,
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool get isCrashlyticsCollectionEnabled => (super.noSuchMethod(
        Invocation.getter(#isCrashlyticsCollectionEnabled),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  Map<dynamic, dynamic> get pluginConstants => (super.noSuchMethod(
        Invocation.getter(#pluginConstants),
        returnValue: <dynamic, dynamic>{},
        returnValueForMissingStub: <dynamic, dynamic>{},
      ) as Map<dynamic, dynamic>);

  @override
  _i7.Future<bool> checkForUnsentReports() => (super.noSuchMethod(
        Invocation.method(
          #checkForUnsentReports,
          [],
        ),
        returnValue: _i7.Future<bool>.value(false),
        returnValueForMissingStub: _i7.Future<bool>.value(false),
      ) as _i7.Future<bool>);

  @override
  void crash() => super.noSuchMethod(
        Invocation.method(
          #crash,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i7.Future<void> deleteUnsentReports() => (super.noSuchMethod(
        Invocation.method(
          #deleteUnsentReports,
          [],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<bool> didCrashOnPreviousExecution() => (super.noSuchMethod(
        Invocation.method(
          #didCrashOnPreviousExecution,
          [],
        ),
        returnValue: _i7.Future<bool>.value(false),
        returnValueForMissingStub: _i7.Future<bool>.value(false),
      ) as _i7.Future<bool>);

  @override
  _i7.Future<void> recordError(
    dynamic exception,
    StackTrace? stack, {
    dynamic reason,
    Iterable<Object>? information = const [],
    bool? printDetails,
    bool? fatal = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #recordError,
          [
            exception,
            stack,
          ],
          {
            #reason: reason,
            #information: information,
            #printDetails: printDetails,
            #fatal: fatal,
          },
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<void> recordFlutterError(
    _i20.FlutterErrorDetails? flutterErrorDetails, {
    bool? fatal = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #recordFlutterError,
          [flutterErrorDetails],
          {#fatal: fatal},
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<void> recordFlutterFatalError(
          _i20.FlutterErrorDetails? flutterErrorDetails) =>
      (super.noSuchMethod(
        Invocation.method(
          #recordFlutterFatalError,
          [flutterErrorDetails],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<void> log(String? message) => (super.noSuchMethod(
        Invocation.method(
          #log,
          [message],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<void> sendUnsentReports() => (super.noSuchMethod(
        Invocation.method(
          #sendUnsentReports,
          [],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<void> setCrashlyticsCollectionEnabled(bool? enabled) =>
      (super.noSuchMethod(
        Invocation.method(
          #setCrashlyticsCollectionEnabled,
          [enabled],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<void> setUserIdentifier(String? identifier) => (super.noSuchMethod(
        Invocation.method(
          #setUserIdentifier,
          [identifier],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<void> setCustomKey(
    String? key,
    Object? value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #setCustomKey,
          [
            key,
            value,
          ],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
}

/// A class which mocks [UpdateTripStopsDirectionsUpToDate].
///
/// See the documentation for Mockito's code generation for more information.
class MockUpdateTripStopsDirectionsUpToDate extends _i1.Mock
    implements _i21.UpdateTripStopsDirectionsUpToDate {
  @override
  _i2.DayTripsRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeDayTripsRepository_0(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeDayTripsRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.DayTripsRepository);

  @override
  _i7.Future<_i3.Either<_i8.DayTripsFailure, void>> call(
          _i21.UpdateTripStopsDirectionsUpToDateParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i7.Future<_i3.Either<_i8.DayTripsFailure, void>>.value(
            _FakeEither_1<_i8.DayTripsFailure, void>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i8.DayTripsFailure, void>>.value(
                _FakeEither_1<_i8.DayTripsFailure, void>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i8.DayTripsFailure, void>>);
}

/// A class which mocks [DeleteTripStop].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeleteTripStop extends _i1.Mock implements _i22.DeleteTripStop {
  @override
  _i4.TripStopsRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeTripStopsRepository_2(
          this,
          Invocation.getter(#repository),
        ),
        returnValueForMissingStub: _FakeTripStopsRepository_2(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i4.TripStopsRepository);

  @override
  _i7.Future<_i3.Either<_i11.TripStopsFailure, void>> call(
          _i22.DeleteTripStopParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i7.Future<_i3.Either<_i11.TripStopsFailure, void>>.value(
            _FakeEither_1<_i11.TripStopsFailure, void>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i11.TripStopsFailure, void>>.value(
                _FakeEither_1<_i11.TripStopsFailure, void>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i11.TripStopsFailure, void>>);
}

/// A class which mocks [UpdateTripStopPlaceholder].
///
/// See the documentation for Mockito's code generation for more information.
class MockUpdateTripStopPlaceholder extends _i1.Mock
    implements _i23.UpdateTripStopPlaceholder {
  @override
  _i7.Future<_i3.Either<_i11.TripStopsFailure, void>> call(
          _i23.UpdateTripStopPlaceholderParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i7.Future<_i3.Either<_i11.TripStopsFailure, void>>.value(
            _FakeEither_1<_i11.TripStopsFailure, void>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<_i3.Either<_i11.TripStopsFailure, void>>.value(
                _FakeEither_1<_i11.TripStopsFailure, void>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i7.Future<_i3.Either<_i11.TripStopsFailure, void>>);
}
