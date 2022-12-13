import 'dart:async';

import 'package:firebase_chat/util/error_recorder/error_recorder.dart';
import 'package:firebase_chat/util/error_recorder/util/is_error_network_error.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

class FirebaseErrorRecorder extends ErrorRecorder {
  @override
  void recordError(Object error, StackTrace? stack) {
    if (isErrorReportable(error)) {
      unawaited(FirebaseCrashlytics.instance.recordError(error, stack));
    }
  }

  bool isErrorReportable(Object? error) {
    return !isErrorNetworkError(error);
  }
}
