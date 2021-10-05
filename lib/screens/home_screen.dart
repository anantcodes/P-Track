import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.home,
          size: 250.0,
          color: Colors.grey,
        ),
        Text(
          'HOME',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
