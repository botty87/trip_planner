import 'package:flutter/material.dart';

/// Render the [Hour] or [Minute] wheel for `IOS` picker

class DisplayWheel extends StatelessWidget {
  /// [Controller] for the wheel
  final FixedExtentScrollController controller;

  /// The items rendered for the wheel
  final List<int?> items;

  /// The Change handler
  final void Function(int value) onChange;

  /// Callback to render custom label
  final int Function(int item)? getModifiedLabel;

  /// Whether the wheel is selected or not
  final bool isSelected;

  /// Whether the wheel is disabled or not
  final bool disabled;

  /// Constructor for the [Widget]
  const DisplayWheel({
    super.key,
    required this.controller,
    required this.items,
    required this.onChange,
    this.isSelected = false,
    this.disabled = false,
    this.getModifiedLabel,
  });

  @override
  Widget build(BuildContext context) {
    final commonTimeStyles = Theme.of(context).textTheme.displayMedium!.copyWith(
          fontSize: 30,
        );

    final color = Theme.of(context).colorScheme.secondary;
    const unselectedColor = Colors.grey;

    return SizedBox(
      width: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0),
        child: ListWheelScrollView.useDelegate(
          controller: controller,
          itemExtent: 36,
          physics:
              disabled ? const NeverScrollableScrollPhysics() : const FixedExtentScrollPhysics(),
          overAndUnderCenterOpacity: disabled ? 0 : 0.25,
          perspective: 0.01,
          onSelectedItemChanged: onChange,
          childDelegate: ListWheelChildBuilderDelegate(
            childCount: items.length,
            builder: (context, index) {
              final val = (getModifiedLabel?.call(items[index]!) ?? (items[index]!))
                  .toString()
                  .padLeft(2, '0');
              return Center(
                child: Text(
                  val,
                  textScaler: const TextScaler.linear(0.85),
                  style: commonTimeStyles.copyWith(
                    color: isSelected ? color : unselectedColor,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
