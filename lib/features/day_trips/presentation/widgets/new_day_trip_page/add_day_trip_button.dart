part of '../../pages/new_day_trip_page.dart';

class _AddDayTripButton extends StatelessWidget {
  final Stream<bool> isSaving;

  const _AddDayTripButton({required this.isSaving});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: isSaving,
      initialData: false,
      builder: (context, snapshot) {
        return ElevatedButton(
          key: Key('addDayTripButton'),
          child: Text(LocaleKeys.addDayTrip.tr()),
          onPressed: snapshot.data! ? null : () => context.read<NewDayTripCubit>().createDayTrip(),
        );
      },
    );
  }
}
