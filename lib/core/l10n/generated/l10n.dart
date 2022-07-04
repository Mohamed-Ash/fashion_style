// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Language`
  String get user_setting_widget_change_language_language_title {
    return Intl.message(
      'Language',
      name: 'user_setting_widget_change_language_language_title',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Email`
  String get login_screen_generic_field_email_hint_text_title {
    return Intl.message(
      'Enter Your Email',
      name: 'login_screen_generic_field_email_hint_text_title',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get login_screen_generic_field_password_title {
    return Intl.message(
      'Password',
      name: 'login_screen_generic_field_password_title',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cansel {
    return Intl.message(
      'Cancel',
      name: 'cansel',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get user_setting_widget_change_language_english_text {
    return Intl.message(
      'English',
      name: 'user_setting_widget_change_language_english_text',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get user_setting_widget_change_language_arabic_text {
    return Intl.message(
      'Arabic',
      name: 'user_setting_widget_change_language_arabic_text',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar', countryCode: 'EG'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
