part of '../../pages/trip_page.dart';

class _TripHeader extends StatelessWidget {
  const _TripHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final trip = context.read<TripCubit>().state.trip;
    final isEditing = context.select((TripCubit cubit) => cubit.state is TripStateEditing);

    return isEditing
        ? _TripEditingForm()
        : Text(
            trip.description ?? '',
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.justify,
          );
  }
}

class _TripEditingForm extends StatelessWidget {
  const _TripEditingForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _TripNameField(),
        const SizedBox(height: 8),
        //_TripDescriptionField(),
      ],
    
    );
  }
}

class _TripNameField extends StatelessWidget {
  const _TripNameField({super.key});

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

