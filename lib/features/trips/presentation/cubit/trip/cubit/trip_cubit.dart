import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/entities/trip.dart';

part 'trip_state.dart';
part 'trip_cubit.freezed.dart';

@injectable
class TripCubit extends Cubit<TripState> {
  TripCubit({@factoryParam required Trip trip}) : super(TripState(trip: trip));
}
