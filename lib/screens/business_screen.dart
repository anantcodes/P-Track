import 'package:flutter/material.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.business,
          size: 250.0,
          color: Colors.grey,
        ),
        Text(
          'BUSINESS',
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
