import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/helpers/app_bloc_observer.dart';
import 'app.dart';

void runnerApp() {
  runZonedGuarded(
    () => BlocOverrides.runZoned(
      () => runApp(const App()),
      blocObserver: AppBlocObserver(),
    ),
    (error, stackTrace) {
      // Implement Logging Error in this body,
      // like Sentry of Firebase Crashlytics
      log(
        error.toString(),
        name: 'LOG',
        stackTrace: stackTrace,
      );
    },
  );
}
