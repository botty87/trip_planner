import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../core/routes/app_router.gr.dart';
import '../../../../../gen/assets.gen.dart';

class TripsPageDrawer extends StatelessWidget {
  const TripsPageDrawer({super.key});

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
                    onTap: () => context.pushRoute(const AccountRoute()),
                  ),
                  const SizedBox(height: verticalSpaceS),
                  _DrawerTile(
                    label: LocaleKeys.settings.tr(),
                    icon: Icons.settings,
                    onTap: () => context.pushRoute(const SettingsRoute()),
                  ),
                  const Divider(),
                  _DrawerTile(
                    label: LocaleKeys.discoverNewTrips.tr(),
                    icon: Icons.explore,
                    onTap: () => context.pushRoute(const DiscoverNewTripsRoute()),
                  ),
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

  const _DrawerTile({required this.label, required this.icon, required this.onTap});

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
