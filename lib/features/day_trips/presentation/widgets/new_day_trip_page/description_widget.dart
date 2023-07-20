part of '../../pages/new_day_trip_page.dart';

class _DescriptionWidget extends StatelessWidget {
  const _DescriptionWidget();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NewDayTripCubit>();
    return TextField(
      key: Key('descriptionTextField'),
      decoration: InputDecoration(
        labelText: LocaleKeys.dayTripDescription.tr(),
        hintText: LocaleKeys.dayTripDescriptionHint.tr(),
      ),
      onChanged: (value) => cubit.descriptionChanged(value),
      maxLines: 4,
      minLines: 1,
    );
  }
}