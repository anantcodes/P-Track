import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:p_track/login.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login())));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade600,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.red,
              radius: 37,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Text(
                  'P',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: Theme.of(context).textTheme.headline4.fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'P-Track',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Theme.of(context).textTheme.headline6.fontSize,
                  letterSpacing: 0.9,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // child:
            ),
          ],
        ),
      ),
    );
  }
}
