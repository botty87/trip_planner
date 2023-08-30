part of 'google_places_suggestions_widget.dart';

class _SuggestionsWidget extends StatelessWidget {
  const _SuggestionsWidget();

  @override
  Widget build(BuildContext context) {
    final suggestions =
        context.select<GooglePlacesCubit, List<String>>((cubit) => cubit.state.mapOrNull(
              normal: (state) =>
                  state.suggestions.map((suggestion) => suggestion.description).toList(),
            )!);

    return AnimatedSize(
      duration: const Duration(milliseconds: 300),
      curve: Curves.decelerate,
      child: suggestions.isEmpty ? const SizedBox.shrink() : _buildSuggestions(suggestions),
    );
  }

  Widget _buildSuggestions(List<String> suggestions) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () {},
        );
      },
    );
  }
}
