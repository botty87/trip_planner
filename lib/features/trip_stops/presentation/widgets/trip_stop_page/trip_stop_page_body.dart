part of '../../pages/trip_stop_page.dart';

class _TripStopPageBody extends HookWidget {
  const _TripStopPageBody();

  @override
  Widget build(BuildContext context) {
    final errorMessage = useStreamController<String>();

    return MultiBlocListener(
      listeners: [
        //Show error snackbar if error and update errorMessage stream when error
        BlocListener<TripStopCubit, TripStopState>(
          listener: (context, state) {
            final errorState = state as TripStopStateError;
            ScaffoldMessenger.of(context).showSnackBar(Snackbars.error(errorState.message));
            errorMessage.add(errorState.message);
          },
          listenWhen: (previous, current) => current is TripStopStateError,
        ),
        //Pop page if deleted
        BlocListener<TripStopCubit, TripStopState>(
          listener: (context, state) => context.router.pop(),
          listenWhen: (previous, current) => current is TripStopStateDeleted,
        ),
      ],
      child: SafeArea(
        child: SingleChildScrollView(
          padding: defaultPagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BlocSelector<TripStopCubit, TripStopState, String?>(
                selector: (state) => state.tripStop.description,
                builder: (context, description) => _TripStopDescription(headerText: description),
              ),
              const SizedBox(height: verticalSpace),
              _MapWidget(),
              const SizedBox(height: verticalSpace),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [_TripStopDurationWidget(), _TripStopDoneWidget()],
              ),
              const SizedBox(height: verticalSpace),
              _TripStopNavigateToButton(),
            ],
          ),
        ),
      ),
    );
  }
}
