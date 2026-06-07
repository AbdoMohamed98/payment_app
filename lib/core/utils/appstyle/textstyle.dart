

import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static const String fontFamily = 'Inter';

  static TextStyle text18regular = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: Colors.black,
   
    fontFamily: fontFamily,
  );

  static const TextStyle text18bold = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.black87,
    fontFamily: fontFamily,
  );

  static const TextStyle text24semibold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Colors.black54,
    fontFamily: fontFamily,
  );

}