import 'package:flutter/material.dart';

class Control extends StatefulWidget {
  @override
  _ControlState createState() => _ControlState();
}

class _ControlState extends State<Control> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Home page",
          ),
        ),
        backgroundColor: Colors.yellow,
        body: Center(
          child: FlatButton(
            child: Text('Control center'),
            color: Colors.blue,
            onPressed: (){
              Navigator.pushNamed(context, '/login');
            },
          ),
        ),
      ),
    );
  }
}

