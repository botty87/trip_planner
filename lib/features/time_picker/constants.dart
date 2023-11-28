/// Default Border radius value in [double]
library;
// ignore_for_file: constant_identifier_names

const BORDER_RADIUS = 10.0;

/// Default Elevation value in [double]
const ELEVATION = 12.0;

/// Width of the sun/moon asset
const SUN_MOON_WIDTH = 100.0;

/// interval enum
enum TimePickerInterval {
  ONE(1),
  FIVE(5),
  TEN(10),
  FIFTEEN(15),
  THIRTY(30),
  DEFAULT(1);

  final int value;
  const TimePickerInterval(this.value);
}

enum SelectedInput { HOUR, MINUTE }
