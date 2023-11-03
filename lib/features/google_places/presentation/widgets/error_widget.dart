part of 'google_places_suggestions_widget.dart';

class _ErrorWidget extends StatelessWidget {
  final VoidCallback onRetry;

  final String noInternetConnectionMessage;
  final String requestDeniedMessage;
  final String unknownErrorMessage;

  const _ErrorWidget({required this.onRetry, required this.noInternetConnectionMessage, required this.requestDeniedMessage, required this.unknownErrorMessage});

  String _getErrorMessage(GooglePlacesError error) {
    return error.whenOrNull(
      noInternetConnection: () => noInternetConnectionMessage,
      requestDenied: (message) => "$requestDeniedMessage: $message",
      unknownError: (message) => message ?? unknownErrorMessage,
    )!;
  }

  @override
  Widget build(BuildContext context) {
    final String message = context.select<GooglePlacesCubit, String>((cubit) {
      return cubit.state.maybeWhen(
        error: (error, _, __) => _getErrorMessage(error),
        orElse: () => '',
      );
    });

    if (message.isEmpty) {
      return const SizedBox.shrink();
    } else {
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
}
