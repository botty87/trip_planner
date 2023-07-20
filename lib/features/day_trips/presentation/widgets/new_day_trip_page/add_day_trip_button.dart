part of '../../pages/new_day_trip_page.dart';

class _AddDayTripButton extends StatelessWidget {
  const _AddDayTripButton();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NewDayTripCubit>();
    return BlocSelector<NewDayTripCubit, NewDayTripState, bool>(
      selector: (state) => state.isSaving,
      builder: (context, isSaving) {
        return ElevatedButton(
          key: Key('addDayTripButton'),
          child: Text(LocaleKeys.addDayTrip.tr()),
          onPressed: isSaving ? null : () => cubit.createDayTrip(),
        );
      },
    );
  }
}