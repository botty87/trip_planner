part of '../../pages/new_trip_page.dart';

class _CreateTripButton extends StatelessWidget {
  final Stream<bool> isSaving;
  const _CreateTripButton({required this.isSaving});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: isSaving,
      initialData: false,
      builder: (context, snapshot) {
        return ElevatedButton(
          key: const Key('createTripButton'),
          onPressed: snapshot.data! ? null : () => context.read<NewTripCubit>().createTrip(),
          child: Text(LocaleKeys.createTrip.tr()),
        );
      },
    );
  }
}
