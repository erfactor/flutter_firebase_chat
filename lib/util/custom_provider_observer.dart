// ignore_for_file: long-parameter-list
import 'package:firebase_chat/util/error_recorder/error_recorder.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:stack_trace/stack_trace.dart';

class CustomProviderObserver extends ProviderObserver {
  CustomProviderObserver({required this.loggingEnabled});
  final bool loggingEnabled;
  final logger = Logger(printer: PrettyPrinter(methodCount: 0));

  void log(String message) {
    if (loggingEnabled) {
      logger.i(message);
    }
  }

  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue, Object? newValue, ProviderContainer container) {
    log('[L] UPDATE [${provider.name ?? provider.runtimeType}] value: $newValue');
  }

  @override
  void didAddProvider(ProviderBase provider, Object? value, ProviderContainer container) {
    log('[L] CREATE [${provider.name ?? provider.runtimeType}] value: $value');
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer container) {
    log('[L] DELETE [${provider.name ?? provider.runtimeType}]');
  }

  @override
  void providerDidFail(ProviderBase provider, Object error, StackTrace stackTrace, ProviderContainer container) {
    final trace = Trace.from(stackTrace).terse;
    logger.e('$provider did fail', error, trace);
    recordError(error, trace);
  }
}
