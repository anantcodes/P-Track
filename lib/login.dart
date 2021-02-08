import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text("Login page"),
        ),
        body: FlatButton(
          
          child: Text("Login"),
          color: Colors.amber,
          onPressed: () {

          },
        ),
      ),
    );
  }
}
