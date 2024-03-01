import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../core/constants.dart';
import '../../../../core/di/di.dart';
import '../../../../core/l10n/locale_keys.g.dart';
import '../cubit/info_contacts_cubit.dart';

part '../widgets/developed_by.dart';
part '../widgets/privacy_policy.dart';
part '../widgets/terms.dart';
part '../widgets/app_version.dart';

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
        body: SafeArea(
          minimum: const EdgeInsets.only(
              bottom: verticalSpace, left: horizontalSpace, right: horizontalSpace),
          child: kIsWeb
              ? const _InfoContactsPagePortrait()
              : OrientationBuilder(builder: (context, orientation) {
                  if (orientation == Orientation.portrait) {
                    return const _InfoContactsPagePortrait();
                  } else {
                    return const _InfoContactsPageLandscape();
                  }
                }),
        ),
      ),
    );
  }
}

class _InfoContactsPagePortrait extends StatelessWidget {
  const _InfoContactsPagePortrait();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const _PrivacyPolicy(),
        const SizedBox(height: verticalSpace),
        const _Terms(),
        const SizedBox(height: verticalSpace),
        const Center(child: _DevelopedBy(orientation: Orientation.portrait)),
        const SizedBox(height: verticalSpaceS),
        Center(child: _AppVersion()),
      ],
    );
  }
}

class _InfoContactsPageLandscape extends StatelessWidget {
  const _InfoContactsPageLandscape();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
          child: Row(
            children: [
              _PrivacyPolicy(),
              SizedBox(width: horizontalSpace),
              _Terms(),
            ],
          ),
        ),
        const SizedBox(height: verticalSpace),
        const Center(child: _DevelopedBy(orientation: Orientation.landscape)),
        const SizedBox(height: verticalSpaceS),
        Center(child: _AppVersion()),
      ],
    );
  }
}
