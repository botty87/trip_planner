part of '../../pages/trip_stop_page.dart';

class _TripStopNoteWidget extends HookWidget {
  const _TripStopNoteWidget();

  @override
  Widget build(BuildContext context) {
    final note = context.select((TripStopCubit cubit) => cubit.state.tripStop.note);
    final textController = useTextEditingController(text: note);
    return Card(
      child: Column(
        children: [
          Text(
            LocaleKeys.note.tr(),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 16),
            child: TextField(
              key: const Key('noteTextField'),
              controller: textController,
              maxLines: null,
              textAlign: TextAlign.justify,
              decoration: InputDecoration.collapsed(
                hintText: LocaleKeys.noteHint.tr(),
              ),
              keyboardType: TextInputType.multiline,
              onChanged: (value) => context.read<TripStopCubit>().noteChanged(value),
            ),
          ),
        ],
      ),
    );
  }
}
