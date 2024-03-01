import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:animated_switcher_plus/animated_switcher_plus.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:password_text_field/password_text_field.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../ui/presentation/widgets/generics/snackbars.dart';
import '../../../../gen/assets.gen.dart';
import '../cubit/account_page/account_cubit.dart';
import '../cubit/user/user_cubit.dart';

part '../widgets/account_page/account_page_body.dart';
part '../widgets/account_page/edit_password.dart';
part '../widgets/account_page/edit_user_details.dart';
part '../widgets/account_page/reauthentication_modal_bottom.dart';
part '../widgets/account_page/user_details.dart';

@RoutePage()
class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<UserCubit>().state.maybeWhen(
          loggedIn: (user) => user,
          orElse: () => null,
        );

    if (user == null) {
      throw Exception('User is null');
    }

    return BlocProvider<AccountCubit>(
      create: (context) => getIt(param1: user),
      child: Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
          double height = constraints.maxHeight * 0.4;
          if (height < 300) {
            height = 300;
          }

          return CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                pinned: true,
                stretch: true,
                expandedHeight: height,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    LocaleKeys.yourProfile.tr(),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  background: SvgPicture(
                    key: const Key('tripImage'),
                    AssetBytesLoader(Assets.svg.accountSvg),
                  ),
                ),
              ),
              const SliverFillRemaining(
                hasScrollBody: false,
                child: _AccountPageBody(),
              ),
            ],
          );
        }),
        floatingActionButton: BlocBuilder<AccountCubit, AccountState>(
          buildWhen: (previous, current) =>
              (previous.runtimeType != current.runtimeType) &&
              current is! AccountStateReauthenticating &&
              previous is! AccountStateReauthenticating,
          builder: (context, state) {
            final isVisible =
                context.select((AccountCubit cubit) => cubit.state is AccountStateNormal);

            //Animate the fab, fade in and scale up when visible, fade out and scale down when not visible
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (child, animation) {
                return FadeTransition(
                  opacity: animation,
                  child: ScaleTransition(
                    scale: animation,
                    child: child,
                  ),
                );
              },
              child: isVisible
                  ? FloatingActionButton(
                      key: const Key('editButton'),
                      onPressed: () => context.read<AccountCubit>().edit(),
                      child: const Icon(Icons.edit),
                    )
                  : const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}
