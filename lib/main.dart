import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:kodingworkstest/app/locator.dart';
import 'package:kodingworkstest/app/runner.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setupLocator();

  runZonedGuarded(
    runnerApp,
    (error, stackTrace) => log(
      error.toString(),
      name: 'ERROR',
      stackTrace: stackTrace,
    ),
  );
}
