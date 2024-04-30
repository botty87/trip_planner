part of 'new_edit_trip_form.dart';

class _LanguageSelector extends StatelessWidget {
  final String initialLanguageCode;
  final ValueChanged<String> onLanguageCodeChanged;

  const _LanguageSelector({
    required this.initialLanguageCode,
    super.key,
    required this.onLanguageCodeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(builder: (context, constraints) {
        return _buildLanguageSelector(context, initialLanguageCode.toLanguage, constraints);
      }),
    );
  }

  Widget _buildLanguageSelector(
    BuildContext context,
    Language currentLanguage,
    BoxConstraints constraints,
  ) {
    return DropdownMenu<Language>(
      width: constraints.maxWidth * 0.8,
      menuHeight: 250,
      label: Text(LocaleKeys.language.tr()),
      enableFilter: true,
      requestFocusOnTap: true,
      leadingIcon: const Icon(Icons.language),
      initialSelection: currentLanguage,
      onSelected: (language) => onLanguageCodeChanged(language!.isoCode),
      dropdownMenuEntries: Languages.defaultLanguages
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
          .toList(),
    );
  }

  Widget _getCountryIcon(String countryCode) {
    final iconPath = 'icons/flags/png100px/$countryCode.png';

    return Image.asset(
      iconPath,
      package: 'country_icons',
      height: 25,
      width: 25,
      errorBuilder: (context, error, stackTrace) => const Icon(Icons.flag, size: 25),
    );
  }
}

extension _LanguageExtension on String {
  Language get toLanguage => Languages.defaultLanguages.firstWhere(
      (language) => language.isoCode == this,
      orElse: () => Languages.defaultLanguages.firstWhere((element) => element.isoCode == 'en'));
}
