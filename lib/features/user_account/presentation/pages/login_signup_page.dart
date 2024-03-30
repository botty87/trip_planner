import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:password_text_field/password_text_field.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../../../ui/presentation/widgets/generics/snackbars.dart';
import '../../../../gen/assets.gen.dart';
import '../cubit/login_signup/login_signup_cubit.dart';

part '../widgets/login_signup_page/login_section.dart';
part '../widgets/login_signup_page/new_user_row.dart';
part '../widgets/login_signup_page/signup_section.dart';

@RoutePage()
class LoginSignupPage extends StatelessWidget {
  const LoginSignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginSignupCubit>(
      create: (context) => getIt(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.appName.tr()),
        ),
        body: MultiBlocListener(
          listeners: [
            BlocListener<LoginSignupCubit, LoginSignupState>(
              listenWhen: (previous, current) {
                return (previous.authenticationError != current.authenticationError) &&
                    (current.authenticationError != null);
              },
              listener: (context, state) {
                ScaffoldMessenger.of(context).showSnackBar(
                  Snackbars.error(state.authenticationError!),
                );
              },
            ),
            BlocListener<LoginSignupCubit, LoginSignupState>(
              listenWhen: (previous, current) {
                return (previous.successMessage != current.successMessage) &&
                    (current.successMessage != null);
              },
              listener: (context, state) {
                ScaffoldMessenger.of(context).showSnackBar(
                  Snackbars.success(state.successMessage!),
                );
                context.router.maybePop();
              },
            ),
          ],
          child: Column(
            children: [
              BlocSelector<LoginSignupCubit, LoginSignupState, bool>(
                selector: (state) {
                  return state.isLoading;
                },
                builder: (context, isLoading) {
                  return isLoading
                      ? const LinearProgressIndicator(minHeight: 1)
                      : const SizedBox(height: 1);
                },
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: defaultPagePadding,
                  child: Column(
                    children: [
                      SvgPicture(
                        AssetBytesLoader(Assets.svg.loginSvg),
                        height: 200,
                      ),
                      const SizedBox(height: verticalSpace),
                      const _LoginSection(),
                      const SizedBox(height: verticalSpaceL),
                      const _NewUserRow(),
                      const SizedBox(height: verticalSpaceL),
                      const _SignUpSection(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
