part of '../../../../pages/discover_new_trips_page.dart';

class _LanguagesFilter extends StatelessWidget {
  const _LanguagesFilter();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _LanguageSearch(),
        SizedBox(height: verticalSpace),
        _LanguagesRow(),
      ],
    );
  }
}

class _LanguagesRow extends StatelessWidget {
  const _LanguagesRow();

  @override
  Widget build(BuildContext context) {
    final availableLanguages = context.select((DiscoverNewTripsCubit cubit) => cubit.state.maybeMap(
          normal: (state) => state.availableLanguages,
          orElse: () => const <Language>[],
        ));

    return SizedBox(
        height: 50,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: _buildChild(availableLanguages, context),
        ));
  }

  Widget _buildChild(List<Language> availableLanguages, BuildContext context) {
    if (availableLanguages.isEmpty) {
      return Text(
        LocaleKeys.noLanguagesAvailable.tr(),
        style: Theme.of(context).textTheme.titleMedium,
      );
    }

    return ListView.builder(
      key: Key('languages_list_${availableLanguages.length}'),
      itemCount: availableLanguages.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final language = availableLanguages[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: horizontalSpaceXs),
          child: _LanguageFilterItem(
            key: Key(language.isoCode),
            language: language,
          ),
        );
      },
    );
  }
}

class _LanguageFilterItem extends StatelessWidget {
  final Language language;

  const _LanguageFilterItem({required this.language, super.key});

  @override
  Widget build(BuildContext context) {
    final isSelected = context.select((DiscoverNewTripsCubit cubit) => cubit.state.maybeMap(
          normal: (state) => state.selectedLanguages.contains(language.isoCode),
          orElse: () => false,
        ));

    return FilterChip(
      label: Text(language.nativeName),
      selected: isSelected,
      onSelected: (value) {
        context.read<DiscoverNewTripsCubit>().filterByLanguage(language);
      },
    );
  }
}

class _LanguageSearch extends HookWidget {
  const _LanguageSearch();

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();

    return TextField(
      controller: textEditingController,
      onChanged: (value) => context.read<DiscoverNewTripsCubit>().languageQueryChanged(value),
      decoration: InputDecoration(
        hintText: LocaleKeys.searchLanguage.tr(),
        suffixIcon: BlocSelector<DiscoverNewTripsCubit, DiscoverNewTripsState, bool>(
          selector: (state) => state.maybeMap(
            normal: (state) => state.languageQuery.isNotEmpty,
            orElse: () => false,
          ),
          builder: (context, queryIsNotEmpty) {
            return queryIsNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      textEditingController.clear();
                      context.read<DiscoverNewTripsCubit>().languageQueryChanged('');
                    },
                  )
                : const Icon(Icons.language);
          },
        ),
      ),
    );
  }
}
