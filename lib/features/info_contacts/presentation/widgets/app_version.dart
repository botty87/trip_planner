part of '../pages/info_contacts_page.dart';

class _AppVersion extends StatelessWidget {
  final PackageInfo _packageInfo = getIt();

  _AppVersion();

  @override
  Widget build(BuildContext context) {
    return Text('V${_packageInfo.version}+${_packageInfo.buildNumber}',
        style: Theme.of(context).textTheme.labelSmall);
  }
}
