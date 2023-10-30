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
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 12),
            child: TextField(
              key: const Key('noteTextField'),
              controller: textController,
              maxLines: null,
              textAlign: TextAlign.justify,
              decoration: InputDecoration(
                hintText: LocaleKeys.noteHint.tr(),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                fillColor: Colors.white.withOpacity(0.75),
                filled: true,
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
