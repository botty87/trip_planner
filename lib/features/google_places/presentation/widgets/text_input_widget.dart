part of 'google_places_suggestions_widget.dart';

class _TextInputWidget extends HookWidget {
  final String labelText;
  final String hintText;

  const _TextInputWidget({Key? key, required this.labelText, required this.hintText})
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
          error: const _ErrorWidget(),
        ),
        maxLines: 1,
        keyboardType: TextInputType.streetAddress,
        onChanged: (value) => context.read<GooglePlacesCubit>().fetchSuggestions(value),
      ),
    );
  }
}
