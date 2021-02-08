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
        backgroundColor: Colors.green,
        body: Center(
          child: FlatButton(
            child: Text('Control center'),
            color: Colors.red,
            onPressed: (){
              Navigator.pushNamed(context, '/login');
            },
          ),
        ),
      ),
    );
  }
}
