part of '../../pages/new_trip_page.dart';

class _CreateTripButton extends StatelessWidget {
  const _CreateTripButton();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<NewTripCubit>();
    final isLoading = context.select((NewTripCubit cubit) => cubit.state.isLoading);

    return ElevatedButton(
      key: Key('createTripButton'),
      child: Text(LocaleKeys.createTrip.tr()),
      onPressed: isLoading
          ? null
          : () async {
              if (await cubit.createTrip()) {
                context.popRoute();
              }
            },
    );
  }
}
