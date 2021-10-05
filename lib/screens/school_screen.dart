import 'package:flutter/material.dart';

class SchoolScreen extends StatelessWidget {
  const SchoolScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.school,
          size: 250.0,
          color: Colors.grey,
        ),
        Text(
          'SCHOOL',
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
