import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

final class Snackbars {
  static SnackBar error(String message) {
    return SnackBar(
      content: Text(
        message,
        style: GoogleFonts.robotoSlab(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.red,
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
