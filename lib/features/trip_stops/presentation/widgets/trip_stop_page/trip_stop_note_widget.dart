part of '../../pages/trip_stop_page.dart';

class _TripStopNoteWidget extends StatelessWidget {
  const _TripStopNoteWidget();

  @override
  Widget build(BuildContext context) {
    return TextField(
      key: const Key('noteTextField'),
      decoration: const InputDecoration(
        labelText: 'Note',
        border: OutlineInputBorder(),
      ),
      maxLines: null,
      textAlign: TextAlign.justify,
      onChanged: (value) => context.read<TripStopCubit>().noteChanged(value),
    );
  }
}
