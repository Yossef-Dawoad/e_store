// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:shared_preferences/shared_preferences.dart';

/// Example of using GetStorage
///
/// ```dart
/// // Initialize GetStorage
/// LocalStorage localStorage = LocalStorage();
/// // Save data
/// localStorage.saveData('username', 'JohnDoe');
/// // Read data
/// String? username = localStorage.readData('username');
/// print('Username: $username'); // Output: Username: JohnDoe
/// // Remove data
/// localStorage.removeData('username');
/// ```
class LocalStorageManager {
  final SharedPreferences _storage;
  LocalStorageManager(this._storage);

  /// Generic method to save data
  Future<bool> saveData<T>(String key, T value) async => switch (value) {
        String() => await _storage.setString(key, value),
        int() => await _storage.setInt(key, value),
        double() => await _storage.setDouble(key, value),
        bool() => await _storage.setBool(key, value),
        List<String>() => await _storage.setStringList(key, value),
        _ => throw Exception('Unsupported type')
      };

  /// Generic method to read data
  Object? readData(String key) => _storage.get(key);

  /// Generic method to remove data
  Future<bool> removeData(String key) async => await _storage.remove(key);
}
