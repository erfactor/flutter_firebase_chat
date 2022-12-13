import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:rxdart/rxdart.dart';

Stream<ConnectivityResult> connectivityStream() async* {
  yield* Connectivity().checkConnectivity().asStream() //
      .concatWith([Connectivity().onConnectivityChanged]);
}
