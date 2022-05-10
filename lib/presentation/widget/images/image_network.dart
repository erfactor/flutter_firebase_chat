import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:firebase_chat/presentation/widget/images/connectivity_stream.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shimmer/shimmer.dart';

class ImageNetwork extends HookWidget {
  const ImageNetwork(this.url, {required this.fit});
  final String url;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    final isConnectionRestored = useState(false);
    useEffect(() {
      final subscription = connectivityStream()
          .map((connectivityResult) => connectivityResult != ConnectivityResult.none)
          .bufferCount(2, 1)
          .map((isConnectedBuffer) => !isConnectedBuffer[0] && isConnectedBuffer[1])
          .listen((_isConnectionRestored) {
        if (_isConnectionRestored) {
          isConnectionRestored.value = true;
        }
      });

      return subscription.cancel;
    });

    return CachedNetworkImage(
      key: ValueKey(isConnectionRestored.value),
      imageUrl: url,
      fit: fit,
      fadeInDuration: 200.milliseconds,
      fadeOutDuration: 200.milliseconds,
      placeholder: (_, __) => const ShimmerView(),
      errorWidget: (_, __, dynamic ___) => const ShimmerView(),
    );
  }
}

class ShimmerView extends StatelessWidget {
  const ShimmerView({this.radius = 0});
  final double radius;

  @override
  Widget build(BuildContext context) {
    const baseColor = Color(0xFFF2F2F2);

    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: Styles.background,
      child: Container(
        decoration: BoxDecoration(
          color: baseColor,
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
