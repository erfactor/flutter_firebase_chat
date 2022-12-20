// ignore_for_file: avoid-ignoring-return-values
import 'dart:async';

import 'package:firebase_chat/firebase_options.dart';
import 'package:firebase_chat/presentation/app.dart';
import 'package:firebase_chat/util/error_recorder/error_recorder.dart';
import 'package:firebase_chat/util/error_recorder/firebase_error_recorder.dart';
import 'package:firebase_chat/util/error_recorder/local_error_recorder.dart';
import 'package:firebase_chat/util/sl.dart';
import 'package:firebase_chat/util/use_path_strategy/use_path_strategy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async => await runZonedGuarded<Future<void>>(startApp, recordError);

Future<void> startApp() async {
  usePathStrategyPlatform();
  WidgetsFlutterBinding.ensureInitialized();
  await _initializeFirebase();
  _registerServices();
  await _setPortraitOrientation();
  runApp(const App());
}

void _registerServices() {
  sl.registerLazySingleton<ErrorRecorder>(() => kReleaseMode && !kIsWeb ? FirebaseErrorRecorder() : LocalErrorRecorder());
}

Future<void> _initializeFirebase() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  if (!kIsWeb) {
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  }
  FirebaseUIAuth.configureProviders([
    EmailAuthProvider(),
    GoogleProvider(clientId: ''),
  ]);
}

Future<void> _setPortraitOrientation() => SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
