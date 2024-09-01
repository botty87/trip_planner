import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../cubit/trip_stop/trip_stop_cubit.dart';

class TripStopNoteWidget extends HookWidget {
  const TripStopNoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final note = context.read<TripStopCubit>().state.tripStop.note;
    final textController = useTextEditingController(text: note);

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: verticalSpace),
            child: Text(
              LocaleKeys.note.tr(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: horizontalSpace, vertical: verticalSpace),
              child: TextField(
                key: const Key('noteTextField'),
                controller: textController,
                maxLines: null,
                textAlign: TextAlign.justify,
                decoration: InputDecoration.collapsed(
                  hintText: LocaleKeys.noteHint.tr(),
                ),
                keyboardType: TextInputType.multiline,
                onChanged: (value) => context.read<TripStopCubit>().noteChanged(value),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
