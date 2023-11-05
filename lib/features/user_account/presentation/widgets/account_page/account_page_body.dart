part of '../../pages/account_page.dart';

class _AccountPageBody extends StatelessWidget {
  const _AccountPageBody();

  @override
  Widget build(BuildContext context) {
    return const SliverPadding(
      padding: EdgeInsets.only(
          bottom: pageVerticalPadding, left: pageHorizontalPadding, right: pageHorizontalPadding),
      sliver: SliverToBoxAdapter(
        child: _UserDetails(),
      ),
    );
  }
}
