part of '../../pages/trip_page.dart';

class _TripPageBody extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<TripCubit>();
    final isLoading = useStreamController<bool>();

    return SafeArea(
      child: BlocSelector<TripCubit, TripState, bool>(
        selector: (state) {
          return state is TripStateEditing;
        },
        builder: (context, isEditing) {
          if (isEditing) {
            return NewEditTripForm(
              onDescriptionChanged: (String value) => cubit.descriptionChanged(value),
              onNameChanged: (String value) => cubit.nameChanged(value),
              onStartDateChanged: (DateTime value) {},
              saveSection: _SaveUndoEditButtons(),
              isLoading: isLoading.stream,
              initialTripName: cubit.state.trip.name,
              initialTripDescription: cubit.state.trip.description,
              initialStartDate: cubit.state.trip.startDate,
            );
          } else {
            return SingleChildScrollView(
              padding: DEFAULT_PAGE_PADDING,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _TripHeader(),
                  const _DayTripsList(),
                  const SizedBox(height: VERTICAL_SPACE_S),
                  const _AddDayTripCard(),
                  const SizedBox(height: VERTICAL_SPACE_L),
                  _DeleteTripButton(),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
