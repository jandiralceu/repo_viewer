import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/core.dart';

void main() async {
  await dotenv.load();
  return runApp(ProviderScope(child: AppWidget()));
}
