import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_series_db/shared/shared.dart';

/// {@template app_theme}
/// The Default App [ThemeData].
/// {@endtemplate}
class AppTheme {
  /// {@macro app_theme}
  const AppTheme();

  /// Default `ThemeData` for TSDB App.
  ThemeData get themeData {
    return ThemeData(
      primaryColor: _primaryColor,
      canvasColor: _backgroundColor,
      scaffoldBackgroundColor: _backgroundColor,
      iconTheme: _iconTheme,
      appBarTheme: _appBarTheme,
      textTheme: _textTheme,
      inputDecorationTheme: _inputDecorationTheme,
      snackBarTheme: _snackBarTheme,
      elevatedButtonTheme: _elevatedButtonTheme,
      colorScheme: _colorScheme,
      bottomNavigationBarTheme: _bottomNavigationBarThemeData,
    );
  }

  Color get _primaryColor => AppColors.primary;

  Color get _backgroundColor => AppColors.white;

  ColorScheme get _colorScheme {
    return const ColorScheme.light(secondary: AppColors.secondary);
  }

  AppBarTheme get _appBarTheme {
    return AppBarTheme(
      iconTheme: _iconTheme,
      elevation: 1,
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.black,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    );
  }

  TextTheme get _textTheme {
    return const TextTheme(
      labelSmall: TextStyle(
        color: AppColors.white,
      ),
      headlineSmall: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  IconThemeData get _iconTheme {
    return const IconThemeData(
      color: AppColors.black,
    );
  }

  InputDecorationTheme get _inputDecorationTheme {
    return InputDecorationTheme(
      suffixIconColor: AppColors.primaryDark,
      prefixIconColor: AppColors.primaryDark,
      hoverColor: AppColors.primaryDark,
      focusColor: AppColors.primaryDark,
      fillColor: AppColors.disabledButton,
      enabledBorder: _textFieldBorder,
      focusedBorder: _textFieldBorder,
      disabledBorder: _textFieldBorder,
      errorBorder: _textFieldErrorBorder,
      contentPadding: const EdgeInsets.all(AppSpacing.lg),
      border: const UnderlineInputBorder(),
      filled: true,
      isDense: true,
    );
  }

  BottomNavigationBarThemeData get _bottomNavigationBarThemeData =>
      const BottomNavigationBarThemeData(
        backgroundColor: AppColors.primary,
        unselectedItemColor: AppColors.primaryLight,
        selectedItemColor: AppColors.primaryDark,
      );

  InputBorder get _textFieldBorder => OutlineInputBorder(
        borderSide: BorderSide(
          width: 1.5,
          color: _primaryColor,
        ),
      );

  InputBorder get _textFieldErrorBorder => const OutlineInputBorder(
        borderSide: BorderSide(
          width: 1.5,
          color: AppColors.redWine,
        ),
      );

  ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        padding: const EdgeInsets.symmetric(vertical: AppSpacing.lg),
      ),
    );
  }

  SnackBarThemeData get _snackBarTheme {
    return SnackBarThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSpacing.sm),
      ),
      actionTextColor: AppColors.primary,
      backgroundColor: AppColors.secondary,
      elevation: 4,
      behavior: SnackBarBehavior.floating,
    );
  }
}
