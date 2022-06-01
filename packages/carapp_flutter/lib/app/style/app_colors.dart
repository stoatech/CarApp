import 'package:flutter/material.dart';

class AppColors {
  static MaterialColor get brand => brandColor.toMaterialColor();

  static MaterialAccentColor get accent => accentColor.toMaterialAccentColor();

  static MaterialColor get white => whiteColor.toMaterialColor();

  static MaterialColor get mediumGrey => mediumGreyColor.toMaterialColor();

  static MaterialColor get darkGrey => darkGreyColor.toMaterialColor();

  static MaterialColor get black => blackColor.toMaterialColor();

  static const Color brandColor = Color.fromARGB(255, 255, 0, 55);
  static const Color accentColor = Color.fromARGB(255, 170, 1, 40);
  static const Color whiteColor = Colors.white;
  static const Color mediumGreyColor = Color.fromARGB(255, 178, 178, 178);
  static const Color darkGreyColor = Color.fromARGB(255, 93, 93, 93);
  static const Color blackColor = Colors.black;
}

extension Material on Color {
  Map<int, Color> _toSwatch() => {
        50: withOpacity(0.1),
        100: withOpacity(0.2),
        200: withOpacity(0.3),
        300: withOpacity(0.4),
        400: withOpacity(0.5),
        500: withOpacity(0.6),
        600: withOpacity(0.7),
        700: withOpacity(0.8),
        800: withOpacity(0.9),
        900: this,
      };

  MaterialColor toMaterialColor() => MaterialColor(
        value,
        _toSwatch(),
      );

  MaterialAccentColor toMaterialAccentColor() => MaterialAccentColor(
        value,
        _toSwatch(),
      );
}
