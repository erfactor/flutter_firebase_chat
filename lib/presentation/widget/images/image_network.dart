// ignore_for_file: no-equal-arguments
import 'package:cached_network_image/cached_network_image.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:firebase_chat/presentation/widget/custom/shimmer_view.dart';
import 'package:firebase_chat/presentation/widget/images/connectivity_stream.dart';
import 'package:rxdart/rxdart.dart';

class ImageNetwork extends HookWidget {
  const ImageNetwork(this.url, {required this.fit, this.enableMemCacheWidth = true, this.alignment = Alignment.center});
  final String url;
  final BoxFit fit;
  final bool enableMemCacheWidth;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    final isConnectionRestoredNotifier = useState(false);
    useEffect(
      () {
        return connectivityStream()
            .map((connectivityResult) => connectivityResult != ConnectivityResult.none)
            .bufferCount(2, 1)
            .map((isConnectedBuffer) => !isConnectedBuffer.first && isConnectedBuffer.last)
            .listen((isConnectionRestored) {
          if (isConnectionRestored) {
            isConnectionRestoredNotifier.value = true;
          }
        }).cancel;
      },
      [],
    );

    final mediaQueryData = MediaQuery.of(context);
    final devicePixelWidth = (mediaQueryData.size.width * mediaQueryData.devicePixelRatio).toInt();

    return CachedNetworkImage(
      key: ValueKey(isConnectionRestoredNotifier.value),
      imageUrl: url,
      placeholder: (_, __) => const ShimmerView(),
      // ignore: avoid-dynamic, external lib
      errorWidget: (_, __, dynamic ___) => const ShimmerView(),
      fadeOutDuration: kAnimationDuration,
      fadeOutCurve: kCurve,
      fadeInDuration: kAnimationDuration,
      fadeInCurve: kCurve,
      fit: fit,
      alignment: alignment,
      memCacheWidth: enableMemCacheWidth ? devicePixelWidth : null,
    );
  }
}
