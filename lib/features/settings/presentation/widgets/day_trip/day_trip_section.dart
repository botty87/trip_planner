part of '../../pages/settings_page.dart';

class _DayTripSection extends StatelessWidget {
  const _DayTripSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SettingsSectionHeader(title: LocaleKeys.dayTrip.tr()),
        const SizedBox(height: verticalSpaceS),
        const _DayTripStartTimeInput(),
        const SizedBox(height: verticalSpaceS),
        const _ShowDirectionsSwitch(),
        const SizedBox(height: verticalSpaceS),
        const _UseDirectionsColorsSwitch(),
        const SizedBox(height: verticalSpaceS),
        const _ModeSelector(),
      ],
    );
  }
}
