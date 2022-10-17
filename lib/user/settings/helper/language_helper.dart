// ignore_for_file: constant_identifier_names

import 'package:fashion_style/core/service/settings_service.dart';
import 'package:flutter/material.dart';
import 'package:fashion_style/core/l10n/generated/l10n.dart';

enum LanguageEnum {
  English,
  Arabic
}

class LanguageHelper {
  
  static String getCurrentLocalName() {
    Locale _currentLocale = SettingsService().locale;
    if(_currentLocale.languageCode == 'en') {
      return S.current.user_setting_widget_change_language_english_text;
    } else {
      return S.current.user_setting_widget_change_language_arabic_text;
    }
  }

  static LanguageEnum getCurrentLang() {
    Locale _currentLocale = SettingsService().locale;
    if(_currentLocale.languageCode == 'en') {
      return LanguageEnum.English;
    } else {
      return LanguageEnum.Arabic;
    }
  }

  static void saveSelectedLang(LanguageEnum currentLang) {
    if(currentLang == LanguageEnum.English) {
      SettingsService().locale = const Locale('en', '');
    } else {
      SettingsService().locale = const Locale('ar', 'EG');
    }
  }
}