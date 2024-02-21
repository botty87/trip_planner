part of 'new_edit_trip_form.dart';

class _LanguageSelector extends StatelessWidget {
  const _LanguageSelector();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(builder: (context, constraints) {
        return FutureBuilder(
            future: Devicelocale.currentAsLocale,
            builder: (context, snapshot) {
              final Language? currentLanguage;
              if (snapshot.hasData) {
                currentLanguage = Languages.defaultLanguages.firstWhereOrNull(
                  (language) => language.isoCode == snapshot.data!.languageCode,
                );
              } else {
                currentLanguage = null;
              }

              return DropdownMenu<Language>(
                width: constraints.maxWidth * 0.8,
                menuHeight: 250,
                label: Text(LocaleKeys.language.tr()),
                enableFilter: true,
                requestFocusOnTap: true,
                leadingIcon: const Icon(Icons.language),
                initialSelection: currentLanguage,
                dropdownMenuEntries: snapshot.hasData
                    ? Languages.defaultLanguages
                        .map(
                          (language) => DropdownMenuEntry<Language>(
                            value: language,
                            label: language.nativeName,
                            leadingIcon: SizedBox(
                              height: 25,
                              width: 25,
                              child: _getCountryIcon(language.isoCode),
                            ),
                          ),
                        )
                        .toList()
                    : [],
              );
            });
      }),
    );
  }

  Widget _getCountryIcon(String countryCode) {
    String iconPath = 'icons/flags/png100px/$countryCode.png';

    return Image.asset(
      iconPath,
      package: 'country_icons',
      height: 25,
      width: 25,
      errorBuilder: (context, error, stackTrace) => const Icon(Icons.flag, size: 25),
    );
  }
}
