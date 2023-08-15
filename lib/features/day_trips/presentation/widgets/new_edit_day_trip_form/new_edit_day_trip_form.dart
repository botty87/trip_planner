import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/l10n/locale_keys.g.dart';
import '../../../../../gen/assets.gen.dart';

part 'description_widget.dart';

class NewEditDayTripForm extends StatelessWidget {
  final Stream<bool> isSaving;
  final ValueChanged<String> onDescriptionChanged;
  final Widget saveSection;

  final String? initialDayTripDescription;

  const NewEditDayTripForm(
      {super.key,
      required this.isSaving,
      required this.onDescriptionChanged,
      required this.saveSection,
      this.initialDayTripDescription});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        StreamBuilder<bool>(
            stream: isSaving,
            builder: (context, isSaving) {
              if (isSaving.data ?? false) {
                return LinearProgressIndicator(minHeight: 1);
              } else {
                return const SizedBox(height: 1);
              }
            }),
        Expanded(
          child: SafeArea(
            minimum: DEFAULT_PAGE_PADDING,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return SvgPicture(
                        width: constraints.maxWidth,
                        height: constraints.maxWidth,
                        key: Key('tripImage'),
                        AssetBytesLoader(Assets.svg.addNewDayTripSvg),
                      );
                    },
                  ),
                  const SizedBox(height: VERTICAL_SPACE_L),
                  Column(
                    children: [
                      _DescriptionWidget(
                        key: Key('descriptionWidget'),
                        onDescriptionChanged: onDescriptionChanged,
                        initialDayTripDescription: initialDayTripDescription,
                      ),
                      const SizedBox(height: VERTICAL_SPACE_L),
                      saveSection,
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
