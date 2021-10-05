import 'package:flutter/material.dart';
import 'control.dart';
import 'login.dart';
import 'splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      routes: {
        '/control': (context) => Control(),
        '/login': (context) => Login()
      },
    );
  }
}
