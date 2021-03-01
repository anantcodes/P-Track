import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
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
          backgroundColor: Colors.deepPurpleAccent,
          body: Text('Choose your tier',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)
          ),

          bottomNavigationBar: BottomNavigationBar(
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
    );
  }
}

// for progress bar
// https://pub.dev/packages/percent_indicator

//To be included

// new CircularPercentIndicator(
// radius: 60.0,
// lineWidth: 5.0,
// percent: 1.0,
// center: new Text("100%"),
// progressColor: Colors.green,
// )
