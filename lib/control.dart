import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:p_track/screens/business_screen.dart';
import 'package:p_track/screens/home_screen.dart';
import 'package:p_track/screens/school_screen.dart';

class Control extends StatefulWidget {
  @override
  _ControlState createState() => _ControlState();
  final int currentTabIndex;
  Control(
    this.currentTabIndex,
  );
}

class _ControlState extends State<Control> {
  int currentIndex;
  final screens = [
    HomeScreen(),
    BusinessScreen(),
    SchoolScreen(),
  ];

  @override
  void initState() {
    initCurrentIndexValue();
    super.initState();
  }

  initCurrentIndexValue() {
    currentIndex = widget.currentTabIndex;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Home page",
              ),
              TextButton.icon(
                label: Text("Exit"),
                icon: Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavyBar(
          iconSize: 30,
          selectedIndex: currentIndex,
          showElevation: true,
          onItemSelected: (index) => setState(() {
            currentIndex = index;
          }),
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              activeColor: Colors.red,
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.business),
                title: Text('Business'),
                activeColor: Colors.green),
            BottomNavyBarItem(
                icon: Icon(Icons.school),
                title: Text('School'),
                activeColor: Colors.blue),
          ],
        ),
      ),
    );
  }
}
