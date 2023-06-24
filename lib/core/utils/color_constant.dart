import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#818181');

  static Color gray700 = fromHex('#6a6a6a');

  static Color black9000a = fromHex('#0a000000');

  static Color gray400 = fromHex('#b4b4b4');

  static Color blueGray100 = fromHex('#d9d9d9');

  static Color gray500 = fromHex('#a3a3a3');

  static Color blueGray400 = fromHex('#8c8c8c');

  static Color gray900 = fromHex('#191919');

  static Color green800 = fromHex('#00a019');

  static Color gray200 = fromHex('#eeeeee');

  static Color black9003f = fromHex('#3f000000');

  static Color gray300 = fromHex('#dddddd');

  static Color lightBlue900 = fromHex('#0a5688');

  static Color teal9005e = fromHex('#5e00234b');

  static Color gray100 = fromHex('#f4f4f4');

  static Color yellow400 = fromHex('#fff04b');

  static Color black900 = fromHex('#000000');

  static Color gray10001 = fromHex('#f3f3f3');

  static Color teal900 = fromHex('#00234b');

  static Color indigo900 = fromHex('#003a71');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color black90059 = fromHex('#59000000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
