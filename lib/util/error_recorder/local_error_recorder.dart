import 'package:firebase_chat/util/error_recorder/error_recorder.dart';
import 'package:flutter/foundation.dart';

class LocalErrorRecorder extends ErrorRecorder {
  @override
  void recordError(dynamic error, StackTrace? stack) {
    debugPrintThrottled(error.toString());
    if (stack != null) {
      debugPrintStack(stackTrace: stack);
    }
  }
}
