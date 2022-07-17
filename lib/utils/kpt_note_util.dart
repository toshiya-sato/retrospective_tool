import 'package:flutter/material.dart';

class KptNoteUtil {
  static Color getColor(String category) {
    switch (category) {
      case keepVal:
        return Colors.blue[100]!;
      case problemVal:
        return Colors.yellow[100]!;
      case tryVal:
        return Colors.green[100]!;
      default:
        return Colors.red;
    }
  }

  static const String keepVal = 'Keep';
  static const String problemVal = 'Problem';
  static const String tryVal = 'Try';
}
