import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trip_planner/core/constants.dart';
import 'package:trip_planner/core/di/di.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trip_planner/features/user_account/presentation/cubit/login_signup/login_signup_cubit.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../gen/assets.gen.dart';

part '../widgets/login_section.dart';
part '../widgets/signup_section.dart';
part '../widgets/new_user_row.dart';

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
        body: SafeArea(
          minimum: const EdgeInsets.all(DEFAULT_PADDING),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SvgPicture(
                  AssetBytesLoader(Assets.svg.loginSvg),
                  height: 200,
                ),
                SizedBox(height: VERTICAL_SPACE),
                _LoginSection(),
                SizedBox(height: VERTICAL_SPACE_L),
                _NewUserRow(),
                SizedBox(height: VERTICAL_SPACE_L),
                _SignUpSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
