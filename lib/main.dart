import 'package:astroventure/home_page.dart';
import 'package:flutter/material.dart';

import 'start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Astroventure',
      theme: ThemeData(fontFamily: 'vt323'),
      home: const HomePage(),
    );
  }
}
