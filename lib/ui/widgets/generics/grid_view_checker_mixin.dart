import 'package:flutter/material.dart';

import '../../../core/constants.dart';

mixin GridViewCheckerMixin {
  bool canShowGridView(BuildContext context) {
    return MediaQuery.of(context).size.width >= minGridViewWidth;
  }
}
