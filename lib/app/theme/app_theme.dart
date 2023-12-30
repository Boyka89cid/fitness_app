import 'package:flutter/material.dart';
import 'package:test_now/app/theme/app_colors.dart';

class AppTheme{

  static final ThemeData darkTheme =
  ThemeData.dark().copyWith(
    colorScheme: const ColorScheme.dark(),
        scaffoldBackgroundColor: ColorPalette.backgroundBodyColorDM,
        cardColor: ColorPalette.backgroundCardColorDM,
  );
  // ThemeData(
  //     colorScheme: const ColorScheme.dark(),
  //     textTheme: TextTheme(),
  //     scaffoldBackgroundColor: ColorPalette.backgroundBodyColorDM,
  //     cardColor: ColorPalette.backgroundCardColorDM,
  // ).copyWith(c);

  static final ThemeData lightTheme =
  ThemeData.light().copyWith(
      colorScheme: const ColorScheme.light(),
      scaffoldBackgroundColor: ColorPalette.backgroundBodyColorWM,
      cardColor: ColorPalette.backgroundCardColorWM,
  );
  // ThemeData(
  //   colorScheme: const ColorScheme.light(),
  //   scaffoldBackgroundColor: ColorPalette.backgroundBodyColorWM,
  //   cardColor: ColorPalette.backgroundCardColorWM,
  // );
}