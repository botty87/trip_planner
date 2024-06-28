part of 'new_edit_trip_form.dart';

class _TripPrivacySelector extends HookWidget {
  final ValueChanged<bool> onIsPublicChanged;
  final bool initialIsPublic;

  const _TripPrivacySelector(
      {super.key, required this.onIsPublicChanged, required this.initialIsPublic});

  @override
  Widget build(BuildContext context) {
    final isPublic = useState(initialIsPublic);

    final EdgeInsets showcasePadding;
    if(kIsWeb){
      showcasePadding = const EdgeInsets.only(top: 12);
    } else if (Platform.isAndroid) {
      showcasePadding = const EdgeInsets.only(top: 12);
    } else if (Platform.isIOS) {
      showcasePadding = const EdgeInsets.only(bottom: 8);
    } else {
      showcasePadding = EdgeInsets.zero;
    }

    return Showcase(
      key: _showCaseKeyOne,
      title: LocaleKeys.tripPrivacyShowCaseTitle.tr(),
      description: LocaleKeys.tripPrivacyShowCaseBody.tr(),
      targetPadding: showcasePadding,
      child: Row(
        children: [
          Text(LocaleKeys.tripPrivacy.tr(), style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(width: horizontalSpaceS),
          Expanded(
            child: Wrap(
              spacing: 8,
              alignment: WrapAlignment.spaceEvenly,
              children: [
                ChoiceChip(
                  label: Text(LocaleKeys.public.tr()),
                  selected: isPublic.value,
                  onSelected: (bool selected) {
                    onIsPublicChanged(true);
                    isPublic.value = true;
                  },
                ),
                const SizedBox(width: horizontalSpaceS),
                ChoiceChip(
                  label: Text(LocaleKeys.private.tr()),
                  selected: !isPublic.value,
                  onSelected: (bool selected) {
                    onIsPublicChanged(false);
                    isPublic.value = false;
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
