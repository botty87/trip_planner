part of '../../pages/new_trip_page.dart';

class _TripDescriptionTextField extends StatelessWidget {
  const _TripDescriptionTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NewTripCubit>();

    return TextField(
      decoration: InputDecoration(
        labelText: LocaleKeys.tripDescription.tr(),
        hintText: LocaleKeys.tripDescriptionHint.tr(),
      ),
      onChanged: (value) => cubit.tripDescriptionChanged(value),
      maxLines: 4,
      minLines: 1,
    );
  }
}
