import 'package:flutter/material.dart';

import 'control.dart';
import 'login.dart';
import 'splash.dart';

void main() {
  runApp(
    MaterialApp(
      home: Splash(),
      routes: {
        '/control': (context) => Control(),
        '/login': (context) => Login()
      },
    ),
  );
}
