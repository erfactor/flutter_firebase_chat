import 'package:firebase_chat/presentation/widget/basic/basic.dart';

class FutureProviderView<T> extends ConsumerWidget {
  const FutureProviderView({required this.provider, required this.builder});

  final ProviderBase<AsyncValue<T>> provider;
  final Widget Function(T data) builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(provider);
    return asyncValue.when(
      data: builder,
      error: (error, st) => Text(error.toString()).center,
      loading: () => const LinearProgressIndicator().center,
    );
  }
}
