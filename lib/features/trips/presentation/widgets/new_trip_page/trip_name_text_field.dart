part of '../../pages/new_trip_page.dart';

class _TripNameTextField extends StatelessWidget {
  const _TripNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NewTripCubit>();

    return TextField(
      decoration: InputDecoration(
        labelText: LocaleKeys.tripName.tr(),
        hintText: LocaleKeys.tripNameHint.tr(),
      ),
      onChanged: (value) => cubit.tripNameChanged(value),
    );
  }
}
