import 'package:flutter/material.dart';
// import 'package:intl/intl.dart' as localization;
import 'package:nafa7at/generated/l10n.dart';

extension BuildContextExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  double get screenWidth => MediaQuery.sizeOf(this).width;

  double get screenHeight => MediaQuery.sizeOf(this).height;

  S get localizedText => S.of(this);

  // TextDirection get currentTextDirection {
  //   if (localization.Intl.getCurrentLocale() == 'ar') {
  //     return TextDirection.rtl;
  //   } else {
  //     return TextDirection.ltr;
  //   }
  // }

  // bool get isEnglishLanguage => localization.Intl.getCurrentLocale() == 'en';

  bool get hasFocus => FocusScope.of(this).hasPrimaryFocus;

  bool get isKeyboardClosed =>
      FocusScope.of(this).hasPrimaryFocus || !FocusScope.of(this).hasFocus;

  bool get isDarkTheme => Theme.of(this).brightness == Brightness.dark;
}
