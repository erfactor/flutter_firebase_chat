import 'package:firebase_chat/util/sl.dart';

// ignore: one_member_abstracts, for use in GetIt
abstract class ErrorRecorder {
  void recordError(Object error, StackTrace? stack);
}

void recordError(Object error, [StackTrace? stack]) {
  sl<ErrorRecorder>().recordError(error, stack ?? StackTrace.current);
}
