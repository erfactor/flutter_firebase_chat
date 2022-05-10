// ignore_for_file: long-parameter-list
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProviderLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
      ProviderBase provider,
      Object? previousValue,
      Object? newValue,
      ProviderContainer container,
      ) {
    print('[L] UPDATE [${provider.name ?? provider.runtimeType}] value: $newValue');
  }

  @override
  void didAddProvider(
      ProviderBase provider,
      Object? value,
      ProviderContainer container,
      ) {
    print('[L] CREATE [${provider.name ?? provider.runtimeType}] value: $value');
  }

  @override
  void didDisposeProvider(
      ProviderBase provider,
      ProviderContainer containers,
      ) {
    print('[L] DELETE [${provider.name ?? provider.runtimeType}]');
  }
}
