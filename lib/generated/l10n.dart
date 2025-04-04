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

  /// `نفحات`
  String get appName {
    return Intl.message(
      'نفحات',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// ` الصفحة الرئيسية`
  String get homeTab {
    return Intl.message(
      ' الصفحة الرئيسية',
      name: 'homeTab',
      desc: '',
      args: [],
    );
  }

  /// `مواقيت الصلاة`
  String get prayTab {
    return Intl.message(
      'مواقيت الصلاة',
      name: 'prayTab',
      desc: '',
      args: [],
    );
  }

  /// `الإعدادات`
  String get settingsTab {
    return Intl.message(
      'الإعدادات',
      name: 'settingsTab',
      desc: '',
      args: [],
    );
  }

  /// `المكان`
  String get place {
    return Intl.message(
      'المكان',
      name: 'place',
      desc: '',
      args: [],
    );
  }

  /// `الصلاة القادمة:`
  String get nextSalah {
    return Intl.message(
      'الصلاة القادمة:',
      name: 'nextSalah',
      desc: '',
      args: [],
    );
  }

  /// `مساءً`
  String get pm {
    return Intl.message(
      'مساءً',
      name: 'pm',
      desc: '',
      args: [],
    );
  }

  /// `صباحًا`
  String get am {
    return Intl.message(
      'صباحًا',
      name: 'am',
      desc: '',
      args: [],
    );
  }

  /// `جميع العبادات`
  String get all3badat {
    return Intl.message(
      'جميع العبادات',
      name: 'all3badat',
      desc: '',
      args: [],
    );
  }

  /// `القران الكريم`
  String get quran {
    return Intl.message(
      'القران الكريم',
      name: 'quran',
      desc: '',
      args: [],
    );
  }

  /// `اذكار الصلاة`
  String get azkarSalah {
    return Intl.message(
      'اذكار الصلاة',
      name: 'azkarSalah',
      desc: '',
      args: [],
    );
  }

  /// `اذكار الصباح`
  String get azkarSabah {
    return Intl.message(
      'اذكار الصباح',
      name: 'azkarSabah',
      desc: '',
      args: [],
    );
  }

  /// `اذكار المساء`
  String get azkarMasa2 {
    return Intl.message(
      'اذكار المساء',
      name: 'azkarMasa2',
      desc: '',
      args: [],
    );
  }

  /// `التقويم الهجري`
  String get taqwinHijri {
    return Intl.message(
      'التقويم الهجري',
      name: 'taqwinHijri',
      desc: '',
      args: [],
    );
  }

  /// `التسبيح`
  String get tasbeh {
    return Intl.message(
      'التسبيح',
      name: 'tasbeh',
      desc: '',
      args: [],
    );
  }

  /// `جميع الادعية`
  String get allAd3ia {
    return Intl.message(
      'جميع الادعية',
      name: 'allAd3ia',
      desc: '',
      args: [],
    );
  }

  /// `اذكار متنوعة`
  String get azkarMotanwi3a {
    return Intl.message(
      'اذكار متنوعة',
      name: 'azkarMotanwi3a',
      desc: '',
      args: [],
    );
  }

  /// `القبلة`
  String get qibla {
    return Intl.message(
      'القبلة',
      name: 'qibla',
      desc: '',
      args: [],
    );
  }

  /// `المفضلة`
  String get likes {
    return Intl.message(
      'المفضلة',
      name: 'likes',
      desc: '',
      args: [],
    );
  }

  /// `الفجر`
  String get fajr {
    return Intl.message(
      'الفجر',
      name: 'fajr',
      desc: '',
      args: [],
    );
  }

  /// `الشروق`
  String get sunrise {
    return Intl.message(
      'الشروق',
      name: 'sunrise',
      desc: '',
      args: [],
    );
  }

  /// `الظهر`
  String get dhuhr {
    return Intl.message(
      'الظهر',
      name: 'dhuhr',
      desc: '',
      args: [],
    );
  }

  /// `العصر`
  String get asr {
    return Intl.message(
      'العصر',
      name: 'asr',
      desc: '',
      args: [],
    );
  }

  /// `المغرب`
  String get maghrib {
    return Intl.message(
      'المغرب',
      name: 'maghrib',
      desc: '',
      args: [],
    );
  }

  /// `العشاء`
  String get isha {
    return Intl.message(
      'العشاء',
      name: 'isha',
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
      Locale.fromSubtags(languageCode: 'ar'),
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
