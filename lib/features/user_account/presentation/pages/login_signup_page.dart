import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trip_planner/core/constants.dart';
import 'package:trip_planner/core/l10n/locale_keys.g.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../gen/assets.gen.dart';

part '../widgets/login_section.dart';
part '../widgets/signup_section.dart';

@RoutePage()
class LoginSignupPage extends StatelessWidget {
  const LoginSignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.appName.tr()),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(DEFAULT_PADDING),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: DEFAULT_PADDING),
                child: SingleChildScrollView(
                  child: _LoginSection(),
                ),
              ),
            ),
            _SignUpSection(),
          ],
        ),
      ),
    );
  }
}
