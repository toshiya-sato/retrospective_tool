import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'top.dart';

void main() {
  runApp(const ProviderScope(child: TopWidget()));
}
