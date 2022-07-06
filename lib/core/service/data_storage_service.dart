// ignore_for_file: unnecessary_new, avoid_print

import 'package:fashion_style/core/service/_service_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataStorageService extends ServiceInterface {

  late SharedPreferences _sharedPreferences;

  @override
  Future initialize() async {

    _sharedPreferences = await SharedPreferences.getInstance();

  }

  // saving
  Future<bool> saveString(String key, String value) {
    return _sharedPreferences.setString(key, value);
  }

  Future<bool> saveInt(String key, int value) {
    return _sharedPreferences.setInt(key, value);
  }

  Future<bool> saveBool(String key, bool value) {
    return _sharedPreferences.setBool(key, value);
  }

  Future<bool> saveDouble(String key, double value) {
    return _sharedPreferences.setDouble(key, value);
  }

  Future<bool> saveList(String key, List<String> value) {
    return _sharedPreferences.setStringList(key, value);
  }

  // get saving data

  String? getString(String key) {
    try {
      return _sharedPreferences.getString(key);
    } catch (e) {
      print('Services: unknown variable: $key');
    }
    return null;
  }

  bool? getBool(String key) {
    try {
      return _sharedPreferences.getBool(key);
    } catch (e) {
      print('Services: unknown variable: $key');
    }
    return null;
  }

  int? getInt(String key) {
    try {
      return _sharedPreferences.getInt(key);
    } catch (e) {
      print('Services: unknown variable: $key');
    }
    return null;
  }

  double? getDouble(String key) {
    try {
      return _sharedPreferences.getDouble(key);
    } catch (e) {
      print('Services: unknown variable: $key');
    }
    return null;
  }

  List<String>? getList(String key) {
    try {
      return _sharedPreferences.getStringList(key);
    } catch (e) {
      print('Services: unknown variable: $key');
    }
    return null;
  }


  Future<bool>? removeString(String key) {
    try {
      return _sharedPreferences.remove(key);
    } catch (e) {
      print('Services: unknown variable: $key');
    }
    return null;
  }
  // singleton
  static DataStorageService? _instance;

  DataStorageService.init();

  factory DataStorageService() {
    _instance ??= new DataStorageService.init();
    return _instance!;
  }
}