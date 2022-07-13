import 'package:flutter/material.dart';

class KptNoteUtil {
  static Color getColor(String category) {
    switch (category) {
      case "Keep":
        return Colors.blue[100]!;
      case "Problem":
        return Colors.yellow[100]!;
      case "Try":
        return Colors.green[100]!;
      default:
        return Colors.red;
    }
  }
}
