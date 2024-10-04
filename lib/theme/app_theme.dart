import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_colors.dart';

class AppTheme {
  static ThemeData _baseTheme(Brightness brightness, Color backgroundColor,
      Color textColor, Color primaryColor) {
    return ThemeData(
      fontFamily: 'Noto Sans',
      fontFamilyFallback: const ['Noto Sans KR'],
      brightness: brightness,
      scaffoldBackgroundColor: backgroundColor,
      primaryColor: primaryColor,
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: textColor),
        bodyMedium: TextStyle(color: textColor),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: textColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        ),
      ),
    );
  }

  static ThemeData lightTheme = _baseTheme(
    Brightness.light,
    AppColors.lightBackground,
    AppColors.lightText,
    AppColors.primaryLight,
  ).copyWith(
      // Add any light-mode specific overrides here
      );

  static ThemeData darkTheme = _baseTheme(
    Brightness.dark,
    AppColors.darkBackground,
    AppColors.darkText,
    AppColors.primaryDark,
  ).copyWith(
      // Add any dark-mode specific overrides here
      );
}
