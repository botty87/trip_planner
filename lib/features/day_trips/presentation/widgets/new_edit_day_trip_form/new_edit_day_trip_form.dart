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
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        StreamBuilder<bool>(
          stream: isSaving,
          builder: (context, isSaving) {
            if (isSaving.data ?? false) {
              return const LinearProgressIndicator(minHeight: 1);
            } else {
              return const SizedBox(height: 1);
            }
          },
        ),
        Flexible(
          child: SafeArea(
            child: LayoutBuilder(builder: (context, constraints) {
              final isPortrait = constraints.maxHeight > constraints.maxWidth;
              final heightFactor = isPortrait ? 0.55 : 0.25;
              final pictureHeight = constraints.maxWidth * heightFactor;
              return SingleChildScrollView(
                padding: defaultPagePadding,
                child: Column(
                  children: [
                    SvgPicture(
                      height: pictureHeight,
                      key: const Key('tripImage'),
                      AssetBytesLoader(Assets.svg.addDayTripNewSvg),
                    ),
                    const SizedBox(height: verticalSpaceL),
                    Column(
                      children: [
                        _DescriptionWidget(
                          key: const Key('descriptionWidget'),
                          onDescriptionChanged: onDescriptionChanged,
                          initialDayTripDescription: initialDayTripDescription,
                        ),
                        const SizedBox(height: verticalSpaceL),
                        saveSection,
                      ],
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
