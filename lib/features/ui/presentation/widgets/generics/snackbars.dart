import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/constants.dart';

final class Snackbars {
  static SnackBar error(String message,
      {Duration duration = const Duration(seconds: 4), bool? showCloseButton}) {
    return SnackBar(
      content: Text(
        message,
        style: GoogleFonts.robotoSlab(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.red,
      duration: duration,
      showCloseIcon: showCloseButton,
    );
  }

  static SnackBar success(String message) {
    return SnackBar(
      content: Text(
        message,
        style: GoogleFonts.robotoSlab(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.green,
    );
  }

  static SnackBar loading(String message) {
    return SnackBar(
      content: Row(
        children: [
          const CircularProgressIndicator(color: Colors.white),
          const SizedBox(width: horizontalSpaceL),
          Text(
            message,
            style: GoogleFonts.robotoSlab(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blue,
    );
  }
}
