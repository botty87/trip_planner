part of '../pages/info_contacts_page.dart';

class _AppVersion extends StatelessWidget {
  final PackageInfo _packageInfo = getIt();

  _AppVersion();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Patch?>(
      future: ShorebirdUpdater().readNextPatch(),
      builder: (context, snapshot) {
        final version = 'V${_packageInfo.version}+${_packageInfo.buildNumber} #${snapshot.data?.number ?? 0}';
        return Text(version, style: Theme.of(context).textTheme.labelSmall);
      },
    );
  }
}
