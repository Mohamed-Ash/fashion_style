// ignore_for_file: constant_identifier_names

import 'package:fashion_style/core/l10n/generated/l10n.dart';
import 'package:fashion_style/user/helper/settings_service.dart';
import 'package:flutter/material.dart';
enum LanguageEnum {
  English,
  Arabic
}

class LanguageHelper {
  
  // ignore: todo
  // TODO: change to dynamic language name
  
  static String getCurrentLocalName() {
    Locale _currentLocale = SettingsService().settings.locale;
    if(_currentLocale.languageCode == 'en') {
      return S.current.english;
    } else {
      return S.current.arabic;
    }
  }

  static LanguageEnum getCurrentLang() {
    Locale _currentLocale = SettingsService().settings.locale;
    if(_currentLocale.languageCode == 'en') {
      return LanguageEnum.English;
    } else {
      return LanguageEnum.Arabic;
    }
  }

  static void saveSelectedLang(LanguageEnum currentLang) {
    if(currentLang == LanguageEnum.English) {
      SettingsService().settings.locale = const Locale('en', '');
    } else {
      SettingsService().settings.locale = const Locale('ar', 'EG');
    }
  }
}