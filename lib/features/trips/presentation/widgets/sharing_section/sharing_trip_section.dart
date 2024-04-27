import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../cubit/share/share_cubit.dart';

part 'user_search_field.dart';
part 'shared_users_list.dart';

class SharingTripSection extends StatelessWidget {
  const SharingTripSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: horizontalSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            LocaleKeys.shareYourTrip.tr(),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: verticalSpace),
          const _UserSearchField(),
          const SizedBox(height: verticalSpace),
          const _SharedUsersList(),
        ],
      ),
    );
  }
}
