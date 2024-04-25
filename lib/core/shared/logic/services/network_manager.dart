import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';

/// Manages the network connectivity status and provides methods to check and handle connectivity changes.
///
/// Usage Example might look like this:
/// ```
/// final networkManager = NetworkManager.instance;
/// bool isInternetConnected = await networkManager.checkInternetConnection();
/// if (isInternetConnected) {
///   // Do something
/// }
/// ```
///
/// or we can listen to the connectivity changes:
/// ```
/// final networkManager = NetworkManager.instance;
/// networkManager.onConnectivityChanged.listen((event) {
/// if (event.contains(ConnectivityResult.none)) {
///   // No internet connection
/// } else {
///   // Internet connection is available
/// }
/// ```
class NetworkManager {
  NetworkManager._();
  static NetworkManager get instance => NetworkManager._();

  final Connectivity _connectivity = Connectivity();

  /// Check the internet connection status.
  /// Returns `true` if connected, `false` otherwise.
  Future<bool> checkInternetConnection() async {
    try {
      final result = await _connectivity.checkConnectivity();
      // If the connection is none or bluetooth, then there is no internet connection.
      if (result.contains(ConnectivityResult.none) ||
          result.every((ele) => ele == ConnectivityResult.bluetooth)) {
        return false;
      }
      return true;
    } on PlatformException catch (_) {
      return false;
    }
  }

  /// Exposes connectivity update events from the platform.
  Stream<List<ConnectivityResult>> get onConnectivityChanged =>
      _connectivity.onConnectivityChanged;
}
