part of '../pages/settings_page.dart';

class _SettingsBody extends StatelessWidget {
  const _SettingsBody();

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: defaultPagePadding,
      child: SafeArea(
        child: Column(
          children: [
            _DayTripSection(),
          ],
        ),
      ),
    );
  }
}
