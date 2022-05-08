import 'package:firebase_chat/util/sl.dart';

abstract class ErrorRecorder {
  void recordError(dynamic error, StackTrace? stack);
}

void recordError(dynamic error, [StackTrace? stack]) {
  sl<ErrorRecorder>().recordError(error, stack ?? StackTrace.current);
}
