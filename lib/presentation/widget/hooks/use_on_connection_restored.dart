import 'package:firebase_chat/presentation/widget/basic/basic.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

void useOnConnectionRestored(VoidCallback onConnectionRestored) {
  useEffect(() {
    final subscription = Connectivity().onConnectivityChanged.listen((connectivityResult) {
      final isConnected = connectivityResult != ConnectivityResult.none;
      if (isConnected) {
        onConnectionRestored();
      }
    });
    return subscription.cancel;
  });
}
