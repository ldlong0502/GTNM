import 'package:flutter/material.dart';

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

class ColorConstants {
  static Color bottomBarBackground = hexToColor('#FFFFFF');
  static Color bottomBarItemPrimary = hexToColor('#F76E11');
  static Color bottomBarItemSecondary = hexToColor('#767676');
  static Color bottomBarTripBackground = hexToColor('#2C2929');
  static Color borderColor1 = hexToColor('#DEE3EB');
  static Color textColor1 = hexToColor('#747474');
  static Color secondaryDarkAppColor = Colors.white;
}
