import 'package:firebase_chat/presentation/resource/text_styles.dart';
import 'package:flutter/material.dart';

class Styles {
  Styles._();

  static const Color black = Color(0xFF414042);
  static const Color grey = Color(0xFFBCBEC0);
  static const Color grey2 = Color(0xFFE6E7E8);
  static const Color green = Color(0xFF2CB88B);
  static const Color green2 = Color(0xFF1C8C77);
  static const Color red = Color(0xFFF15E22);
  static const Color blue = Color(0xFF4971A7);
  static const Color orange = Color(0xFFD98B47);
  static const Color background = Colors.white;

  static ThemeData getThemeData({required BuildContext context}) {
    return ThemeData.dark();
  }
}
