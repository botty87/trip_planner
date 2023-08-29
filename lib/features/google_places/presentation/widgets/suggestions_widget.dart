part of 'google_places_suggestions_widget.dart';

class _TextInputWidget extends StatelessWidget {
  final String labelText;
  final String hintText;

  const _TextInputWidget({Key? key, required this.labelText, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        error: const _ErrorWidget(),
      ),
      onChanged: (value) => context.read<GooglePlacesCubit>().fetchSuggestions(value),
    );

    /* final List<String> suggestions = context.select<GooglePlacesCubit, List<String>>((cubit) {
      return cubit.state.maybeWhen(
        normal: (suggestions, _, __) =>
            suggestions.map((suggestion) => suggestion.description).toList(),
        orElse: () => [],
      );
    }); */

    /* return Autocomplete<String>(
      fieldViewBuilder: (BuildContext context, TextEditingController textEditingController,
          FocusNode focusNode, VoidCallback onFieldSubmitted) {
        return TextField(
          controller: textEditingController,
          focusNode: focusNode,
          decoration: InputDecoration(
            labelText: labelText,
            hintText: hintText,
            error: const _ErrorWidget(),
          ),
        );
      },
      optionsBuilder: (TextEditingValue textEditingValue) {
        final cubit = context.read<GooglePlacesCubit>();

        if (textEditingValue.text.isEmpty) {
          cubit.clearSuggestions();
          return const Iterable<String>.empty();
        } else if (textEditingValue.text.length < 2) {
          return const Iterable<String>.empty();
        } else {
          final previousQuery = cubit.state.maybeWhen(
            normal: (_, currentQuery, __) => currentQuery,
            orElse: () => null,
          );
          if (previousQuery != textEditingValue.text) {
            cubit.fetchSuggestions(textEditingValue.text);
            Logger().i("Fetching suggestions for ${textEditingValue.text}");
          }
          return suggestions;
        }
      },
    ); */
  }
}
