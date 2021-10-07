import 'package:flutter/material.dart';

import 'login.dart';
import 'splash.dart';

void main() {
  runApp(
    MaterialApp(
      home: Splash(),
      routes: {
        '/login': (context) => Login()
      },
    ),
  );
}
