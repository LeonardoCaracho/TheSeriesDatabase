import 'package:flutter/material.dart';

/// Defines the color palette for the App
/// Chosen from here https://m2.material.io/resources/color/#!/?view.left=0&view.right=0&secondary.color=E0E0E0&primary.color=1A237E
abstract class AppColors {
  /// Black.
  static const Color black = Colors.black;

  /// Transparent.
  static const Color transparent = Colors.transparent;

  /// White.
  static const Color white = Colors.white;

  /// The primary color.
  static const Color primary = Color.fromARGB(255, 8, 12, 62);

  /// The primary light color.
  static const Color primaryLight = Color.fromARGB(255, 102, 90, 232);

  /// The primary dark color.
  static const Color primaryDark = Color(0xFFe0e0e0);

  /// The secondary color.
  static const Color secondary = Color(0xFF424242);

  /// The secondary light color.
  static const Color secondaryLight = Color(0xFFffffff);

  /// The secondary dark color.
  static const Color secondaryDark = Color(0xFFaeaeae);

  /// The primary foreground color.
  static const Color primaryForegroundColor = Colors.black;

  /// The primary foreground color.
  static const Color secondaryForegroundColor = Colors.white;

  /// The red wine color.
  static const Color redWine = Color(0xFF9A031E);

  /// The default disabled foreground color.
  static const Color disabledForeground = Color(0x611B1B1B);

  /// The default disabled button color.
  static const Color disabledButton = Color(0x1F000000);
}
