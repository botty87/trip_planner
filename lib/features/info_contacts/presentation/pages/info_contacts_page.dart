import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../cubit/info_contacts_cubit.dart';

part '../widgets/developed_by.dart';
part '../widgets/privacy_policy.dart';
part '../widgets/terms.dart';

@RoutePage()
class InfoContactsPage extends StatelessWidget {
  const InfoContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<InfoContactsCubit>(
      create: (context) => getIt(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(LocaleKeys.infoContact.tr()),
        ),
        body: const SafeArea(
          minimum:
              EdgeInsets.only(bottom: verticalSpace, left: horizontalSpace, right: horizontalSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _PrivacyPolicy(),
              SizedBox(height: verticalSpace),
              _Terms(),
              SizedBox(height: verticalSpace),
              Center(child: _DevelopedBy()),
            ],
          ),
        ),
      ),
    );
  }
}
