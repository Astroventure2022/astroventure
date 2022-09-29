import 'package:flutter/material.dart';

class CustomColors{
  static const Color primary = Color(0xff00FFCD);
  static const Color secondary = Color(0xffe6ff00);
  static const Color accent = Color(0xffe79af5);
  static const Color background = Color(0xff272324);
  static final LinearGradient fadeGradient = LinearGradient(
    begin: FractionalOffset.topCenter,
    end: FractionalOffset.bottomCenter,
    colors: [
      background,
      background.withOpacity(0),
    ],
    stops: const [0.1, 1.0],
  );
}