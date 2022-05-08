import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_chat/presentation/app.dart';
import 'package:firebase_chat/util/di/dependency_injection.dart';
import 'package:firebase_chat/util/error_recorder/error_recorder.dart';
import 'package:firebase_chat/util/error_recorder/firebase_error_recorder.dart';
import 'package:firebase_chat/util/error_recorder/local_error_recorder.dart';
import 'package:firebase_chat/util/sl.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runZonedGuarded<Future<void>>(
      () => startApp(),
      recordError,
    );

Future<void> startApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDependencyInjection();
  await _initializeFirebase();
  _registerServices();
  await _setPortraitOrientation();
  runApp(const App());
}

Future<void> _registerServices() async {
  sl.registerLazySingleton<ErrorRecorder>(() => kReleaseMode ? FirebaseErrorRecorder() : LocalErrorRecorder());
  sl.registerLazySingleton<FirebaseAnalyticsObserver>(() => FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance));
}

Future<void> _initializeFirebase() async {
  await Firebase.initializeApp();
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

  final analytics = FirebaseAnalytics.instance;
  final crashlytics = FirebaseCrashlytics.instance;
  final auth = FirebaseAuth.instance;
  final store = FirebaseFirestore.instance;
}

Future<void> _setPortraitOrientation() => SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
