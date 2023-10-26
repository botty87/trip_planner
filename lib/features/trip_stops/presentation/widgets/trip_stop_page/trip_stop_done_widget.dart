part of '../../pages/trip_stop_page.dart';

//Checkboxes for done trip stops
class _TripStopDoneWidget extends StatelessWidget {
  const _TripStopDoneWidget();

  @override
  Widget build(BuildContext context) {
    final isDone = context.select<TripStopCubit, bool>(
      (cubit) => cubit.state.tripStop.isDone,
    );
    return Column(
      children: [
        GestureDetector(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: Text(
              LocaleKeys.done.tr(),
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: isDone ? Colors.green[700] : Colors.orange[700]),
            ),
          ),
          onTap: () => context.read<TripStopCubit>().isDoneChanged(!isDone),
        ),
        const SizedBox(height: verticalSpaceXs),
        Transform.scale(
          scale: 1.2,
          child: Checkbox(
            shape: const CircleBorder(),
            value: isDone,
            onChanged: (value) => context.read<TripStopCubit>().isDoneChanged(value ?? false),
          ),
        ),
      ],
    );
  }
}
