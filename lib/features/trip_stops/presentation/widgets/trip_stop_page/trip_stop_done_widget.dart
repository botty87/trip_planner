part of '../../pages/trip_stop_page.dart';

//Checkboxes for done trip stops
class _TripStopDoneWidget extends StatelessWidget {
  const _TripStopDoneWidget();

  @override
  Widget build(BuildContext context) {
    final isDone = context.read<TripStopCubit>().state.tripStop.isDone;
    return Column(
      children: [
        BlocSelector<TripStopCubit, TripStopState, bool>(
          selector: (state) => state.tripStop.isDone,
          builder: (context, state) => AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            child: Text(
              LocaleKeys.done.tr(),
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: state ? Colors.green[700] : Colors.red[700],
                  ),
            ),
          ),
        ),
        const SizedBox(height: verticalSpaceXs),
        RoundCheckBox(
          size: 30,
          animationDuration: const Duration(milliseconds: 250),
          isChecked: isDone,
          uncheckedWidget: Center(
              child: FaIcon(
            FontAwesomeIcons.check,
            //size: 30,
            color: Colors.red[700],
          )),
          checkedWidget: Center(
              child: FaIcon(
            FontAwesomeIcons.check,
            //size: 30,
            color: Colors.grey[200],
          )),
          onTap: (isDone) => context.read<TripStopCubit>().isDoneChanged(isDone!),
        ),
      ],
    );
  }
}
