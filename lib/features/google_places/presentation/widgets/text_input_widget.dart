part of 'google_places_suggestions_widget.dart';

class _TextInputWidget extends HookWidget {
  final String labelText;
  final String hintText;

  final String noInternetConnectionMessage;
  final String requestDeniedMessage;
  final String unknownErrorMessage;

  const _TextInputWidget(
      {required this.labelText,
      required this.hintText,
      required this.noInternetConnectionMessage,
      required this.requestDeniedMessage,
      required this.unknownErrorMessage});

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();

    //When we have placeDetails we want to clear the text field
    return BlocListener<GooglePlacesCubit, GooglePlacesState>(
      listener: (context, state) => textController.clear(),
      listenWhen: (previous, current) => previous.maybeWhen(
        normal: (previousSuggestions, previousIsLoading, previousPlaceDetails) {
          return current.maybeWhen(
            normal: (currentSuggestions, currentIsLoading, currentPlaceDetails) {
              return (currentPlaceDetails != previousPlaceDetails) && currentPlaceDetails != null;
            },
            orElse: () => false,
          );
        },
        orElse: () => false,
      ),
      child: BlocSelector<GooglePlacesCubit, GooglePlacesState, String?>(
        selector: (state) {
          return state.maybeWhen(
            error: (error, _, __) => _getErrorMessage(error),
            orElse: () => null,
          );
        },
        builder: (context, errorMessage) {
          final lang = Localizations.localeOf(context).languageCode;
          return TextField(
            controller: textController,
            decoration: InputDecoration(
              labelText: labelText,
              hintText: hintText,
              error: errorMessage != null
                  ? _ErrorWidget(
                      onRetry: () => context
                          .read<GooglePlacesCubit>()
                          .fetchSuggestions(textController.text, lang, noDebounce: true),
                      message: errorMessage,
                    )
                  : null,
            ),
            maxLines: 1,
            keyboardType: TextInputType.streetAddress,
            onChanged: (value) => context.read<GooglePlacesCubit>().fetchSuggestions(value, lang),
          );
        },
      ),
    );
  }

  String _getErrorMessage(GooglePlacesError error) {
    return error.whenOrNull(
      noInternetConnection: () => noInternetConnectionMessage,
      requestDenied: (message) => "$requestDeniedMessage: $message",
      unknownError: (message) => message ?? unknownErrorMessage,
    )!;
  }
}
