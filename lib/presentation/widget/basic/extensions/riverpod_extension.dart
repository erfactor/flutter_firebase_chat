import 'package:hooks_riverpod/hooks_riverpod.dart';

extension StateProviderExtension<T> on StateController<T> {
  void setState(final T state) => this.state = state;
}
