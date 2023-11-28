part of '../../pages/new_trip_stop_page.dart';

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
          key: const Key('addTripStopButton'),
          onPressed:
              snapshot.data! ? null : () => context.read<NewTripStopCubit>().createTripStop(),
          child: Text(LocaleKeys.addTripStop.tr()),
        );
      },
    );
  }
}
