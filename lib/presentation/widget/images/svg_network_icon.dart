import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:firebase_chat/presentation/widget/images/connectivity_stream.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class SvgNetworkIcon extends HookWidget {
  const SvgNetworkIcon(this.url, {this.color = Styles.black, this.size});
  final String url;
  final Color? color;
  final double? size;

  static final _loadedUrls = <String>{};

  bool _useIsConnected() {
    final isConnected = useState(false);
    useEffect(() {
      final subscription = connectivityStream() //
          .listen((connectivityResult) {
        if (connectivityResult != ConnectivityResult.none) {
          isConnected.value = true;
          _loadedUrls.add(url);
        }
      });

      return subscription.cancel;
    });

    return isConnected.value;
  }

  @override
  Widget build(BuildContext context) {
    if (_loadedUrls.contains(url)) {
      return buildBody();
    }

    if (!_useIsConnected()) {
      return buildPlaceholder();
    }

    return buildBody();
  }

  Widget buildBody() {
    return SvgPicture.network(
      url,
      color: color,
      width: size,
      placeholderBuilder: (_) => buildPlaceholder(),
    ).squared(size);
  }

  Widget buildPlaceholder() => SizedBox(width: size, height: size);
}
