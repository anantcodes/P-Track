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
            body: new Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Text assigned',
                      style: TextStyle(
                          // your text
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  FlatButton(
                    child: Text('Control center'),
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: BottomNavigationBar(
                        items: const <BottomNavigationBarItem>[
                          BottomNavigationBarItem(
                            icon: Icon(Icons.home),
                            label: 'Home',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.business),
                            label: 'Business',
                          ),
                          BottomNavigationBarItem(
                            icon: Icon(Icons.school),
                            label: 'School',
                          ),
                        ],
                      )
                  ),
                ]
            )
        )
    );
  }
}
