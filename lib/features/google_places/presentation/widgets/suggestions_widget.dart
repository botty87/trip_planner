part of 'google_places_suggestions_widget.dart';

class _SuggestionsWidget extends StatelessWidget {
  final Function(PlaceDetails?) onSuggestionSelected;
  final _suggestionsKey = GlobalKey();

  _SuggestionsWidget({required this.onSuggestionSelected});

  @override
  Widget build(BuildContext context) {
    final suggestions = context.select<GooglePlacesCubit, List<Suggestion>>(
      (cubit) => cubit.state.map(
        normal: (state) => state.suggestions,
        error: (state) => state.suggestions,
      ),
    );

    Future.delayed(const Duration(milliseconds: 300), () {
      final RenderBox? box = _suggestionsKey.currentContext?.findRenderObject() as RenderBox?;
      if (box != null) {
        Scrollable.ensureVisible(_suggestionsKey.currentContext!,
            duration: const Duration(milliseconds: 300), curve: Curves.decelerate);
      }
    });

    return AnimatedSize(
      duration: const Duration(milliseconds: 300),
      curve: Curves.decelerate,
      child:
          suggestions.isEmpty ? const SizedBox.shrink() : _buildSuggestions(suggestions, context),
    );
  }

  Widget _buildSuggestions(List<Suggestion> suggestions, BuildContext context) {
    return ListView.builder(
      key: _suggestionsKey,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion.description),
          onTap: () async {
            final result =
                await context.read<GooglePlacesCubit>().fetchPlaceDetails(suggestion.placeId);
            onSuggestionSelected(result);
            if (context.mounted) {
              FocusScope.of(context).unfocus();
            }
          },
        );
      },
    );
  }
}
