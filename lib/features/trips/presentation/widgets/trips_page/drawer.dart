part of '../../pages/trips_page.dart';

class _Drawer extends StatelessWidget {
  const _Drawer();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        minimum: const EdgeInsets.only(bottom: verticalSpace),
        child: Column(
          children: [
            SizedBox(
              height: 160,
              child: SvgPicture(
                key: const Key('navDrawerImage'),
                AssetBytesLoader(Assets.svg.navDrawerHeaderSvg),
              ),
            ),
            const SizedBox(height: verticalSpace),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  _DrawerTile(
                    label: LocaleKeys.userProfile.tr(),
                    icon: Icons.account_circle_rounded,
                    onTap: () => context.pushRoute(const TripsRoute()),
                  ),
                  const SizedBox(height: verticalSpace),
                ]),
              ),
            ),
            const Divider(),
            _DrawerTile(
              label: LocaleKeys.infoContact.tr(),
              icon: Icons.info,
              onTap: () => context.pushRoute(const InfoContactsRoute()),
            ),
          ],
        ),
      ),
    );
  }
}

class _DrawerTile extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  const _DrawerTile({super.key, required this.label, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Padding(
          padding: const EdgeInsets.only(left: horizontalSpaceS),
          child: Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        leading: Icon(icon),
        onTap: () {
          //Close drawer
          Navigator.pop(context);
          onTap();
        });
  }
}
