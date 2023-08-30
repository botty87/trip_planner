part of 'google_places_suggestions_widget.dart';

class _ErrorWidget extends StatelessWidget {
  const _ErrorWidget();

  @override
  Widget build(BuildContext context) {
    final String message = context.select<GooglePlacesCubit, String>((cubit) {
      return cubit.state.maybeWhen(
        error: (message, _) => message,
        orElse: () => '',
      );
    });

    if (message.isEmpty) {
      return const SizedBox.shrink();
    } else {
      return Text(
        message,
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(color: Theme.of(context).colorScheme.error),
      );
    }
  }
}
