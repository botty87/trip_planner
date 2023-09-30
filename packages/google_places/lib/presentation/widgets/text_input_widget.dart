part of 'google_places_suggestions_widget.dart';

class _TextInputWidget extends HookWidget {
  final String labelText;
  final String hintText;

  final String noInternetConnectionMessage;
  final String requestDeniedMessage;
  final String unknownErrorMessage;

  const _TextInputWidget(
      {Key? key,
      required this.labelText,
      required this.hintText,
      required this.noInternetConnectionMessage,
      required this.requestDeniedMessage,
      required this.unknownErrorMessage})
      : super(key: key);

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
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          error: _ErrorWidget(
            onRetry: () => context
                .read<GooglePlacesCubit>()
                .fetchSuggestions(textController.text, noDebounce: true),
            noInternetConnectionMessage: noInternetConnectionMessage,
            requestDeniedMessage: requestDeniedMessage,
            unknownErrorMessage: unknownErrorMessage,
          ),
        ),
        maxLines: 1,
        keyboardType: TextInputType.streetAddress,
        onChanged: (value) => context.read<GooglePlacesCubit>().fetchSuggestions(value),
      ),
    );
  }
}
