part of '../../pages/trip_page.dart';

class _TripEditingForm extends StatelessWidget {
  const _TripEditingForm();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _TripNameField(),
        const SizedBox(height: VERTICAL_SPACE_S),
        _TripDescriptionField(),
        const SizedBox(height: VERTICAL_SPACE_L),
        _SaveCancelButtons(),
      ],
    );
  }
}

class _TripNameField extends StatelessWidget {
  const _TripNameField();

  @override
  Widget build(BuildContext context) {
    final trip = context.read<TripCubit>().state.trip;

    return TextFormField(
      initialValue: trip.name,
      decoration: InputDecoration(
        labelText: LocaleKeys.tripName.tr(),
        hintText: LocaleKeys.tripNameHint.tr(),
      ),
      onChanged: (value) => context.read<TripCubit>().nameChanged(value),
    );
  }
}

class _TripDescriptionField extends StatelessWidget {
  const _TripDescriptionField();

  @override
  Widget build(BuildContext context) {
    final trip = context.read<TripCubit>().state.trip;

    return TextFormField(
      initialValue: trip.description,
      decoration: InputDecoration(
        labelText: LocaleKeys.tripDescription.tr(),
        hintText: LocaleKeys.tripDescriptionHint.tr(),
      ),
      onChanged: (value) => context.read<TripCubit>().descriptionChanged(value),
      keyboardType: TextInputType.multiline,
      maxLines: null,
      textAlign: TextAlign.justify,
    );
  }
}

class _SaveCancelButtons extends StatelessWidget {
  const _SaveCancelButtons();

  @override
  Widget build(BuildContext context) {
    final isSaving = context.select((TripCubit cubit) =>
        cubit.state is TripStateEditing && (cubit.state as TripStateEditing).isSaving);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: isSaving ? null : () => context.read<TripCubit>().editCancel(),
          child: Text(LocaleKeys.cancel.tr()),
        ),
        ElevatedButton(
          onPressed: isSaving ? null : () => context.read<TripCubit>().save(),
          child: Text(LocaleKeys.save.tr()),
        ),
      ],
    );
  }
}
