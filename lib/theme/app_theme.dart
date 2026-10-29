
/*


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData getDarkTheme(String fontFamily) {
    const baseTextTheme = TextTheme(
      bodyLarge: TextStyle(color: AppColors.primaryText),
      bodyMedium: TextStyle(color: AppColors.secondaryText),
      bodySmall: TextStyle(color: AppColors.mutedText),
    );

    final dynamicTextTheme = GoogleFonts.getTextTheme(fontFamily, baseTextTheme);

    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.background,
      cardColor: AppColors.cardBackground,
      dividerColor: AppColors.glassBorder,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.roseGold,
        secondary: AppColors.softPeach,
        surface: AppColors.surface,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.background,
        elevation: 0,
        centerTitle: false,
        iconTheme: IconThemeData(color: AppColors.primaryText),
        titleTextStyle: TextStyle(
          color: AppColors.primaryText,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      textTheme: dynamicTextTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.roseGold,
          foregroundColor: AppColors.background,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}*/




import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_colors.dart';

class AppTheme {
  AppTheme._();

  // DARK THEME — Original colors unchanged
  static ThemeData getDarkTheme(String fontFamily) {
    const baseTextTheme = TextTheme(
      bodyLarge: TextStyle(color: AppColors.primaryText),
      bodyMedium: TextStyle(color: AppColors.secondaryText),
      bodySmall: TextStyle(color: AppColors.mutedText),
    );

    final dynamicTextTheme =
        GoogleFonts.getTextTheme(fontFamily, baseTextTheme);

    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.background,
      cardColor: AppColors.cardBackground,
      dividerColor: AppColors.glassBorder,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.roseGold,
        secondary: AppColors.softPeach,
        surface: AppColors.surface,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.background,
        elevation: 0,
        centerTitle: false,
        iconTheme: IconThemeData(
          color: AppColors.primaryText,
        ),
        titleTextStyle: TextStyle(
          color: AppColors.primaryText,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      textTheme: dynamicTextTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.roseGold,
          foregroundColor: AppColors.background,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }

  // LIGHT THEME — Original colors preserved
  static ThemeData getLightTheme(String fontFamily) {
    const baseTextTheme = TextTheme(
      bodyLarge: TextStyle(color: AppColors.primaryText),
      bodyMedium: TextStyle(color: AppColors.secondaryText),
      bodySmall: TextStyle(color: AppColors.mutedText),
    );

    final dynamicTextTheme =
        GoogleFonts.getTextTheme(fontFamily, baseTextTheme);

    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.background,
      cardColor: AppColors.cardBackground,
      dividerColor: AppColors.glassBorder,
      colorScheme: const ColorScheme.light(
        primary: AppColors.roseGold,
        secondary: AppColors.softPeach,
        surface: AppColors.surface,
        onPrimary: AppColors.background,
        onSecondary: AppColors.background,
        onSurface: AppColors.primaryText,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.background,
        elevation: 0,
        centerTitle: false,
        iconTheme: IconThemeData(
          color: AppColors.primaryText,
        ),
        titleTextStyle: TextStyle(
          color: AppColors.primaryText,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      textTheme: dynamicTextTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.roseGold,
          foregroundColor: AppColors.background,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}
