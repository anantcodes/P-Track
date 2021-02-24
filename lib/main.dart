import 'package:flutter/material.dart';
import 'control.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
    routes: {
      '/control': (context) => Control(),
      '/login': (context) => Login()
    },
  )
  );
}

