import 'package:firebase_chat/util/error_recorder/error_recorder.dart';
import 'package:flutter/foundation.dart';

class LocalErrorRecorder extends ErrorRecorder {
  @override
  void recordError(Object error, StackTrace? stack) {
    debugPrint(error.toString());
    if (stack != null) {
      debugPrintStack(stackTrace: stack);
    }
  }
}
