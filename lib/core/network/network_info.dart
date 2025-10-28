import 'package:connectivity_plus/connectivity_plus.dart';
// //import 'package:injectable/injectable.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

// @Injectable(as: NetworkInfo)
class NetworkInfoImplementer implements NetworkInfo {
  final Connectivity _connectivity;

  NetworkInfoImplementer(this._connectivity); // @factoryMethod
  // NetworkInfoImplementer() {
  //   _connectivity = Connectivity();
  // }
  @override
  Future<bool> get isConnected async {
    final List<ConnectivityResult> connectivityResult =
        await (Connectivity().checkConnectivity());
    if (connectivityResult.contains(ConnectivityResult.mobile) ||
        (connectivityResult.contains(ConnectivityResult.wifi))) {
      return true;
    } else {
      return false;
    }
  }
}
