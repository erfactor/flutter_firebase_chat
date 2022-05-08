import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:rxdart/rxdart.dart';

Stream<ConnectivityResult> connectivityStream() {
  return Connectivity().checkConnectivity().asStream() //
      .concatWith([Connectivity().onConnectivityChanged]);
}
