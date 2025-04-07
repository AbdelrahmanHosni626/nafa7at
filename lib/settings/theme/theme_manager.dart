import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nafa7at/core/constants/app_constants.dart';
import 'package:nafa7at/settings/theme/colors_scheme_manager.dart';

class ThemeManager {
  static ThemeData lightTheme() {
    return ThemeData(
      fontFamily: AppConstants.fontFamily,
      colorScheme: ColorsSchemeManager.light,
      scaffoldBackgroundColor: ColorsSchemeManager.light.surface,
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 57.sp,
          fontWeight: FontWeight.w400,
          color: ColorsSchemeManager.light.onSurface,
        ),
        displayMedium: TextStyle(
          fontSize: 45.sp,
          fontWeight: FontWeight.w400,
          color: ColorsSchemeManager.light.onSurface,
        ),
        displaySmall: TextStyle(
          fontSize: 36.sp,
          fontWeight: FontWeight.w600,
          color: ColorsSchemeManager.light.onSurface,
        ),
        headlineLarge: TextStyle(
          fontSize: 32.sp,
          fontWeight: FontWeight.w600,
          color: ColorsSchemeManager.light.onSurface,
        ),
        headlineMedium: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w400,
          color: ColorsSchemeManager.light.onSurface,
        ),
        headlineSmall: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w700,
          color: ColorsSchemeManager.light.onSurface,
        ),
        titleLarge: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
          color: ColorsSchemeManager.light.onSurface,
        ),
        titleMedium: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w300,
          color: ColorsSchemeManager.light.onSurface,
        ),
        titleSmall: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: ColorsSchemeManager.light.onSurface,
        ),
        bodyLarge: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: ColorsSchemeManager.light.onSurface,
        ),
        bodyMedium: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: ColorsSchemeManager.light.onSurface,
        ),
        bodySmall: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w300,
          color: ColorsSchemeManager.light.onSurface,
        ),
        labelLarge: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: ColorsSchemeManager.light.onSurface,
        ),
        labelMedium: TextStyle(
          fontSize: 9.sp,
          fontWeight: FontWeight.w600,
          color: ColorsSchemeManager.light.onSurface,
        ),
        labelSmall: TextStyle(
          fontSize: 9.sp,
          fontWeight: FontWeight.w300,
          color: ColorsSchemeManager.light.onSurface,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorsSchemeManager.light.surface.withValues(
          alpha: 0.7,
        ),
        selectedItemColor: ColorsSchemeManager.light.primary,
        unselectedItemColor: ColorsSchemeManager.light.onSurfaceVariant,
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      fontFamily: AppConstants.fontFamily,
      colorScheme: ColorsSchemeManager.dark,
      scaffoldBackgroundColor: ColorsSchemeManager.dark.surface,
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 57.sp,
          fontWeight: FontWeight.w400,
          color: ColorsSchemeManager.dark.onSurface,
        ),
        displayMedium: TextStyle(
          fontSize: 45.sp,
          fontWeight: FontWeight.w400,
          color: ColorsSchemeManager.dark.onSurface,
        ),
        displaySmall: TextStyle(
          fontSize: 36.sp,
          fontWeight: FontWeight.w400,
          color: ColorsSchemeManager.dark.onSurface,
        ),
        headlineLarge: TextStyle(
          fontSize: 32.sp,
          fontWeight: FontWeight.w400,
          color: ColorsSchemeManager.dark.onSurface,
        ),
        headlineMedium: TextStyle(
          fontSize: 28.sp,
          fontWeight: FontWeight.w400,
          color: ColorsSchemeManager.dark.onSurface,
        ),
        headlineSmall: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w700,
          color: ColorsSchemeManager.dark.onSurface,
        ),
        titleLarge: TextStyle(
          fontSize: 22.sp,
          fontWeight: FontWeight.w500,
          color: ColorsSchemeManager.dark.onSurface,
        ),
        titleMedium: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: ColorsSchemeManager.dark.onSurface,
        ),
        titleSmall: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: ColorsSchemeManager.dark.onSurface,
        ),
        bodyLarge: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: ColorsSchemeManager.dark.onSurface,
        ),
        bodyMedium: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: ColorsSchemeManager.dark.onSurface,
        ),
        bodySmall: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: ColorsSchemeManager.dark.onSurface,
        ),
        labelLarge: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: ColorsSchemeManager.dark.onSurface,
        ),
        labelMedium: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w500,
          color: ColorsSchemeManager.dark.onSurface,
        ),
        labelSmall: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.w500,
          color: ColorsSchemeManager.dark.onSurface,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorsSchemeManager.dark.surface.withValues(
          alpha: 0.7,
        ),
        selectedItemColor: ColorsSchemeManager.dark.primary,
        unselectedItemColor: ColorsSchemeManager.dark.onSurfaceVariant,
      ),
    );
  }
}
