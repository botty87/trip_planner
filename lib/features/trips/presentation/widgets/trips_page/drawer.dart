part of '../../pages/trips_page.dart';

class _Drawer extends StatelessWidget {
  const _Drawer();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
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
                  ListTile(
                    title: Text(
                      LocaleKeys.userProfile.tr(),
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    leading: const Icon(Icons.account_circle_rounded),
                    onTap: () {
                      //Close drawer
                      Navigator.pop(context);
                      context.pushRoute(const AccountRoute());
                    },
                  ),
                  const SizedBox(height: verticalSpace),
                ]),
              ),
            ),
            const Divider(),
            ListTile(
              title: Text(
                LocaleKeys.infoContact.tr(),
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              leading: const Icon(Icons.info),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
