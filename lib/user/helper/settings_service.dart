// ignore_for_file: non_constant_identifier_names, prefer_conditional_assignment, avoid_renaming_method_parameters

import 'package:fashion_style/core/l10n/generated/l10n.dart';
import 'package:fashion_style/user/helper/service_interface.dart';
import 'package:flutter/material.dart';
  import 'package:intl/intl.dart' as intl;

class SettingsService extends ServiceInterface {

  @override
  String get name => 'Settings';


  final SettingsVariables _settingsVariables = SettingsVariables();

  SettingsVariables get settings => _settingsVariables;


  bool get isRTL => _settingsVariables.locale.languageCode == 'ar';

  bool langIsRTL(String languageCode) {
   return intl.Bidi.isRtlLanguage(languageCode);
  }


  /* Future initialize() async {
    d('Start');

    _settingsVariables.loadSavedSettings();
    
    d('Done');
  } */



  // singleton
  static SettingsService? _instance;

  SettingsService.init();

  factory SettingsService() {
    if (_instance == null) {
      _instance = SettingsService.init();
    }
    return _instance!;
  }

  @override
  bool operator ==(o) => o is SettingsService && name == o.name;
  @override
  int get hashCode => name.hashCode;
  
  @override
  Future initialize() {
    throw UnimplementedError();
  }


}


class SettingsVariables with ChangeNotifier {
  final String localeLanguageCodeKeyName = 'locale.language';
  final String localeCountryCodeKeyName = 'locale.country';

  final String cacheDurationInMinutes = 'cache.duration_minutes';

  final String SELECTED_APP_ICONS_KEY_NAME = 'selected_app_icons';


  late Locale _locale;
  late int _cacheDurationMinutes;
  Map<String, dynamic> _modules = {};

  

  Locale get locale => _locale;
  set locale(Locale locale) {
    _locale = locale;

    S.load(SettingsService().settings.locale);


    notifyListeners();
  }


  int get cacheDurationMinutes => _cacheDurationMinutes;

  set cacheDurationMinutes(int cacheDurationMinutes) {
    _cacheDurationMinutes = cacheDurationMinutes;
    notifyListeners();
  }



  Map<String, dynamic> get modules => _modules;

  void setModules(Map<String, dynamic> map) {
    _modules =  Map.from(map);

    notifyListeners();
  }

}