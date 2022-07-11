import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final titleFormControllProvider = Provider<TextEditingController>((ref) {
  return TextEditingController();
});

final descriptionFormControllProvider = Provider<TextEditingController>((ref) {
  return TextEditingController();
});
