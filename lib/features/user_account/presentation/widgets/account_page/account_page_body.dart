part of '../../pages/account_page.dart';

class _AccountPageBody extends StatelessWidget {
  const _AccountPageBody();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountCubit, AccountState>(
      listener: (context, state) {
        //On error show snackbar
        state.whenOrNull(
          error: (user, message) {
            ScaffoldMessenger.of(context).showSnackBar(
              Snackbars.error(message),
            );
          },
        );
      },
      child: const SliverPadding(
        padding: EdgeInsets.only(
            bottom: pageVerticalPadding, left: pageHorizontalPadding, right: pageHorizontalPadding),
        sliver: SliverToBoxAdapter(
          child: _UserDetails(),
        ),
      ),
    );
  }
}
