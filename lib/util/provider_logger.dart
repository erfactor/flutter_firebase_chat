// ignore_for_file: long-parameter-list
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProviderLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    debugPrint('[L] UPDATE [${provider.name ?? provider.runtimeType}] value: $newValue');
  }

  @override
  void didAddProvider(
    ProviderBase provider,
    Object? value,
    ProviderContainer container,
  ) {
    debugPrint('[L] CREATE [${provider.name ?? provider.runtimeType}] value: $value');
  }

  @override
  void didDisposeProvider(
    ProviderBase provider,
    ProviderContainer container,
  ) {
    debugPrint('[L] DELETE [${provider.name ?? provider.runtimeType}]');
  }
}
