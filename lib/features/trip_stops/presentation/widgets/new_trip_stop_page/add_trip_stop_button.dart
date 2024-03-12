import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/l10n/locale_keys.g.dart';
import '../../cubit/new_trip_stop/new_trip_stop_cubit.dart';

class AddTripStopButton extends StatelessWidget {
  final Stream<bool> isSaving;

  const AddTripStopButton({super.key, required this.isSaving});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: isSaving,
      initialData: false,
      builder: (context, snapshot) {
        return ElevatedButton(
          key: const Key('addTripStopButton'),
          onPressed:
              snapshot.data! ? null : () => context.read<NewTripStopCubit>().createTripStop(),
          child: Text(LocaleKeys.addTripStop.tr()),
        );
      },
    );
  }
}
