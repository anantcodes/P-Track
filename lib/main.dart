import 'package:flutter/material.dart';
import './control.dart';
import './login.dart';
import './splash.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
      routes: {
        '/control': (context) => Control(),
        '/login': (context) => Login()
      },
    ),
  );
}
