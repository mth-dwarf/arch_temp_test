import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class InternetStatusRepository {
  Future<bool> isConnected() {
    return InternetConnection().hasInternetAccess;
  }

  Stream<bool> isConnectedStream() {
    return InternetConnection().onStatusChange.map((status) {
      return status == InternetStatus.connected;
    });
  }
}
