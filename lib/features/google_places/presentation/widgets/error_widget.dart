part of 'google_places_suggestions_widget.dart';

class _ErrorWidget extends StatelessWidget {
  final VoidCallback onRetry;

  final String message;

  const _ErrorWidget({required this.onRetry, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 40),
      color: Theme.of(context).colorScheme.error.withOpacity(0.1),
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Builder(builder: (context) {
        final bool showRetryButton = context.select<GooglePlacesCubit, bool>((cubit) {
          return cubit.state.maybeWhen(
            error: (_, __, showRetryButton) => showRetryButton,
            orElse: () => false,
          );
        });
        return Row(
          children: [
            Expanded(
              child: Text(
                message,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Theme.of(context).colorScheme.error),
              ),
            ),
            if (showRetryButton)
              IconButton(
                icon: Icon(Icons.refresh, color: Theme.of(context).colorScheme.error),
                onPressed: onRetry,
              ),
          ],
        );
      }),
    );
  }
}
