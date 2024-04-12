import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';

/// Manages the network connectivity status and provides methods to check and handle connectivity changes.
class NetworkManager {
  /// create a singleton for this class
  NetworkManager._();

  static final NetworkManager _singleton = NetworkManager._();
  static NetworkManager get instance => _singleton;

  static final Connectivity connectivity = Connectivity();

  /// Check the internet connection status.
  /// Returns `true` if connected, `false` otherwise.
  Future<bool> isConnected() async {
    try {
      final result = await connectivity.checkConnectivity();
      if (result.first == ConnectivityResult.none) return false;
      return true;
    } on PlatformException catch (_) {
      return false;
    }
  }
}
