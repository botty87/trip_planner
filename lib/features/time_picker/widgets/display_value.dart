import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants.dart';
import '../cubit/time_picker_cubit.dart';

/// Render the [Hour] or [Minute] value for `Android` picker
class DisplayValue extends StatelessWidget {
  /// [selectedInput] is the [SelectedInput] enum that is used to determine which value is selected
  final SelectedInput selectedInput;

  /// Constructor for the [Widget]
  const DisplayValue({
    super.key,
    required this.selectedInput,
  });

  @override
  Widget build(BuildContext context) {
    final commonTimeStyles = Theme.of(context).textTheme.displayMedium!.copyWith(
          fontSize: 62,
          fontWeight: FontWeight.bold,
        );

    final selectedColor = Theme.of(context).colorScheme.secondary;
    const unselectedColor = Colors.grey;

    return InkWell(
      onTap: () {
        context.read<TimePickerCubit>().onSelectedInputChanged(selectedInput);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0),
        child: _ValueWidget(
          commonTimeStyles: commonTimeStyles,
          selectedColor: selectedColor,
          unselectedColor: unselectedColor,
          selectedInput: selectedInput,
        ),
      ),
    );
  }
}

class _ValueWidget extends StatelessWidget {
  final TextStyle commonTimeStyles;
  final Color selectedColor;
  final Color unselectedColor;
  final SelectedInput selectedInput;

  const _ValueWidget({
    required this.commonTimeStyles,
    required this.selectedColor,
    required this.unselectedColor,
    required this.selectedInput,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = context
        .select<TimePickerCubit, bool>((cubit) => cubit.state.selectedInput == selectedInput);

    final value = context.select<TimePickerCubit, String>((cubit) => switch (selectedInput) {
          SelectedInput.HOUR => cubit.state.time.hour.toString().padLeft(2, '0'),
          SelectedInput.MINUTE => cubit.state.time.minute.toString().padLeft(2, '0'),
        });

    return Text(
      value,
      textScaler: const TextScaler.linear(0.85),
      style: commonTimeStyles.copyWith(
        color: isSelected ? selectedColor : unselectedColor,
      ),
    );
  }
}
