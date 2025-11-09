
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:kit/core/utils/app_utils.dart';

@lazySingleton
class HiveClient {
  HiveClient();

  static const String _databaseName = AppConstants.hiveDataBase;
  static const List<String> _boxNames = [
    AppConstants.hiveUserInfoBox,
    AppConstants.hiveSettingsBox,
    AppConstants.hiveThemeModeBox
  ];

  BoxCollection? _boxCollection;

  /// Initialize and open the box collection
  Future<BoxCollection> _getBoxCollection() async {
    _boxCollection ??= await BoxCollection.open(
      _databaseName,
      Set.from(_boxNames),
      path: './',
    );
    return _boxCollection!;
  }

  /// Open a specific box from the collection
  Future<CollectionBox<Map>> _openBox(String boxName) async {
    final collection = await _getBoxCollection();
    return await collection.openBox<Map>(boxName);
  }

  // ==================== CREATE/UPDATE Operations ====================

  /// Store a single value in a box
  Future<void> put(String boxName, String key, dynamic value) async {
    final box = await _openBox(boxName);
    await box.put(key, value);
  }

  /// Store multiple key-value pairs in a box
  Future<void> putAll(String boxName, Map<String, dynamic> entries) async {
    final box = await _openBox(boxName);
    for (final entry in entries.entries) {
      await box.put(entry.key, entry.value);
    }
  }

  // ==================== READ Operations ====================

  /// Get a single value from a box
  Future<dynamic> get(String boxName, String key, {dynamic defaultValue}) async {
    final box = await _openBox(boxName);
    final value = await box.get(key);
    return value ?? defaultValue;
  }

  /// Get a typed value from a box
  Future<T?> getTyped<T>(String boxName, String key, {T? defaultValue}) async {
    final box = await _openBox(boxName);
    final value = await box.get(key);
    if (value == null) return defaultValue;
    return value as T?;
  }

  /// Get all keys from a box
  Future<List<String>> getAllKeys(String boxName) async {
    final box = await _openBox(boxName);
    return await box.getAllKeys();
  }

  /// Get all values from a box
  Future<Map<String, dynamic>> getAllValues(String boxName) async {
    final box = await _openBox(boxName);
    final keys = await box.getAllKeys();
    final Map<String, dynamic> result = {};
    
    for (final key in keys) {
      final value = await box.get(key);
      if (value != null) {
        result[key] = value;
      }
    }
    return result;
  }

  /// Check if a key exists in a box
  Future<bool> containsKey(String boxName, String key) async {
    final keys = await getAllKeys(boxName);
    return keys.contains(key);
  }

  // ==================== DELETE Operations ====================

  /// Delete a single key from a box
  Future<void> delete(String boxName, String key) async {
    final box = await _openBox(boxName);
    await box.delete(key);
  }

  /// Delete multiple keys from a box
  Future<void> deleteAll(String boxName, List<String> keys) async {
    final box = await _openBox(boxName);
    for (final key in keys) {
      await box.delete(key);
    }
  }

  /// Clear all data from a specific box
  Future<void> clearBox(String boxName) async {
    final box = await _openBox(boxName);
    final keys = await box.getAllKeys();
    for (final key in keys) {
      await box.delete(key);
    }
  }

  /// Clear all data from all boxes
  Future<void> clearAllBoxes() async {
    for (final boxName in _boxNames) {
      await clearBox(boxName);
    }
  }
  
  // ==================== Utility Methods ====================

  /// Close all boxes and the box collection
  Future<void> close() async {
    if (_boxCollection != null) {
      _boxCollection!.close();
      _boxCollection = null;
    }
  }

  /// Compact the database to reduce size
  Future<void> compact() async {
    await close();
    await Hive.close();
    _boxCollection = null;
  }

  /// Delete the entire database
  Future<void> deleteDatabase() async {
    await close();
    await Hive.deleteFromDisk();
  }

  /// Check if the database is open
  bool get isOpen => _boxCollection != null;

  /// Get the database name
  String get databaseName => _databaseName;

  /// Get all box names
  List<String> get boxNames => _boxNames;
}