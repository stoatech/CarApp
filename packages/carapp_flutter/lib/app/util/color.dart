import 'dart:ui';

Color getColorFromHex(String hexColor) {
  var color = hexColor.toUpperCase().replaceAll('#', '');

  if (color.length == 6) {
    color = 'FF$color';
  }

  return Color(int.tryParse(color, radix: 16) ?? 0xFFFFFFFF);
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  String toHex({
    bool leadingHashSign = true,
    bool withAlpha = true,
  }) =>
      '${leadingHashSign ? '#' : ''}'
      '${withAlpha ? alpha.toRadixString(16).padLeft(2, '0') : ''}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
