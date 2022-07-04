import 'package:fashion_style/core/service/_service_interface.dart';
import 'package:fashion_style/core/service/data_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:fashion_style/core/l10n/generated/l10n.dart';


class SettingsService extends ServiceInterface with ChangeNotifier {

  final DataStorageService _dataStorageService = DataStorageService();

  final String localeLangugeCodeName = 'local.language';
  final String localeCountryCodeName = 'local.country';

  late Locale _locale;

  bool get isRTL => locale.languageCode == 'ar';

  @override
  Future initialize() async {
    
    String lang = _dataStorageService.getString(localeLangugeCodeName) ?? 'en';
    String country = _dataStorageService.getString(localeLangugeCodeName) ?? '';

    _locale = Locale(lang, country);

  }

  Locale get locale => _locale;

  set locale(Locale locale) {
    _locale = locale;
    _dataStorageService.saveString(localeLangugeCodeName, locale.languageCode);
    _dataStorageService.saveString(localeCountryCodeName, locale.countryCode ?? '');

    S.load(locale);

    notifyListeners();
  }

  static SettingsService? _instance;

  SettingsService.init();

  factory SettingsService() {
    _instance ??= SettingsService.init();
    return _instance!;
  }
  
}