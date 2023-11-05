import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../../gen/assets.gen.dart';
import '../cubit/account_page/cubit/account_cubit.dart';
import '../cubit/user/user_cubit.dart';

part '../widgets/account_page/account_page_body.dart';
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
      Navigator.of(context).pop();
      return const SizedBox.shrink();
    }

    return BlocProvider<AccountCubit>(
      create: (context) => getIt(param1: user),
      child: Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
          return CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                pinned: true,
                stretch: true,
                expandedHeight: constraints.maxWidth * 0.6,
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
              const _AccountPageBody(),
            ],
          );
        }),
        floatingActionButton: FloatingActionButton(
          key: const Key('editButton'),
          onPressed: () {},
          child: const Icon(Icons.edit),
        ),
      ),
    );
  }
}
